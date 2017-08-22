.class public Lcom/dolby/api/DsGlobalEx;
.super Lcom/dolby/api/DsGlobal;
.source "DsGlobalEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dolby/api/DsGlobal;-><init>()V

    return-void
.end method


# virtual methods
.method public getProfileName(I)Lcom/dolby/api/DsProfileName;
    .locals 6

    const/4 v1, -0x6

    const/4 v4, 0x1

    new-array v3, v4, [Lcom/dolby/api/DsProfileName;

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/dolby/api/DsGlobalEx;->iDs_:Lcom/dolby/api/IDs;

    iget v5, p0, Lcom/dolby/api/DsGlobalEx;->clientHandle_:I

    invoke-interface {v4, v5, p1, v3}, Lcom/dolby/api/IDs;->iGetProfileName(II[Lcom/dolby/api/DsProfileName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsGlobalEx;->convertErrorCodeToException(I)V

    const/4 v4, 0x0

    aget-object v2, v3, v4

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v4, "getIeqPreset"

    invoke-virtual {p0, v0, v4}, Lcom/dolby/api/DsGlobalEx;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProfileName(ILcom/dolby/api/DsProfileName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/api/DsAccessException;
        }
    .end annotation

    const/4 v1, -0x6

    :try_start_0
    iget-object v2, p0, Lcom/dolby/api/DsGlobalEx;->iDs_:Lcom/dolby/api/IDs;

    iget v3, p0, Lcom/dolby/api/DsGlobalEx;->clientHandle_:I

    invoke-interface {v2, v3, p1, p2}, Lcom/dolby/api/IDs;->iSetProfileName(IILcom/dolby/api/DsProfileName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    new-instance v2, Lcom/dolby/api/DsAccessException;

    const-string/jumbo v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/dolby/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "setProfileName"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsGlobalEx;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsGlobalEx;->convertErrorCodeToException(I)V

    return v1
.end method

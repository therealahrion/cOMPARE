.class public Lcom/dolby/api/DsGlobal;
.super Lcom/dolby/api/DsFocus;
.source "DsGlobal.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dolby/api/DsFocus;-><init>()V

    const/4 v0, 0x2

    invoke-super {p0, v0}, Lcom/dolby/api/DsFocus;->setConnectionInfo(I)V

    return-void
.end method


# virtual methods
.method public abandonAccessRight()I
    .locals 4

    const/4 v1, -0x6

    const/4 v2, 0x2

    :try_start_0
    invoke-super {p0, v2}, Lcom/dolby/api/DsFocus;->abandonAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DsGlobal"

    const-string/jumbo v3, "Exception in abandonAccessRight"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAccessRight()I
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x2

    :try_start_0
    invoke-super {p0, v2}, Lcom/dolby/api/DsFocus;->checkAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "checkAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsGlobal;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAvailableAccessRight()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public requestAccessRight()I
    .locals 4

    const/4 v1, -0x6

    const/4 v2, 0x2

    :try_start_0
    invoke-super {p0, v2}, Lcom/dolby/api/DsFocus;->requestAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DsGlobal"

    const-string/jumbo v3, "Exception in requestAccessRight"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

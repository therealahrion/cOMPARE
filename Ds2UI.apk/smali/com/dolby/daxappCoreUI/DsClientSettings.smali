.class public Lcom/dolby/daxappCoreUI/DsClientSettings;
.super Ljava/lang/Object;
.source "DsClientSettings.java"


# static fields
.field public static final INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;


# instance fields
.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dolby/daxappCoreUI/DsClientSettings;

    invoke-direct {v0}, Lcom/dolby/daxappCoreUI/DsClientSettings;-><init>()V

    sput-object v0, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolby/daxappCoreUI/DsClientSettings;->mValues:[I

    return-void
.end method

.method private requestDsAccessRight(Lcom/dolby/api/DsGlobalEx;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/dolby/api/DsGlobalEx;->checkAccessRight()I

    move-result v1

    const/4 v2, 0x2

    if-eq v2, v1, :cond_1

    invoke-virtual {p1}, Lcom/dolby/api/DsGlobalEx;->requestAccessRight()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDialogEnhancerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/dolby/api/DsParams;->DialogEnhancementEnable:Lcom/dolby/api/DsParams;

    invoke-virtual {v2}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/dolby/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    aget v2, v0, v1

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getGeqOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/dolby/api/DsParams;->GraphicEqualizerEnable:Lcom/dolby/api/DsParams;

    invoke-virtual {v2}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/dolby/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    aget v2, v0, v1

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getGraphicEqualizerBandGains(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)[I
    .locals 1

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/dolby/api/DsParams;->GraphicEqualizerBandGains:Lcom/dolby/api/DsParams;

    invoke-virtual {v0}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/dolby/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getHeadphoneVirtualizerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/dolby/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/dolby/api/DsParams;

    invoke-virtual {v2}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/dolby/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    aget v2, v0, v1

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getIeqPreset(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)I
    .locals 1

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/dolby/api/DsGlobalEx;->getIeqPreset()I

    move-result v0

    return v0
.end method

.method public getSpeakerVirtualizerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/dolby/api/DsParams;

    invoke-virtual {v2}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/dolby/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    aget v2, v0, v1

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getVolumeLevellerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/dolby/api/DsParams;

    invoke-virtual {v2}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/dolby/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    aget v2, v0, v1

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setDialogEnhancerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;Z)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2}, Lcom/dolby/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/dolby/api/DsGlobalEx;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v4, p0, Lcom/dolby/daxappCoreUI/DsClientSettings;->mValues:[I

    if-nez p3, :cond_2

    move v1, v2

    :goto_0
    aput v1, v4, v2

    :try_start_0
    sget-object v1, Lcom/dolby/api/DsParams;->DialogEnhancementEnable:Lcom/dolby/api/DsParams;

    invoke-virtual {v1}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v1

    iget-object v4, p0, Lcom/dolby/daxappCoreUI/DsClientSettings;->mValues:[I

    invoke-virtual {p2, v1, v4}, Lcom/dolby/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return v2
.end method

.method public setGeqOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;Z)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2}, Lcom/dolby/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/dolby/api/DsGlobalEx;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v4, p0, Lcom/dolby/daxappCoreUI/DsClientSettings;->mValues:[I

    if-nez p3, :cond_2

    move v1, v2

    :goto_0
    aput v1, v4, v2

    :try_start_0
    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerEnable:Lcom/dolby/api/DsParams;

    invoke-virtual {v1}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v1

    iget-object v4, p0, Lcom/dolby/daxappCoreUI/DsClientSettings;->mValues:[I

    invoke-virtual {p2, v1, v4}, Lcom/dolby/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return v2
.end method

.method public setGraphicEqualizerBandGains(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;[I)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2}, Lcom/dolby/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/dolby/api/DsGlobalEx;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerBandGains:Lcom/dolby/api/DsParams;

    invoke-virtual {v1}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v1

    invoke-virtual {p2, v1, p3}, Lcom/dolby/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return v2
.end method

.method public setHeadphoneVirtualizerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;Z)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2}, Lcom/dolby/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/dolby/api/DsGlobalEx;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v4, p0, Lcom/dolby/daxappCoreUI/DsClientSettings;->mValues:[I

    if-nez p3, :cond_2

    move v1, v2

    :goto_0
    aput v1, v4, v2

    :try_start_0
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/dolby/api/DsParams;

    invoke-virtual {v1}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v1

    iget-object v4, p0, Lcom/dolby/daxappCoreUI/DsClientSettings;->mValues:[I

    invoke-virtual {p2, v1, v4}, Lcom/dolby/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return v2
.end method

.method public setIeqPreset(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;I)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2}, Lcom/dolby/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/dolby/api/DsGlobalEx;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/dolby/api/DsGlobalEx;->setIeqPreset(I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return v2
.end method

.method public setSpeakerVirtualizerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;Z)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2}, Lcom/dolby/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/dolby/api/DsGlobalEx;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v4, p0, Lcom/dolby/daxappCoreUI/DsClientSettings;->mValues:[I

    if-nez p3, :cond_2

    move v1, v2

    :goto_0
    aput v1, v4, v2

    :try_start_0
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/dolby/api/DsParams;

    invoke-virtual {v1}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v1

    iget-object v4, p0, Lcom/dolby/daxappCoreUI/DsClientSettings;->mValues:[I

    invoke-virtual {p2, v1, v4}, Lcom/dolby/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return v2
.end method

.method public setVolumeLevellerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;Z)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2}, Lcom/dolby/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/dolby/api/DsGlobalEx;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v4, p0, Lcom/dolby/daxappCoreUI/DsClientSettings;->mValues:[I

    if-nez p3, :cond_2

    move v1, v2

    :goto_0
    aput v1, v4, v2

    :try_start_0
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/dolby/api/DsParams;

    invoke-virtual {v1}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v1

    iget-object v4, p0, Lcom/dolby/daxappCoreUI/DsClientSettings;->mValues:[I

    invoke-virtual {p2, v1, v4}, Lcom/dolby/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return v2
.end method

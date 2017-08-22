.class public Lcom/dolby/api/DsFocus;
.super Lcom/dolby/api/DsBase;
.source "DsFocus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/api/DsFocus$1;,
        Lcom/dolby/api/DsFocus$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DsFocus"


# instance fields
.field protected bandCount_:I

.field protected callbacks_:Lcom/dolby/api/IDsCallbacks;

.field protected dsListener_:Lcom/dolby/api/IDsEvents;

.field protected excitations_:[F

.field protected gains_:[F

.field protected handler_:Landroid/os/Handler;

.field protected legacyClientListener_:Lcom/dolby/api/IDsLegacyClientEvents;

.field protected profileNameListener_:Lcom/dolby/api/IDsProfileNameEvents;

.field protected visualizerListener_:Lcom/dolby/api/IDsVisualizerEvents;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/dolby/api/DsBase;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;

    .line 58
    iput-object v1, p0, Lcom/dolby/api/DsFocus;->visualizerListener_:Lcom/dolby/api/IDsVisualizerEvents;

    .line 64
    iput-object v1, p0, Lcom/dolby/api/DsFocus;->profileNameListener_:Lcom/dolby/api/IDsProfileNameEvents;

    .line 70
    iput-object v1, p0, Lcom/dolby/api/DsFocus;->legacyClientListener_:Lcom/dolby/api/IDsLegacyClientEvents;

    .line 77
    const/16 v0, 0x14

    iput v0, p0, Lcom/dolby/api/DsFocus;->bandCount_:I

    .line 83
    iput-object v1, p0, Lcom/dolby/api/DsFocus;->gains_:[F

    .line 89
    iput-object v1, p0, Lcom/dolby/api/DsFocus;->excitations_:[F

    .line 695
    new-instance v0, Lcom/dolby/api/DsFocus$1;

    invoke-direct {v0, p0}, Lcom/dolby/api/DsFocus$1;-><init>(Lcom/dolby/api/DsFocus;)V

    iput-object v0, p0, Lcom/dolby/api/DsFocus;->callbacks_:Lcom/dolby/api/IDsCallbacks;

    .line 791
    new-instance v0, Lcom/dolby/api/DsFocus$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolby/api/DsFocus$2;-><init>(Lcom/dolby/api/DsFocus;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    .line 97
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/dolby/api/DsBase;->setConnectionInfo(I)V

    .line 95
    return-void
.end method


# virtual methods
.method public abandonAccessRight()I
    .registers 4

    .prologue
    .line 610
    const/4 v1, -0x6

    .line 613
    .local v1, "error":I
    const/4 v2, 0x1

    :try_start_2
    invoke-super {p0, v2}, Lcom/dolby/api/DsBase;->abandonAccessRight(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 619
    :goto_6
    return v1

    .line 616
    :catch_7
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "abandonAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public bridge synthetic abandonAccessRight(I)I
    .registers 3
    .param p1, "accessRight"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/dolby/api/DsBase;->abandonAccessRight(I)I

    move-result v0

    return v0
.end method

.method public checkAccessRight()I
    .registers 4

    .prologue
    .line 629
    const/4 v1, -0x1

    .line 632
    .local v1, "ret_val":I
    const/4 v2, 0x1

    :try_start_2
    invoke-super {p0, v2}, Lcom/dolby/api/DsBase;->checkAccessRight(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 638
    :goto_6
    return v1

    .line 635
    :catch_7
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "checkAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public bridge synthetic checkAccessRight(I)I
    .registers 3
    .param p1, "accessRight"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/dolby/api/DsBase;->checkAccessRight(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getApiVersion()I
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/dolby/api/DsBase;->getApiVersion()I

    move-result v0

    return v0
.end method

.method public getAvailableAccessRight()I
    .registers 2

    .prologue
    .line 648
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getDsVersion()Ljava/lang/String;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/dolby/api/DsBase;->getDsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIeqPreset()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 408
    const/4 v3, 0x0

    .line 409
    .local v3, "ret_val":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 410
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 413
    .local v1, "error":I
    :try_start_6
    iget-object v4, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/dolby/api/IDs;->iGetIeqPreset(I[I)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_13

    move-result v1

    .line 419
    :goto_d
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 420
    aget v3, v2, v6

    .line 421
    return v3

    .line 416
    :catch_13
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getIeqPreset"

    invoke-virtual {p0, v0, v4}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getIeqPresetCount()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 353
    const/4 v3, 0x0

    .line 354
    .local v3, "ret_val":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 355
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 358
    .local v1, "error":I
    :try_start_6
    iget-object v4, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/dolby/api/IDs;->iGetIeqPresetCount(I[I)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_13

    move-result v1

    .line 364
    :goto_d
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 365
    aget v3, v2, v6

    .line 366
    return v3

    .line 361
    :catch_13
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getIeqPresetCount"

    invoke-virtual {p0, v0, v4}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getParameter(I)[I
    .registers 10
    .param p1, "paramId"    # I

    .prologue
    const/4 v6, 0x1

    .line 320
    const/4 v5, 0x0

    .line 321
    .local v5, "ret_vals":[I
    new-array v2, v6, [I

    .line 322
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 325
    .local v1, "error":I
    :try_start_5
    iget-object v6, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    invoke-interface {v6, p1, v2}, Lcom/dolby/api/IDs;->iGetParamLength(I[I)I

    move-result v1

    .line 326
    if-nez v1, :cond_28

    .line 328
    const/4 v6, 0x1

    new-array v4, v6, [I

    .line 329
    .local v4, "profileInt":[I
    iget-object v6, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lcom/dolby/api/IDs;->iGetProfile(I[I)I

    move-result v1

    .line 330
    if-nez v1, :cond_28

    .line 332
    const/4 v6, 0x0

    aget v3, v4, v6

    .line 333
    .local v3, "profile":I
    const/4 v6, 0x0

    aget v6, v2, v6

    new-array v5, v6, [I

    .line 334
    .local v5, "ret_vals":[I
    iget-object v6, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v3, p1, v5}, Lcom/dolby/api/IDs;->iGetParameter(III[I)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_2c

    move-result v1

    .line 342
    .end local v3    # "profile":I
    .end local v4    # "profileInt":[I
    .end local v5    # "ret_vals":[I
    :cond_28
    :goto_28
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 343
    return-object v5

    .line 339
    :catch_2c
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "getParameter"

    invoke-virtual {p0, v0, v6}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public getProfile()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 486
    const/4 v3, 0x0

    .line 487
    .local v3, "ret_val":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 488
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 491
    .local v1, "error":I
    :try_start_6
    iget-object v4, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/dolby/api/IDs;->iGetProfile(I[I)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_13

    move-result v1

    .line 497
    :goto_d
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 498
    aget v3, v2, v6

    .line 499
    return v3

    .line 494
    :catch_13
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getProfile"

    invoke-virtual {p0, v0, v4}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getProfileCount()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 431
    const/4 v3, 0x0

    .line 432
    .local v3, "ret_val":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 433
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 436
    .local v1, "error":I
    :try_start_6
    iget-object v4, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/dolby/api/IDs;->iGetProfileCount(I[I)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_13

    move-result v1

    .line 442
    :goto_d
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 443
    aget v3, v2, v6

    .line 444
    return v3

    .line 439
    :catch_13
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getProfileCount"

    invoke-virtual {p0, v0, v4}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getState()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 256
    const/4 v3, -0x1

    .line 257
    .local v3, "ret_val":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 258
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 261
    .local v1, "error":I
    :try_start_6
    iget-object v4, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/dolby/api/IDs;->iGetState(I[I)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_13

    move-result v1

    .line 267
    :goto_d
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 268
    aget v3, v2, v6

    .line 269
    return v3

    .line 264
    :catch_13
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getState"

    invoke-virtual {p0, v0, v4}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public isMonoSpeaker()Z
    .registers 6

    .prologue
    .line 566
    const/4 v3, 0x0

    .line 567
    .local v3, "ret_val":Z
    const/4 v4, 0x1

    new-array v2, v4, [Z

    .line 568
    .local v2, "paramBoolean":[Z
    const/4 v1, 0x0

    .line 571
    .local v1, "error":I
    :try_start_5
    iget-object v4, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    invoke-interface {v4, v2}, Lcom/dolby/api/IDs;->iGetMonoSpeaker([Z)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_12

    move-result v1

    .line 577
    :goto_b
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 578
    const/4 v4, 0x0

    aget-boolean v3, v2, v4

    .line 579
    .local v3, "ret_val":Z
    return v3

    .line 574
    .local v3, "ret_val":Z
    :catch_12
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "isMonoSpeaker"

    invoke-virtual {p0, v0, v4}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public isProfileSettingsModified(I)Z
    .registers 9
    .param p1, "profile"    # I

    .prologue
    const/4 v6, 0x0

    .line 511
    const/4 v3, 0x0

    .line 512
    .local v3, "ret_val":Z
    const/4 v4, 0x1

    new-array v2, v4, [Z

    .line 513
    .local v2, "paramBoolean":[Z
    const/4 v1, 0x0

    .line 516
    .local v1, "error":I
    :try_start_6
    iget-object v4, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p1, v2}, Lcom/dolby/api/IDs;->iGetProfileModified(II[Z)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_13

    move-result v1

    .line 522
    :goto_d
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 523
    aget-boolean v3, v2, v6

    .line 524
    .local v3, "ret_val":Z
    return v3

    .line 519
    .local v3, "ret_val":Z
    :catch_13
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "isProfileSettingsModified"

    invoke-virtual {p0, v0, v4}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public bridge synthetic registerClient(Landroid/content/Context;Lcom/dolby/api/IDsAccessEvents;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/dolby/api/IDsAccessEvents;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/dolby/api/DsBase;->registerClient(Landroid/content/Context;Lcom/dolby/api/IDsAccessEvents;)Z

    move-result v0

    return v0
.end method

.method public registerDsEvents(Lcom/dolby/api/IDsEvents;)V
    .registers 8
    .param p1, "listener"    # Lcom/dolby/api/IDsEvents;

    .prologue
    .line 172
    const/4 v1, -0x6

    .line 176
    .local v1, "error":I
    if-eqz p1, :cond_14

    .line 178
    :try_start_3
    iget-object v2, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v3, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    iget-object v4, p0, Lcom/dolby/api/DsFocus;->callbacks_:Lcom/dolby/api/IDsCallbacks;

    const/4 v5, 0x2

    invoke-interface {v2, v3, v4, v5}, Lcom/dolby/api/IDs;->iRegisterCallback(ILcom/dolby/api/IDsCallbacks;I)V

    .line 179
    iput-object p1, p0, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_16

    .line 180
    const/4 v1, 0x0

    .line 191
    :goto_10
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 170
    return-void

    .line 184
    :cond_14
    const/4 v1, -0x1

    goto :goto_10

    .line 188
    :catch_16
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "registerDsEvents"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public registerVisualizer(Lcom/dolby/api/IDsVisualizerEvents;)V
    .registers 6
    .param p1, "listener"    # Lcom/dolby/api/IDsVisualizerEvents;

    .prologue
    .line 109
    const/4 v1, -0x6

    .line 113
    .local v1, "error":I
    :try_start_1
    iget v2, p0, Lcom/dolby/api/DsFocus;->bandCount_:I

    if-nez v2, :cond_22

    .line 115
    const-string/jumbo v2, "DsFocus"

    const-string/jumbo v3, "graphic equalizer band count NOT initialized yet."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Exception in registerVisualizer"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_17

    .line 138
    :catch_17
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "registerVisualizer"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 107
    return-void

    .line 118
    :cond_22
    if-eqz p1, :cond_47

    .line 120
    :try_start_24
    iget-object v2, p0, Lcom/dolby/api/DsFocus;->visualizerListener_:Lcom/dolby/api/IDsVisualizerEvents;

    if-nez v2, :cond_45

    .line 122
    iget-object v2, p0, Lcom/dolby/api/DsFocus;->gains_:[F

    if-nez v2, :cond_32

    .line 123
    iget v2, p0, Lcom/dolby/api/DsFocus;->bandCount_:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/dolby/api/DsFocus;->gains_:[F

    .line 124
    :cond_32
    iget-object v2, p0, Lcom/dolby/api/DsFocus;->excitations_:[F

    if-nez v2, :cond_3c

    .line 125
    iget v2, p0, Lcom/dolby/api/DsFocus;->bandCount_:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/dolby/api/DsFocus;->excitations_:[F

    .line 127
    :cond_3c
    iget-object v2, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v3, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    invoke-interface {v2, v3}, Lcom/dolby/api/IDs;->iRegisterVisualizerData(I)V

    .line 128
    iput-object p1, p0, Lcom/dolby/api/DsFocus;->visualizerListener_:Lcom/dolby/api/IDsVisualizerEvents;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_45} :catch_17

    .line 130
    :cond_45
    const/4 v1, 0x0

    goto :goto_1e

    .line 134
    :cond_47
    const/4 v1, -0x1

    goto :goto_1e
.end method

.method public requestAccessRight()I
    .registers 4

    .prologue
    .line 590
    const/4 v1, -0x6

    .line 593
    .local v1, "error":I
    const/4 v2, 0x1

    :try_start_2
    invoke-super {p0, v2}, Lcom/dolby/api/DsBase;->requestAccessRight(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 599
    :goto_6
    return v1

    .line 596
    :catch_7
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "requestAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public bridge synthetic requestAccessRight(I)I
    .registers 3
    .param p1, "accessRight"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/dolby/api/DsBase;->requestAccessRight(I)I

    move-result v0

    return v0
.end method

.method public resetProfile(I)I
    .registers 7
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 542
    .local v1, "error":I
    :try_start_1
    iget-object v2, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v3, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lcom/dolby/api/IDs;->iResetProfile(III)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_16

    move-result v1

    .line 548
    :goto_a
    const/4 v2, -0x5

    if-ne v1, v2, :cond_1e

    .line 550
    new-instance v2, Lcom/dolby/api/DsAccessException;

    const-string/jumbo v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/dolby/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 545
    :catch_16
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setProfile"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_a

    .line 554
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 556
    return v1
.end method

.method protected setConnectionInfo(I)V
    .registers 2
    .param p1, "access"    # I

    .prologue
    .line 657
    iput p1, p0, Lcom/dolby/api/DsBase;->connectionBridge_:I

    .line 655
    return-void
.end method

.method public setIeqPreset(I)I
    .registers 7
    .param p1, "preset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 384
    .local v1, "error":I
    :try_start_1
    iget-object v2, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v3, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lcom/dolby/api/IDs;->iSetIeqPreset(III)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_16

    move-result v1

    .line 390
    :goto_a
    const/4 v2, -0x5

    if-ne v1, v2, :cond_1e

    .line 392
    new-instance v2, Lcom/dolby/api/DsAccessException;

    const-string/jumbo v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/dolby/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    :catch_16
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setIeqPreset"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_a

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 398
    return v1
.end method

.method public setParameter(I[I)I
    .registers 12
    .param p1, "paramId"    # I
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v7, 0x0

    .line 288
    .local v7, "error":I
    const/4 v0, 0x1

    :try_start_2
    new-array v8, v0, [I

    .line 289
    .local v8, "paramInt":[I
    iget-object v0, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v8}, Lcom/dolby/api/IDs;->iGetProfile(I[I)I

    move-result v7

    .line 290
    if-nez v7, :cond_1b

    .line 292
    const/4 v0, 0x0

    aget v3, v8, v0

    .line 293
    .local v3, "profile":I
    iget-object v0, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v1, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    const/4 v2, 0x0

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/dolby/api/IDs;->iSetParameter(IIII[I)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_27

    move-result v7

    .line 300
    .end local v3    # "profile":I
    .end local v8    # "paramInt":[I
    :cond_1b
    :goto_1b
    const/4 v0, -0x5

    if-ne v7, v0, :cond_2f

    .line 302
    new-instance v0, Lcom/dolby/api/DsAccessException;

    const-string/jumbo v1, "Exception: access right."

    invoke-direct {v0, v1}, Lcom/dolby/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :catch_27
    move-exception v6

    .line 298
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "setParameter"

    invoke-virtual {p0, v6, v0}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1b

    .line 306
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2f
    invoke-virtual {p0, v7}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 308
    return v7
.end method

.method public setProfile(I)I
    .registers 7
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v1, 0x0

    .line 462
    .local v1, "error":I
    :try_start_1
    iget-object v2, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v3, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lcom/dolby/api/IDs;->iSetProfile(III)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_16

    move-result v1

    .line 468
    :goto_a
    const/4 v2, -0x5

    if-ne v1, v2, :cond_1e

    .line 470
    new-instance v2, Lcom/dolby/api/DsAccessException;

    const-string/jumbo v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/dolby/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :catch_16
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setProfile"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_a

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 476
    return v1
.end method

.method public setState(Z)I
    .registers 7
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v1, 0x1

    .line 232
    .local v1, "error":I
    :try_start_1
    iget-object v2, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v3, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lcom/dolby/api/IDs;->iSetState(IIZ)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_16

    move-result v1

    .line 238
    :goto_a
    const/4 v2, -0x5

    if-ne v1, v2, :cond_1e

    .line 240
    new-instance v2, Lcom/dolby/api/DsAccessException;

    const-string/jumbo v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/dolby/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :catch_16
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setState"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_a

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 246
    return v1
.end method

.method public unregisterClient()V
    .registers 6

    .prologue
    .line 670
    const-string/jumbo v1, "DsFocus"

    const-string/jumbo v2, "unregisterClient"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    if-eqz v1, :cond_2a

    .line 676
    :try_start_d
    iget-object v1, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v2, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    invoke-interface {v1, v2}, Lcom/dolby/api/IDs;->iUnregisterVisualizerData(I)V

    .line 677
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolby/api/DsFocus;->visualizerListener_:Lcom/dolby/api/IDsVisualizerEvents;

    .line 678
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolby/api/DsFocus;->gains_:[F

    .line 679
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolby/api/DsFocus;->excitations_:[F

    .line 680
    iget-object v1, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v2, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    iget-object v3, p0, Lcom/dolby/api/DsFocus;->callbacks_:Lcom/dolby/api/IDsCallbacks;

    const/4 v4, 0x2

    invoke-interface {v1, v2, v3, v4}, Lcom/dolby/api/IDs;->iUnregisterCallback(ILcom/dolby/api/IDsCallbacks;I)V

    .line 681
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2a} :catch_2e

    .line 688
    :cond_2a
    :goto_2a
    invoke-super {p0}, Lcom/dolby/api/DsBase;->unregisterClient()V

    .line 668
    return-void

    .line 684
    :catch_2e
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unregisterClient"

    invoke-virtual {p0, v0, v1}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public unregisterDsEvents()V
    .registers 6

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v2, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    iget-object v3, p0, Lcom/dolby/api/DsFocus;->callbacks_:Lcom/dolby/api/IDsCallbacks;

    const/4 v4, 0x2

    invoke-interface {v1, v2, v3, v4}, Lcom/dolby/api/IDs;->iUnregisterCallback(ILcom/dolby/api/IDsCallbacks;I)V

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 198
    :goto_d
    return-void

    .line 206
    :catch_e
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unregisterDsEvents"

    invoke-virtual {p0, v0, v1}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public unregisterVisualizer()V
    .registers 4

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v2, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    invoke-interface {v1, v2}, Lcom/dolby/api/IDs;->iUnregisterVisualizerData(I)V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolby/api/DsFocus;->visualizerListener_:Lcom/dolby/api/IDsVisualizerEvents;

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolby/api/DsFocus;->gains_:[F

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolby/api/DsFocus;->excitations_:[F
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 149
    :goto_10
    return-void

    .line 159
    :catch_11
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unregisterVisualizer"

    invoke-virtual {p0, v0, v1}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

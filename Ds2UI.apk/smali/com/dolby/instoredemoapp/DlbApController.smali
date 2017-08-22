.class public Lcom/dolby/instoredemoapp/DlbApController;
.super Ljava/lang/Object;
.source "DlbApController.java"

# interfaces
.implements Lcom/dolby/api/IDsEvents;
.implements Lcom/dolby/api/IDsAccessEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/instoredemoapp/DlbApController$1;,
        Lcom/dolby/instoredemoapp/DlbApController$APMessage;
    }
.end annotation


# instance fields
.field private mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mApInfoExtractor:Lcom/dolby/instoredemoapp/DlbApInfoExtractor;

.field private mApInfoStream:Ljava/io/InputStream;

.field private mContext:Landroid/content/Context;

.field private mDsConnected:Z

.field private mDsFocus:Lcom/dolby/api/DsFocus;

.field private mHandler:Landroid/os/Handler;

.field private mMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolby/instoredemoapp/DlbApController$APMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/dolby/instoredemoapp/DlbApController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/dolby/instoredemoapp/DlbApController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    new-instance v1, Lcom/dolby/instoredemoapp/DlbApController$1;

    invoke-direct {v1, p0}, Lcom/dolby/instoredemoapp/DlbApController$1;-><init>(Lcom/dolby/instoredemoapp/DlbApController;)V

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;

    invoke-direct {v1}, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;-><init>()V

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoExtractor:Lcom/dolby/instoredemoapp/DlbApInfoExtractor;

    new-instance v1, Lcom/dolby/api/DsFocus;

    invoke-direct {v1}, Lcom/dolby/api/DsFocus;-><init>()V

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    :try_start_0
    const-string/jumbo v1, "DlbApController"

    const-string/jumbo v2, "going to bind the DS service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, p0}, Lcom/dolby/api/DsFocus;->registerClient(Landroid/content/Context;Lcom/dolby/api/IDsAccessEvents;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DlbApController"

    const-string/jumbo v2, "Consturction of DlbApController, bindDsService failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private calMsgDelaytime(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13

    const/4 v10, -0x1

    const/16 v12, 0x3a

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v7, p1

    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v10, :cond_0

    const-string/jumbo v8, "DlbApController"

    const-string/jumbo v9, "the format of the timestamp is not valid"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    return-object v8

    :cond_0
    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hour = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "min = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sec = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v8, v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private handleDialogEnhancer(Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleDialogEnhancer, deh = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string/jumbo v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-array v2, v4, [I

    if-eqz v1, :cond_3

    move v3, v4

    :goto_1
    aput v3, v2, v5

    iget-boolean v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/dolby/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    sget-object v6, Lcom/dolby/api/DsParams;->DialogEnhancementEnable:Lcom/dolby/api/DsParams;

    invoke-virtual {v6}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v6

    invoke-virtual {v3, v6, v2}, Lcom/dolby/api/DsFocus;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_0
    const-string/jumbo v3, "off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "unset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "DlbApController"

    const-string/jumbo v5, "value does not change"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    const-string/jumbo v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DlbApController.handleDialogEnhancer, invalid value = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return v5
.end method

.method private handleIntelligentEq(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIntelligentEq, ieq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const-string/jumbo v2, "off"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/dolby/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v2

    if-eqz v2, :cond_8

    :try_start_0
    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    invoke-virtual {v2, v1}, Lcom/dolby/api/DsFocus;->setIeqPreset(I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :cond_0
    const-string/jumbo v2, "Open"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "Rich"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "Focused"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "Warm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x4

    const-string/jumbo v2, "DlbApController"

    const-string/jumbo v3, "Not supported yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    const-string/jumbo v2, "Bright"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x5

    const-string/jumbo v2, "DlbApController"

    const-string/jumbo v3, "Not supported yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    const-string/jumbo v2, "Balanced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x6

    const-string/jumbo v2, "DlbApController"

    const-string/jumbo v3, "Not supported yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    const-string/jumbo v2, "unset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "DlbApController"

    const-string/jumbo v3, "value does not change"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7
    const-string/jumbo v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DlbApController.handleIntelligentEq, invalid value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_8
    return v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return v6
.end method

.method private handleMasterControl(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMasterControl, mastercontrol = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string/jumbo v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/dolby/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    invoke-virtual {v3, v1}, Lcom/dolby/api/DsFocus;->setState(Z)I

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DlbApController.handleMasterControl, setDsOnChecked failed due to return code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :cond_0
    const-string/jumbo v3, "off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "unset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "DlbApController"

    const-string/jumbo v4, "no need to handle this"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    const-string/jumbo v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DlbApController.handleMasterControl, invalid value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DlbApController"

    const-string/jumbo v4, "DlbApController.handleMasterControl, setDsOnChecked failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v6

    :cond_4
    return v7
.end method

.method private handleProfileControl(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleProfileControl, profilecontrol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const-string/jumbo v2, "Movie"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/dolby/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    invoke-virtual {v2, v1}, Lcom/dolby/api/DsFocus;->setProfile(I)I

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    invoke-virtual {v2, v1}, Lcom/dolby/api/DsFocus;->resetProfile(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :cond_0
    const-string/jumbo v2, "Music"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "Game"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "Voice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "unset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "DlbApController"

    const-string/jumbo v3, "value not change!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    const-string/jumbo v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DlbApController.handleProfileControl,invalid value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DlbApController"

    const-string/jumbo v3, "DlbApController.handleProfileControl,fail to call setProfileSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v5
.end method

.method private handleSurroundVirtualizer(Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleSurroundVirtualizer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string/jumbo v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-array v2, v4, [I

    if-eqz v1, :cond_3

    move v3, v4

    :goto_1
    aput v3, v2, v5

    iget-boolean v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/dolby/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    sget-object v6, Lcom/dolby/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/dolby/api/DsParams;

    invoke-virtual {v6}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v6

    invoke-virtual {v3, v6, v2}, Lcom/dolby/api/DsFocus;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_0
    const-string/jumbo v3, "off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "unset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "DlbApController"

    const-string/jumbo v5, "value does not change"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    const-string/jumbo v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DlbApController.handleSurroundVirtualizer, invalid value = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return v5
.end method

.method private handleTextInfo(Lcom/dolby/instoredemoapp/TextInfo;)V
    .locals 0

    return-void
.end method

.method private handleVolumeLeveler(Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleVolumeLeveler, vl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string/jumbo v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-array v2, v4, [I

    if-eqz v1, :cond_3

    move v3, v4

    :goto_1
    aput v3, v2, v5

    iget-boolean v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/dolby/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    sget-object v6, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/dolby/api/DsParams;

    invoke-virtual {v6}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v6

    invoke-virtual {v3, v6, v2}, Lcom/dolby/api/DsFocus;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_0
    const-string/jumbo v3, "off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "unset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "DlbApController"

    const-string/jumbo v5, "value does not change"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    const-string/jumbo v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DlbApController.handleVolumeLeveler, invalid value = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return v5
.end method

.method private initMsgList()V
    .locals 9

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iput-object v8, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoExtractor:Lcom/dolby/instoredemoapp/DlbApInfoExtractor;

    invoke-virtual {v7}, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->getAutoPilotMetadata()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/instoredemoapp/AutoPilotItem;

    iget-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x7dc

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getTimeStamp()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/dolby/instoredemoapp/DlbApController;->calMsgDelaytime(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    new-instance v2, Lcom/dolby/instoredemoapp/DlbApController$APMessage;

    invoke-direct {v2, v4, v5, v6}, Lcom/dolby/instoredemoapp/DlbApController$APMessage;-><init>(JLandroid/os/Message;)V

    iget-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public abandonAFandAR()V
    .locals 3

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    invoke-virtual {v1}, Lcom/dolby/api/DsFocus;->abandonAccessRight()I

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public onAccessAvailable()V
    .locals 0

    return-void
.end method

.method public onAccessForceReleased(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onAccessRequested(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClientConnected()V
    .locals 2

    const-string/jumbo v0, "DlbApController"

    const-string/jumbo v1, "onClientConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    invoke-virtual {v0, p0}, Lcom/dolby/api/DsFocus;->registerDsEvents(Lcom/dolby/api/IDsEvents;)V

    invoke-virtual {p0}, Lcom/dolby/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DlbApController"

    const-string/jumbo v1, "onClientConnected() request audio focuse failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "DlbApController"

    const-string/jumbo v1, "onClientConnected() request audio focuse successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7e0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onClientDisconnected()V
    .locals 2

    const-string/jumbo v0, "DlbApController"

    const-string/jumbo v1, "onClientDisConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    return-void
.end method

.method public onDsOn(Z)V
    .locals 0

    return-void
.end method

.method public onDsSuspended(Z)V
    .locals 0

    return-void
.end method

.method public onExit()V
    .locals 3

    invoke-virtual {p0}, Lcom/dolby/instoredemoapp/DlbApController;->abandonAFandAR()V

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    invoke-virtual {v1}, Lcom/dolby/api/DsFocus;->unregisterDsEvents()V

    :try_start_0
    const-string/jumbo v1, "DlbApController"

    const-string/jumbo v2, "about to unbind DS service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    invoke-virtual {v1}, Lcom/dolby/api/DsFocus;->unregisterClient()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DlbApController"

    const-string/jumbo v2, "DlbApController.onExit(), unBindDsService failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProfileSelected(I)V
    .locals 0

    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0

    return-void
.end method

.method public processApMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processApMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string/jumbo v2, "DlbApController"

    const-string/jumbo v3, "the msg.obj is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolby/instoredemoapp/AutoPilotItem;

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getMasterControlValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolby/instoredemoapp/DlbApController;->handleMasterControl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getProfileControlValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolby/instoredemoapp/DlbApController;->handleProfileControl(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleProfileControl, returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getSurroundVirtualizerValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolby/instoredemoapp/DlbApController;->handleSurroundVirtualizer(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSurroundVirtualizer, returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getDialogEnahancerValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolby/instoredemoapp/DlbApController;->handleDialogEnhancer(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDialogEnhancer, returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getVolumeLevelerValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolby/instoredemoapp/DlbApController;->handleVolumeLeveler(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleVolumeLeveler, returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getIntelligenEqValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolby/instoredemoapp/DlbApController;->handleIntelligentEq(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIntelligentEq, returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getDisplayText()Lcom/dolby/instoredemoapp/TextInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolby/instoredemoapp/DlbApController;->handleTextInfo(Lcom/dolby/instoredemoapp/TextInfo;)V

    return v5
.end method

.method public requestAFandAR()Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    if-nez v3, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-boolean v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v3, v5, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    invoke-virtual {v3}, Lcom/dolby/api/DsFocus;->checkAccessRight()I

    move-result v3

    const/4 v4, 0x2

    if-eq v4, v3, :cond_4

    iget-object v3, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsFocus:Lcom/dolby/api/DsFocus;

    invoke-virtual {v3}, Lcom/dolby/api/DsFocus;->requestAccessRight()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2

    :cond_3
    const-string/jumbo v3, "DlbApController"

    const-string/jumbo v4, "requestAFandAR(): requestAccessRight failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sendApMessages()V
    .locals 6

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;->message:Landroid/os/Message;

    iget-wide v4, v0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;->delayTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setApInfoFile(Ljava/io/InputStream;)V
    .locals 2

    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoStream:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoExtractor:Lcom/dolby/instoredemoapp/DlbApInfoExtractor;

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->setApInfoFile(Ljava/io/InputStream;)V

    invoke-direct {p0}, Lcom/dolby/instoredemoapp/DlbApController;->initMsgList()V

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.class public Lcom/dolby/dax/service/DsVisualizerManager;
.super Ljava/lang/Object;
.source "DsVisualizerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/dax/service/DsVisualizerManager$1;
    }
.end annotation


# static fields
.field private static final lock_:Ljava/lang/Object;


# instance fields
.field private cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

.field private final cbkOnVisualizerUpdate_:Ljava/lang/Runnable;

.field private dsManager_:Lcom/dolby/dax/service/DsManager;

.field private excitations_:[F

.field private gains_:[F

.field private geqBandCount_:I

.field private isVisualizerSuspended_:Z

.field private noVisualizerCounter_:I

.field private previousVisualizerSize_:I

.field private visualizerHandler_:Landroid/os/Handler;

.field private visualizerList_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private visualizerThread_:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -wrap0(Lcom/dolby/dax/service/DsVisualizerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerUpdate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolby/dax/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/dolby/dax/service/DsManager;Lcom/dolby/dax/service/DsCallbackManager;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/dolby/dax/service/DsVisualizerManager;->gains_:[F

    iput-object v1, p0, Lcom/dolby/dax/service/DsVisualizerManager;->excitations_:[F

    iput-boolean v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    iput v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->noVisualizerCounter_:I

    iput v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->previousVisualizerSize_:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->geqBandCount_:I

    iput-object v1, p0, Lcom/dolby/dax/service/DsVisualizerManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    iput-object v1, p0, Lcom/dolby/dax/service/DsVisualizerManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    new-instance v0, Lcom/dolby/dax/service/DsVisualizerManager$1;

    invoke-direct {v0, p0}, Lcom/dolby/dax/service/DsVisualizerManager$1;-><init>(Lcom/dolby/dax/service/DsVisualizerManager;)V

    iput-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->cbkOnVisualizerUpdate_:Ljava/lang/Runnable;

    sget-object v1, Lcom/dolby/dax/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/dolby/dax/service/DsVisualizerManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    iput-object p2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    iget v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->geqBandCount_:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->gains_:[F

    iget v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->geqBandCount_:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->excitations_:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    sget-object v10, Lcom/dolby/dax/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    move v1, p1

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "DsVisualizerManager"

    const-string/jumbo v1, "Exception found in invokeVisualizerCbk"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method private startVisualizer()V
    .locals 6

    const/4 v5, 0x1

    sget-object v4, Lcom/dolby/dax/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v3}, Lcom/dolby/dax/service/DsManager;->getDsOn()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-ne v2, v5, :cond_4

    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/dolby/dax/service/DsManager;->setVisualizerOn(Z)I

    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerThread_:Landroid/os/HandlerThread;

    if-nez v3, :cond_0

    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v5, "visualiser thread"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerThread_:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerThread_:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerThread_:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "VisualizerThread_.getLooper returns null"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "DsVisualizerManager"

    const-string/jumbo v5, "Exception found in startVisualizer"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v4

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    :cond_3
    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    iget-object v5, p0, Lcom/dolby/dax/service/DsVisualizerManager;->cbkOnVisualizerUpdate_:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo v3, "DsVisualizerManager"

    const-string/jumbo v5, "Visualizer thread is started."

    invoke-static {v3, v5}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_4
    :try_start_3
    const-string/jumbo v3, "DsVisualizerManager"

    const-string/jumbo v5, "DS is off, will start visualizer thread when it switches to on."

    invoke-static {v3, v5}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private stopVisualizer()V
    .locals 5

    sget-object v3, Lcom/dolby/dax/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/dolby/dax/service/DsManager;->setVisualizerOn(Z)I

    iget-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerThread_:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    iget v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->geqBandCount_:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->gains_:[F

    const/4 v4, 0x0

    aput v4, v2, v1

    iget-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->excitations_:[F

    const/4 v4, 0x0

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DsVisualizerManager"

    const-string/jumbo v4, "Exception found in stopVisualizer"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->noVisualizerCounter_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void
.end method

.method private visualizerUpdate()V
    .locals 12

    const/4 v3, 0x1

    sget-object v11, Lcom/dolby/dax/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v11

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    iget-object v1, p0, Lcom/dolby/dax/service/DsVisualizerManager;->gains_:[F

    iget-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->excitations_:[F

    invoke-virtual {v0, v1, v2}, Lcom/dolby/dax/service/DsManager;->getVisualizerData([F[F)I

    move-result v9

    iget v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->previousVisualizerSize_:I

    if-eq v9, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->noVisualizerCounter_:I

    :cond_0
    iput v9, p0, Lcom/dolby/dax/service/DsVisualizerManager;->previousVisualizerSize_:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v9, :cond_3

    :try_start_1
    iget-boolean v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->noVisualizerCounter_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->noVisualizerCounter_:I

    iget v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->noVisualizerCounter_:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->noVisualizerCounter_:I

    const-string/jumbo v0, "DsVisualizerManager"

    const-string/jumbo v1, "VISUALIZER_SUSPENDED true"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/dolby/dax/service/DsVisualizerManager;->invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/dax/service/DsVisualizerManager;->cbkOnVisualizerUpdate_:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/dax/service/DsVisualizerManager;->cbkOnVisualizerUpdate_:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v11

    return-void

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "DsVisualizerManager"

    const-string/jumbo v1, "Exception in visualizerUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_3
    :try_start_3
    iget-boolean v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->noVisualizerCounter_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->noVisualizerCounter_:I

    iget v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->noVisualizerCounter_:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->noVisualizerCounter_:I

    const-string/jumbo v0, "DsVisualizerManager"

    const-string/jumbo v1, "VISUALIZER_SUSPENDED false"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/dolby/dax/service/DsVisualizerManager;->invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsManager;->getDsOn()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v10, 0x1

    :goto_2
    if-eq v10, v3, :cond_6

    const/4 v8, 0x0

    :goto_3
    iget v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->geqBandCount_:I

    if-ge v8, v0, :cond_6

    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->gains_:[F

    const/4 v1, 0x0

    aput v1, v0, v8

    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->excitations_:[F

    const/4 v1, 0x0

    aput v1, v0, v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :catch_1
    move-exception v7

    :try_start_5
    const-string/jumbo v0, "DsVisualizerManager"

    const-string/jumbo v1, "Exception found in visualizerUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    iget-object v5, p0, Lcom/dolby/dax/service/DsVisualizerManager;->gains_:[F

    iget-object v6, p0, Lcom/dolby/dax/service/DsVisualizerManager;->excitations_:[F

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/dolby/dax/service/DsVisualizerManager;->invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public register(I)V
    .locals 9

    sget-object v8, Lcom/dolby/dax/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/dolby/dax/service/DsVisualizerManager;->startVisualizer()V

    :cond_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/dolby/dax/service/DsVisualizerManager;->invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    const-string/jumbo v0, "DsVisualizerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add a visualizer handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public release()V
    .locals 4

    sget-object v3, Lcom/dolby/dax/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->gains_:[F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->excitations_:[F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/dax/service/DsVisualizerManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public toggleVisualizer(Z)V
    .locals 9

    sget-object v8, Lcom/dolby/dax/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/dolby/dax/service/DsVisualizerManager;->startVisualizer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v8

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/dolby/dax/service/DsVisualizerManager;->stopVisualizer()V

    iget-object v5, p0, Lcom/dolby/dax/service/DsVisualizerManager;->gains_:[F

    iget-object v6, p0, Lcom/dolby/dax/service/DsVisualizerManager;->excitations_:[F

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/dolby/dax/service/DsVisualizerManager;->invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public unregister(I)V
    .locals 7

    sget-object v4, Lcom/dolby/dax/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "DsVisualizerManager"

    const-string/jumbo v5, "No client registering, do nothing."

    invoke-static {v3, v5}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string/jumbo v3, "DsVisualizerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove a visualzier handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dolby/dax/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/dolby/dax/service/DsVisualizerManager;->stopVisualizer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

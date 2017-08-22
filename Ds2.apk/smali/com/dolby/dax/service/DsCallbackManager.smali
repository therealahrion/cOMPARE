.class public Lcom/dolby/dax/service/DsCallbackManager;
.super Ljava/lang/Object;
.source "DsCallbackManager.java"


# static fields
.field private static final lock_:Ljava/lang/Object;


# instance fields
.field private ds1Callbacks_:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/dolby/api/IDsCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private ds2Callbacks_:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/dolby/api/IDsCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolby/dax/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    iput-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    sget-object v1, Lcom/dolby/dax/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 13

    const/4 v7, 0x1

    sget-object v12, Lcom/dolby/dax/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_1

    const/4 v5, 0x1

    :goto_2
    :try_start_1
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/dolby/api/IDsCallbacks;

    invoke-interface {v9, v5}, Lcom/dolby/api/IDsCallbacks;->onDsOn(Z)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :pswitch_1
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/dolby/api/IDsCallbacks;

    move/from16 v0, p3

    invoke-interface {v9, v0}, Lcom/dolby/api/IDsCallbacks;->onProfileSelected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v12

    throw v9

    :pswitch_2
    :try_start_2
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/dolby/api/IDsCallbacks;

    move/from16 v0, p3

    invoke-interface {v9, v0}, Lcom/dolby/api/IDsCallbacks;->onProfileSettingsChanged(I)V

    goto :goto_1

    :pswitch_3
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p2, :cond_0

    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/dolby/api/IDsCallbacks;

    move-object/from16 v0, p5

    check-cast v0, [F

    move-object v10, v0

    move-object/from16 v0, p6

    check-cast v0, [F

    move-object v11, v0

    invoke-interface {v9, v10, v11}, Lcom/dolby/api/IDsCallbacks;->onVisualizerUpdated([F[F)V

    goto :goto_1

    :pswitch_4
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p2, :cond_0

    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_2

    const/4 v6, 0x1

    :goto_3
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/dolby/api/IDsCallbacks;

    invoke-interface {v9, v6}, Lcom/dolby/api/IDsCallbacks;->onVisualizerSuspended(Z)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :pswitch_5
    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_3

    const/4 v6, 0x1

    :goto_4
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/dolby/api/IDsCallbacks;

    invoke-interface {v9, v6}, Lcom/dolby/api/IDsCallbacks;->onDsSuspended(Z)V

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    :pswitch_6
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/dolby/api/IDsCallbacks;

    move-object/from16 v0, p5

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    move/from16 v0, p3

    invoke-interface {v9, v10, v0}, Lcom/dolby/api/IDsCallbacks;->onAccessRequested(Ljava/lang/String;I)Z

    move-result v7

    goto/16 :goto_1

    :pswitch_7
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/dolby/api/IDsCallbacks;

    move-object/from16 v0, p5

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    move/from16 v0, p3

    invoke-interface {v9, v10, v0}, Lcom/dolby/api/IDsCallbacks;->onAccessForceReleased(Ljava/lang/String;I)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/dolby/api/IDsCallbacks;

    invoke-interface {v9}, Lcom/dolby/api/IDsCallbacks;->onAccessAvailable()V

    goto/16 :goto_1

    :pswitch_9
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/dolby/api/IDsCallbacks;

    move-object/from16 v0, p5

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    move/from16 v0, p3

    invoke-interface {v9, v0, v10}, Lcom/dolby/api/IDsCallbacks;->onProfileNameChanged(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/dolby/api/IDsCallbacks;

    invoke-interface {v9}, Lcom/dolby/api/IDsCallbacks;->onLegacyClientSetting()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    goto/16 :goto_1

    :cond_4
    :try_start_3
    iget-object v9, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v12

    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v7, Lcom/dolby/dax/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v6, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p2, v1, :cond_0

    const/4 v6, 0x1

    if-ne p3, v6, :cond_1

    const/4 v4, 0x1

    :goto_2
    iget-object v6, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/dolby/api/IDsCallbacks;

    invoke-interface {v6, v4}, Lcom/dolby/api/IDsCallbacks;->onDsOn(Z)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :pswitch_1
    iget-object v6, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p2, v1, :cond_0

    iget-object v6, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/dolby/api/IDsCallbacks;

    invoke-interface {v6, p3}, Lcom/dolby/api/IDsCallbacks;->onProfileSelected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public register(Lcom/dolby/api/IDsCallbacks;II)V
    .locals 4

    sget-object v1, Lcom/dolby/dax/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    :goto_0
    const-string/jumbo v0, "DsCallbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the register handle is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " the version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public release()V
    .locals 2

    sget-object v1, Lcom/dolby/dax/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    :cond_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregister(Lcom/dolby/api/IDsCallbacks;I)V
    .locals 4

    sget-object v1, Lcom/dolby/dax/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :goto_0
    const-string/jumbo v0, "DsCallbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallback, version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dolby/dax/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

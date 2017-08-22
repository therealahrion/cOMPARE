.class public Lcom/dolby/dax/service/DsService;
.super Landroid/app/Service;
.source "DsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/dax/service/DsService$1;,
        Lcom/dolby/dax/service/DsService$2;,
        Lcom/dolby/dax/service/DsService$DsClientDeathHandler;
    }
.end annotation


# instance fields
.field private arManager_:Lcom/dolby/dax/service/DsAccessRightManager;

.field private audioManagerIsAppInFocus_:Ljava/lang/reflect/Method;

.field private final binder_:Lcom/dolby/api/IDs$Stub;

.field private cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

.field private final dsClientDeathHandlerList_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/dolby/dax/service/DsService$DsClientDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private dsClientInfoMap_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dolby/api/DsClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dsManager_:Lcom/dolby/dax/service/DsManager;

.field private intentReceiver_:Landroid/content/BroadcastReceiver;

.field private final lockDolbyContext_:Ljava/lang/Object;

.field private visManager_:Lcom/dolby/dax/service/DsVisualizerManager;


# direct methods
.method static synthetic -get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->arManager_:Lcom/dolby/dax/service/DsAccessRightManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/dolby/dax/service/DsService;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->audioManagerIsAppInFocus_:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/dolby/dax/service/DsService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->dsClientDeathHandlerList_:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/dolby/dax/service/DsService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->dsClientInfoMap_:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsVisualizerManager;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->visManager_:Lcom/dolby/dax/service/DsVisualizerManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/dolby/dax/service/DsService;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/dolby/dax/service/DsService;->doSetSelectedProfile(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/dolby/dax/service/DsService;IZ)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/dolby/dax/service/DsService;->doSetDsOn(IZ)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v1, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dolby/dax/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolby/dax/service/DsService;->dsClientInfoMap_:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/dolby/dax/service/DsService;->visManager_:Lcom/dolby/dax/service/DsVisualizerManager;

    iput-object v1, p0, Lcom/dolby/dax/service/DsService;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    iput-object v1, p0, Lcom/dolby/dax/service/DsService;->arManager_:Lcom/dolby/dax/service/DsAccessRightManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolby/dax/service/DsService;->dsClientDeathHandlerList_:Ljava/util/HashMap;

    new-instance v0, Lcom/dolby/dax/service/DsService$1;

    invoke-direct {v0, p0}, Lcom/dolby/dax/service/DsService$1;-><init>(Lcom/dolby/dax/service/DsService;)V

    iput-object v0, p0, Lcom/dolby/dax/service/DsService;->intentReceiver_:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/dolby/dax/service/DsService$2;

    invoke-direct {v0, p0}, Lcom/dolby/dax/service/DsService$2;-><init>(Lcom/dolby/dax/service/DsService;)V

    iput-object v0, p0, Lcom/dolby/dax/service/DsService;->binder_:Lcom/dolby/api/IDs$Stub;

    return-void
.end method

.method private createDs(Landroid/content/Intent;)V
    .locals 9

    const-string/jumbo v5, "DsService"

    const-string/jumbo v6, "createDs()"

    invoke-static {v5, v6}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/dolby/dax/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v5, Lcom/dolby/dax/service/DsManager;

    invoke-direct {v5, p0}, Lcom/dolby/dax/service/DsManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    const-string/jumbo v1, "com.dolby.daxappUI"

    const-string/jumbo v0, "com.dolby.daxappUI.MainActivity"

    const-string/jumbo v5, "musicfx"

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/dolby/dax/service/DsService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v5, "defaultpanelpackage"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "defaultpanelname"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v5, "DsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wrote "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " as default"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v6

    return-void

    :catch_0
    move-exception v3

    :try_start_1
    const-string/jumbo v5, "DsService"

    const-string/jumbo v7, "Ds() FAILED!"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private doSetDsOn(IZ)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/dolby/dax/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsManager;->getDsSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DsService"

    const-string/jumbo v1, "DS_REQUEST_FAILED_EFFECT_SUSPENDED"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return v8

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0, p2}, Lcom/dolby/dax/service/DsManager;->setDsOn(Z)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsManager;->getDsOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->arManager_:Lcom/dolby/dax/service/DsAccessRightManager;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolby/dax/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsManager;->saveDsState()V

    :cond_1
    iget-object v1, p0, Lcom/dolby/dax/service/DsService;->visManager_:Lcom/dolby/dax/service/DsVisualizerManager;

    if-ne v3, v8, :cond_3

    move v0, v8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/dolby/dax/service/DsVisualizerManager;->toggleVisualizer(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    return v9

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move v0, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method private doSetSelectedProfile(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolby/dax/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v4, p2}, Lcom/dolby/dax/service/DsManager;->setSelectedProfile(I)Z

    move-result v1

    iget-object v4, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v4}, Lcom/dolby/dax/service/DsManager;->getSelectedProfile()I

    move-result v0

    if-eqz v1, :cond_0

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/dolby/dax/service/DsService;->doUpdateSelectedProfile(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    if-ne p2, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private doToggleDsOn(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v1, p0, Lcom/dolby/dax/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsManager;->getDsOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/dolby/dax/service/DsService;->doSetDsOn(IZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private doUpdateSelectedProfile(II)V
    .locals 8

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->arManager_:Lcom/dolby/dax/service/DsAccessRightManager;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    move v2, p1

    move v3, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    move v2, p1

    move v3, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/dolby/dax/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsManager;->saveDsProfileSettings()V

    :cond_0
    return-void
.end method

.method private getDsConsumerAppIntent()Landroid/content/Intent;
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.dolby.LAUNCH_DS_APP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dolby/dax/service/DsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v4, 0x200

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v3

    :cond_1
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "DsService"

    const-string/jumbo v1, "DsService.onBind()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/dolby/api/IDs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/service/DsService;->binder_:Lcom/dolby/api/IDs$Stub;

    return-object v0

    :cond_0
    const-string/jumbo v0, "DsService"

    const-string/jumbo v1, "/DsService.onBind() - return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    const-string/jumbo v2, "DsService"

    const-string/jumbo v3, "DsService.onCreate(), DAX Version = [DAX2.3.1.30_r1]"

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/dolby/dax/service/DsService;->createDs(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.dolby.ds.srvcmd.init"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.REBOOT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "media_server_started"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "audio_server_started"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "DS_EFFECT_SUSPEND_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "DS_AUDIO_FOCUS_CHANGE_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "dolby.intent.action.MOVIE_PROFILE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "dolby.intent.action.MUSIC_PROFILE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "dolby.intent.action.VOICE_PROFILE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolby/dax/service/DsService;->intentReceiver_:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/dolby/dax/service/DsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/dolby/dax/service/DsCallbackManager;

    invoke-direct {v2}, Lcom/dolby/dax/service/DsCallbackManager;-><init>()V

    iput-object v2, p0, Lcom/dolby/dax/service/DsService;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    new-instance v2, Lcom/dolby/dax/service/DsAccessRightManager;

    iget-object v3, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    iget-object v4, p0, Lcom/dolby/dax/service/DsService;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    invoke-direct {v2, v3, v4}, Lcom/dolby/dax/service/DsAccessRightManager;-><init>(Lcom/dolby/dax/service/DsManager;Lcom/dolby/dax/service/DsCallbackManager;)V

    iput-object v2, p0, Lcom/dolby/dax/service/DsService;->arManager_:Lcom/dolby/dax/service/DsAccessRightManager;

    new-instance v2, Lcom/dolby/dax/service/DsVisualizerManager;

    iget-object v3, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    iget-object v4, p0, Lcom/dolby/dax/service/DsService;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    invoke-direct {v2, v3, v4}, Lcom/dolby/dax/service/DsVisualizerManager;-><init>(Lcom/dolby/dax/service/DsManager;Lcom/dolby/dax/service/DsCallbackManager;)V

    iput-object v2, p0, Lcom/dolby/dax/service/DsService;->visManager_:Lcom/dolby/dax/service/DsVisualizerManager;

    const-class v2, Landroid/media/AudioManager;

    const-string/jumbo v3, "isAppInFocus"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/dax/service/DsService;->audioManagerIsAppInFocus_:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DsService"

    const-string/jumbo v3, "Exception found in DsService.onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DsService.onDestroy()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolby/dax/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/dolby/dax/service/DsManager;->setDsOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/dolby/dax/service/DsService;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsCallbackManager;->release()V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService;->arManager_:Lcom/dolby/dax/service/DsAccessRightManager;

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsAccessRightManager;->release()V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService;->visManager_:Lcom/dolby/dax/service/DsVisualizerManager;

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsVisualizerManager;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolby/dax/service/DsService;->dsManager_:Lcom/dolby/dax/service/DsManager;

    iget-object v1, p0, Lcom/dolby/dax/service/DsService;->intentReceiver_:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/dolby/dax/service/DsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "DsService"

    const-string/jumbo v3, "Exception found in DsService.onDestory()"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onLowMemory()V
    .locals 2

    const-string/jumbo v0, "DsService"

    const-string/jumbo v1, "DsService.onLowMemory()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const-string/jumbo v4, "DsService"

    const-string/jumbo v5, "DsService.onStartCommand()"

    invoke-static {v4, v5}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "DsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Intent action is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "com.dolby.ds.srvcmd.toggleonoff"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/dolby/dax/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0, v5}, Lcom/dolby/dax/service/DsService;->doToggleDsOn(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "DsService"

    const-string/jumbo v5, "DsService.onStartCommand() exception found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_3
    const-string/jumbo v4, "com.dolby.ds.srvcmd.select"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/dolby/dax/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    const-string/jumbo v4, "cmd"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Lcom/dolby/dax/service/DsService;->doSetSelectedProfile(II)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    const-string/jumbo v4, "com.dolby.ds.srvcmd.launchapp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/dolby/dax/service/DsService;->getDsConsumerAppIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/dolby/dax/service/DsService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "DsService"

    const-string/jumbo v5, "onStartCommand: callerIntent==null, ignoring..."

    invoke-static {v4, v5}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 3

    const-string/jumbo v0, "DsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DsService.onTrimMemory() level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/dolby/dax/service/DsService$2;
.super Lcom/dolby/api/IDs$Stub;
.source "DsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/service/DsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/dax/service/DsService;


# direct methods
.method constructor <init>(Lcom/dolby/dax/service/DsService;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-direct {p0}, Lcom/dolby/api/IDs$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public iAbandonAccessRight(II)I
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v6, "DsService"

    const-string/jumbo v7, "DsService.iAbandonAccessRight"

    invoke-static {v6, v7}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x6

    iget-object v6, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v6}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v6}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v5

    iget-object v6, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    const-string/jumbo v8, "audio"

    invoke-virtual {v6, v8}, Lcom/dolby/dax/service/DsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v6}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolby/dax/service/DsManager;->saveDsStateAndSettings()V

    :cond_0
    iget-object v6, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v6}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2, v0}, Lcom/dolby/dax/service/DsAccessRightManager;->abandonAccessRight(IILandroid/media/AudioManager;)I

    move-result v4

    if-ne p2, v9, :cond_1

    iget-object v6, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v6}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolby/dax/service/DsAccessRightManager;->isDsFocusGranted()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v6}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->unRegisterDsVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v7

    return v4

    :cond_2
    if-nez v4, :cond_1

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "DS_ACCESS_RIGHT_GRANTED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "DS_GLOBAL"

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-virtual {v6, v1}, Lcom/dolby/dax/service/DsService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v6, "DsService"

    const-string/jumbo v8, "Exception in iAbandonAccessRight"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public iCheckAccessRight(II[I)I
    .locals 5

    const-string/jumbo v2, "DsService"

    const-string/jumbo v3, "DsService.iCheckAccessRight"

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x6

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/dolby/dax/service/DsAccessRightManager;->checkAccessRight(II)I

    move-result v2

    const/4 v4, 0x0

    aput v2, p3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v3

    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "DsService"

    const-string/jumbo v4, "Exception in iGetAccessLock"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public iGetDapLibraryVersion([Ljava/lang/String;)I
    .locals 6

    const-string/jumbo v3, "DsService"

    const-string/jumbo v4, "DsService.iGetDapLibraryVersion"

    invoke-static {v3, v4}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x6

    iget-object v3, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, -0x3

    return v3

    :cond_0
    iget-object v3, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolby/dax/service/DsManager;->getDapVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, p1, v5

    const/4 v3, 0x0

    aget-object v3, p1, v3
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const/4 v2, -0x6

    :goto_0
    monitor-exit v4

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v3, "DsService"

    const-string/jumbo v5, "Exception in iGetDapLibraryVersion"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "DsService"

    const-string/jumbo v5, "DeadObjectException in iGetDapLibraryVersion"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, -0x2

    goto :goto_0
.end method

.method public iGetDsServiceVersion([Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DsService.getDsVersion"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    const/4 v0, -0x6

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->getDsVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public iGetIeqPreset(I[I)I
    .locals 7

    const-string/jumbo v4, "DsService"

    const-string/jumbo v5, "DsService.iGetIeqPreset"

    invoke-static {v4, v5}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v4}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, -0x3

    return v4

    :cond_0
    const/4 v2, -0x6

    iget-object v4, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v4}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v4}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolby/dax/service/DsManager;->getSelectedProfile()I

    move-result v3

    iget-object v4, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v4}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/dolby/dax/service/DsManager;->getIeqPreset(I)I

    move-result v4

    const/4 v6, 0x0

    aput v4, p2, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v5

    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v4, "DsService"

    const-string/jumbo v6, "Exception in getIeqPreset"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_1
    move-exception v1

    :try_start_2
    const-string/jumbo v4, "DsService"

    const-string/jumbo v6, "IllegalArgumentException in getIeqPreset"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public iGetIeqPresetCount(I[I)I
    .locals 4

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DsService.iGetIeqPresetCount()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    const/4 v0, -0x6

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz p2, :cond_1

    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_0
    aput v2, p2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public iGetMonoSpeaker([Z)I
    .locals 4

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DsService.iGetMonoSpeaker"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    const/4 v0, -0x6

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->isMonoInternalSpeaker()Z

    move-result v1

    const/4 v3, 0x0

    aput-boolean v1, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public iGetOffType([I)I
    .locals 6

    const-string/jumbo v3, "DsService"

    const-string/jumbo v4, "iGetOffType"

    invoke-static {v3, v4}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, -0x3

    return v3

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolby/dax/service/DsManager;->getOffType()I

    move-result v3

    const/4 v5, 0x0

    aput v3, p1, v5
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    return v2

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v3, "DsService"

    const-string/jumbo v5, "IllegalStateException in iGetOffType"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v2, -0x6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "DsService"

    const-string/jumbo v5, "DeadObjectException in iGetOffType"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, -0x2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public iGetParamLength(I[I)I
    .locals 4

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DsService.iGetParamLength"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    const/4 v0, -0x6

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolby/dax/service/DsManager;->getParamLength(I)I

    move-result v1

    const/4 v3, 0x0

    aput v1, p2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public iGetParameter(III[I)I
    .locals 7

    const-string/jumbo v3, "DsService"

    const-string/jumbo v4, "DsService.iGetParameter()"

    invoke-static {v3, v4}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, -0x3

    return v3

    :cond_0
    const/4 v1, -0x6

    iget-object v3, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-eqz p4, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/dolby/dax/service/DsManager;->getParameter(II)[I

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, p4, v6, v3}, Ljava/lang/System;->arraycopy([II[III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v4

    return v1

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "DsService"

    const-string/jumbo v5, "Exception in iGetParameter"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public iGetProfile(I[I)I
    .locals 4

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DsService.iGetProfile"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    const/4 v0, -0x6

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->getSelectedProfile()I

    move-result v1

    const/4 v3, 0x0

    aput v1, p2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public iGetProfileCount(I[I)I
    .locals 4

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DsService.getProfileCount()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    const/4 v0, -0x6

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->getProfileCount()I

    move-result v1

    const/4 v3, 0x0

    aput v1, p2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public iGetProfileEndpointParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "DS service not initialized."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolby/dax/service/DsManager;->getProfileEndpointParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public iGetProfileModified(II[Z)I
    .locals 5

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DsService.iGetProfileModified"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    const/4 v0, -0x6

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/dolby/dax/service/DsManager;->isProfileModified(I)Z

    move-result v1

    const/4 v3, 0x0

    aput-boolean v1, p3, v3

    const-string/jumbo v1, "DsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DsService.iGetProfileModified "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-boolean v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public iGetProfileName(II[Lcom/dolby/api/DsProfileName;)I
    .locals 7

    const-string/jumbo v4, "DsService"

    const-string/jumbo v5, "DsService.iGetProfileName"

    invoke-static {v4, v5}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v4}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, -0x3

    return v4

    :cond_0
    const/4 v2, -0x6

    iget-object v4, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v4}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v4}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/dolby/dax/service/DsManager;->getProfileName(I)Lcom/dolby/api/DsProfileName;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, p3, v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v5

    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v4, "DsService"

    const-string/jumbo v6, "Exception in iGetProfileName"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_1
    move-exception v1

    :try_start_2
    const-string/jumbo v4, "DsService"

    const-string/jumbo v6, "IllegalArgumentException in iGetProfileName"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public iGetProfileParameter(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "DS service not initialized."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/dolby/dax/service/DsManager;->getProfileParameter(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public iGetProfilePortParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "DS service not initialized."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolby/dax/service/DsManager;->getProfilePortParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public iGetState(I[I)I
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v4, "DsService"

    const-string/jumbo v5, "DsService.iGetState()"

    invoke-static {v4, v5}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v4}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v3, -0x3

    return v3

    :cond_0
    const/4 v2, -0x6

    iget-object v4, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v4}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v5}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dolby/dax/service/DsManager;->getDsOn()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    const/4 v5, 0x0

    aput v3, p2, v5
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v4

    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v3, "DsService"

    const-string/jumbo v5, "Exception in iGetState"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "DsService"

    const-string/jumbo v5, "DeadObjectException in iGetState"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, -0x2

    goto :goto_0
.end method

.method public iGetTuningParameter(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "DS service not initialized."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/dolby/dax/service/DsManager;->getTuningParameter(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public iGetUdcLibraryVersion([Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DsService.iGetUdcLibraryVersion()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    const/4 v0, -0x6

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v1, "UDCv1.7.2"

    const/4 v3, 0x0

    aput-object v1, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public iRegisterCallback(ILcom/dolby/api/IDsCallbacks;I)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/dolby/dax/service/DsCallbackManager;->register(Lcom/dolby/api/IDsCallbacks;II)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/dolby/dax/service/DsAccessRightManager;->registerDsVersion(II)V

    :cond_0
    const-string/jumbo v0, "DsService"

    const-string/jumbo v2, "iRegisterCallback"

    invoke-static {v0, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public iRegisterDeathHandler(ILcom/dolby/api/IDsDeathHandler;)V
    .locals 6

    const-string/jumbo v2, "DsService"

    const-string/jumbo v3, "iRegisterDeathHandler"

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    new-instance v0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-direct {v0, v2, p2, p1}, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;-><init>(Lcom/dolby/dax/service/DsService;Lcom/dolby/api/IDsDeathHandler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->linkToDeath()V

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get3(Lcom/dolby/dax/service/DsService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {p2}, Lcom/dolby/api/IDsDeathHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    :cond_0
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v2, "DsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DsService  iRegisterDeathHandler() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public iRegisterDsAccess(ILcom/dolby/api/DsClientInfo;)V
    .locals 5

    const-string/jumbo v2, "DsService"

    const-string/jumbo v3, "iRegisterDsAccess"

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get4(Lcom/dolby/dax/service/DsService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/dolby/api/DsClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/dolby/api/DsClientInfo;->getConnectionBridge()I

    move-result v0

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/dolby/dax/service/DsAccessRightManager;->addDsConnectedApp(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public iRegisterVisualizerData(I)V
    .locals 3

    const-string/jumbo v0, "DsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add a visualizer handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get7(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsVisualizerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolby/dax/service/DsVisualizerManager;->register(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public iRequestAccessRight(II)I
    .locals 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x2

    const-string/jumbo v7, "DsService"

    const-string/jumbo v8, "DsService.iRequestAccessRight"

    invoke-static {v7, v8}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x6

    iget-object v7, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v7}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    const-string/jumbo v9, "audio"

    invoke-virtual {v8, v9}, Lcom/dolby/dax/service/DsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v8}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v8

    invoke-virtual {v8, p1, p2, v0}, Lcom/dolby/dax/service/DsAccessRightManager;->requestAccessRight(IILandroid/media/AudioManager;)I

    move-result v4

    iget-object v8, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v8}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, p1, v9}, Lcom/dolby/dax/service/DsAccessRightManager;->registerDsVersion(II)V

    if-eq p2, v10, :cond_0

    if-ne p2, v5, :cond_1

    :cond_0
    if-nez v4, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "DS_ACCESS_RIGHT_GRANTED"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "DS_GLOBAL"

    if-ne v10, p2, :cond_2

    :goto_0
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-virtual {v5, v1}, Lcom/dolby/dax/service/DsService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v7

    return v4

    :cond_2
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string/jumbo v5, "DsService"

    const-string/jumbo v6, "Exception in iSetAccessLock"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method public iResetProfile(III)I
    .locals 18

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DsService.iResetProfile"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    const/4 v12, -0x6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v1

    const/4 v2, 0x1

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/dolby/dax/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dolby/dax/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/dolby/dax/service/DsManager;->resetProfile(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dolby/dax/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/dolby/dax/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    const/4 v1, 0x4

    move/from16 v0, p3

    if-lt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/dolby/dax/service/DsManager;->getProfileName(I)Lcom/dolby/api/DsProfileName;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0xa

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0xa

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/dolby/dax/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->saveDsProfileSettings()V

    :cond_2
    const/4 v12, 0x0

    :cond_3
    :goto_0
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/dolby/dax/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit v17

    return v12

    :cond_5
    const/4 v12, -0x5

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "Exception in resetProfile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v17

    throw v1

    :catch_1
    move-exception v11

    :try_start_2
    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "UnsupportedOperationException in resetProfile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 v12, -0x1

    goto :goto_1

    :catch_2
    move-exception v10

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "IllegalArgumentException in resetProfile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 v12, -0x1

    goto :goto_1

    :catch_3
    move-exception v8

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DeadObjectException in resetProfile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/os/DeadObjectException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public iSetIeqPreset(III)I
    .locals 15

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DsService.iSetIeqPreset"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    const/4 v11, -0x6

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dolby/dax/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->getSelectedProfile()I

    move-result v4

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v4, v0}, Lcom/dolby/dax/service/DsManager;->setIeqPreset(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dolby/dax/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/dolby/dax/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v11, 0x0

    :cond_2
    :goto_0
    monitor-exit v14

    return v11

    :cond_3
    const/4 v11, -0x5

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "Exception in setIeqPreset"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v14

    throw v1

    :catch_1
    move-exception v8

    :try_start_2
    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DeadObjectException in setIeqPreset"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/os/DeadObjectException;->printStackTrace()V

    const/4 v11, -0x2

    goto :goto_0

    :catch_2
    move-exception v10

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "IllegalArgumentException in setIeqPreset"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, -0x1

    goto :goto_0
.end method

.method public iSetParameter(IIII[I)I
    .locals 17

    const-string/jumbo v3, "DsService"

    const-string/jumbo v4, "DsService.iSetParameter()"

    invoke-static {v3, v4}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, -0x3

    return v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolby/dax/service/DsManager;->isMonoInternalSpeaker()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/dolby/api/DsParams;

    invoke-virtual {v3}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_1

    const/4 v3, 0x0

    aget v3, p5, v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    return v3

    :cond_1
    sget-object v3, Lcom/dolby/api/DsParams;->IntelligentEqualizerEnable:Lcom/dolby/api/DsParams;

    invoke-virtual {v3}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_4

    const/4 v3, 0x0

    aget v3, p5, v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/dolby/dax/service/DsManager;->getIeqPreset(I)I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, -0x1

    return v3

    :cond_3
    const/4 v3, 0x0

    aget v3, p5, v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/dolby/dax/service/DsManager;->getIeqPreset(I)I

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    const/4 v12, -0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/dolby/dax/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dolby/dax/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/dolby/dax/service/DsManager;->setParameter(II[I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dolby/dax/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolby/dax/service/DsManager;->getSelectedProfile()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/dolby/dax/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    const/4 v12, 0x0

    :goto_0
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v3}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/dolby/dax/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    monitor-exit v16

    return v12

    :cond_7
    const/4 v12, -0x1

    goto :goto_0

    :cond_8
    const/4 v12, -0x5

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    const-string/jumbo v3, "DsService"

    const-string/jumbo v4, "Exception in iSetParameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v16

    throw v3

    :catch_1
    move-exception v10

    :try_start_2
    const-string/jumbo v3, "DsService"

    const-string/jumbo v4, "DeadObjectException in iSetParameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/os/DeadObjectException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, -0x2

    goto :goto_1
.end method

.method public iSetProfile(III)I
    .locals 10

    const-string/jumbo v7, "DsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DsService.iSetProfile("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v7}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v7, -0x3

    return v7

    :cond_0
    const/4 v3, -0x6

    iget-object v7, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v7}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v7}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, p1, v9}, Lcom/dolby/dax/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z

    move-result v4

    iget-object v7, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v7}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v7, p1, p3}, Lcom/dolby/dax/service/DsService;->-wrap0(Lcom/dolby/dax/service/DsService;II)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v7}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, p1, v9}, Lcom/dolby/dax/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v8

    return v3

    :cond_3
    const/4 v3, -0x5

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v7, "DsService"

    const-string/jumbo v9, "Exception in setSelectedProfile"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v7, "DsService"

    const-string/jumbo v9, "DeadObjectException in setSelectedProfile"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    const/4 v3, -0x2

    goto :goto_1

    :catch_2
    move-exception v2

    const-string/jumbo v7, "DsService"

    const-string/jumbo v9, "IllegalArgumentException in setSelectedProfile"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, -0x1

    goto :goto_1
.end method

.method public iSetProfileName(IILcom/dolby/api/DsProfileName;)I
    .locals 15

    const-string/jumbo v2, "DsService"

    const-string/jumbo v3, "DsService.iSetProfileName"

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x3

    return v2

    :cond_0
    const/4 v12, -0x6

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dolby/dax/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v2

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/dolby/dax/service/DsManager;->setProfileName(ILcom/dolby/api/DsProfileName;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0xa

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0xa

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/dolby/dax/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v2}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolby/dax/service/DsManager;->saveDsProfileSettings()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x0

    :cond_2
    :goto_0
    monitor-exit v14

    return v12

    :cond_3
    const/4 v12, -0x5

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v2, "DsService"

    const-string/jumbo v3, "Exception in setProfileName"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2

    :catch_1
    move-exception v11

    :try_start_2
    const-string/jumbo v2, "DsService"

    const-string/jumbo v3, "UnsupportedOperationException in iSetProfileName"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 v12, -0x1

    goto :goto_0

    :catch_2
    move-exception v10

    const-string/jumbo v2, "DsService"

    const-string/jumbo v3, "IllegalArgumentException in iSetProfileName"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, -0x1

    goto :goto_0
.end method

.method public iSetState(IIZ)I
    .locals 8

    const-string/jumbo v5, "DsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DsService.iSetState("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", handle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v5}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v5, -0x3

    return v5

    :cond_0
    const/4 v2, -0x6

    iget-object v5, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v5}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v5}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v7}, Lcom/dolby/dax/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z

    move-result v3

    iget-object v5, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v5}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v5, p1, p3}, Lcom/dolby/dax/service/DsService;->-wrap1(Lcom/dolby/dax/service/DsService;IZ)I

    move-result v2

    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v5}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v7}, Lcom/dolby/dax/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v6

    return v2

    :cond_2
    const/4 v2, -0x5

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v5, "DsService"

    const-string/jumbo v7, "Exception in iSetState"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v5, "DsService"

    const-string/jumbo v7, "DeadObjectException in iSetState"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, -0x2

    goto :goto_1
.end method

.method public iUnregisterCallback(ILcom/dolby/api/IDsCallbacks;I)V
    .locals 4

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->unRegisterDsVersion(I)V

    :cond_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/dolby/dax/service/DsCallbackManager;->unregister(Lcom/dolby/api/IDsCallbacks;I)V

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->saveDsStateAndSettings()V

    :cond_1
    const-string/jumbo v1, "DsService"

    const-string/jumbo v3, "iUnregisterCallback"

    invoke-static {v1, v3}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public iUnregisterDeathHandler(ILcom/dolby/api/IDsDeathHandler;)V
    .locals 4

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "iUnregisterDeathHandler"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get3(Lcom/dolby/dax/service/DsService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p2}, Lcom/dolby/api/IDsDeathHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->unlinkToDeath()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public iUnregisterDsAccess(I)V
    .locals 3

    const-string/jumbo v0, "DsService"

    const-string/jumbo v1, "iUnregisterDsAccess"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->unRegisterDsVersion(I)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->removeDsConnectedApp(I)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get4(Lcom/dolby/dax/service/DsService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public iUnregisterVisualizerData(I)V
    .locals 3

    const-string/jumbo v0, "DsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove a visualzier handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService$2;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get7(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsVisualizerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolby/dax/service/DsVisualizerManager;->unregister(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

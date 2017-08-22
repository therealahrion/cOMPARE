.class Lcom/dolby/dax/service/DsService$DsClientDeathHandler;
.super Ljava/lang/Object;
.source "DsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/service/DsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DsClientDeathHandler"
.end annotation


# instance fields
.field mHandle:I

.field private final mIDsDeathHandler:Lcom/dolby/api/IDsDeathHandler;

.field final synthetic this$0:Lcom/dolby/dax/service/DsService;


# direct methods
.method constructor <init>(Lcom/dolby/dax/service/DsService;Lcom/dolby/api/IDsDeathHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->mIDsDeathHandler:Lcom/dolby/api/IDsDeathHandler;

    iput p3, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->mHandle:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get7(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsVisualizerManager;

    move-result-object v0

    iget v2, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->mHandle:I

    invoke-virtual {v0, v2}, Lcom/dolby/dax/service/DsVisualizerManager;->unregister(I)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v0

    iget v2, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->mHandle:I

    invoke-virtual {v0, v2}, Lcom/dolby/dax/service/DsAccessRightManager;->removeDsConnectedApp(I)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v0

    iget v2, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->mHandle:I

    invoke-virtual {v0, v2}, Lcom/dolby/dax/service/DsAccessRightManager;->unRegisterDsVersion(I)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get4(Lcom/dolby/dax/service/DsService;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->mHandle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v0}, Lcom/dolby/dax/service/DsService;->-get3(Lcom/dolby/dax/service/DsService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->mIDsDeathHandler:Lcom/dolby/api/IDsDeathHandler;

    invoke-interface {v2}, Lcom/dolby/api/IDsDeathHandler;->asBinder()Landroid/os/IBinder;

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

.method public linkToDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->mIDsDeathHandler:Lcom/dolby/api/IDsDeathHandler;

    invoke-interface {v0}, Lcom/dolby/api/IDsDeathHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/service/DsService$DsClientDeathHandler;->mIDsDeathHandler:Lcom/dolby/api/IDsDeathHandler;

    invoke-interface {v0}, Lcom/dolby/api/IDsDeathHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

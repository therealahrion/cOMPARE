.class Lcom/dolby/api/DsBase$1;
.super Ljava/lang/Object;
.source "DsBase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/api/DsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/api/DsBase;


# direct methods
.method constructor <init>(Lcom/dolby/api/DsBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/dolby/api/DsBase;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 349
    const-string/jumbo v1, "DsBase"

    const-string/jumbo v2, "ServiceConnection.onServiceConnected()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    invoke-static {p2}, Lcom/dolby/api/IDs$Stub;->asInterface(Landroid/os/IBinder;)Lcom/dolby/api/IDs;

    move-result-object v2

    iput-object v2, v1, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    .line 353
    iget-object v1, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, v1, Lcom/dolby/api/DsBase;->clientHandle_:I

    .line 356
    :try_start_19
    iget-object v1, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    iget-object v1, v1, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget-object v2, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    iget v2, v2, Lcom/dolby/api/DsBase;->clientHandle_:I

    iget-object v3, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    invoke-static {v3}, Lcom/dolby/api/DsBase;->-get0(Lcom/dolby/api/DsBase;)Lcom/dolby/api/IDsDeathHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/dolby/api/IDs;->iRegisterDeathHandler(ILcom/dolby/api/IDsDeathHandler;)V

    .line 357
    iget-object v1, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    iget-object v1, v1, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget-object v2, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    iget v2, v2, Lcom/dolby/api/DsBase;->clientHandle_:I

    iget-object v3, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    iget-object v3, v3, Lcom/dolby/api/DsBase;->DsClientInfo_:Lcom/dolby/api/DsClientInfo;

    invoke-interface {v1, v2, v3}, Lcom/dolby/api/IDs;->iRegisterDsAccess(ILcom/dolby/api/DsClientInfo;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_39} :catch_50

    .line 364
    :goto_39
    iget-object v1, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    iget-object v1, v1, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    if-eqz v1, :cond_46

    .line 366
    iget-object v1, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    iget-object v1, v1, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    invoke-interface {v1}, Lcom/dolby/api/IDsAccessEvents;->onClientConnected()V

    .line 369
    :cond_46
    const-string/jumbo v1, "DsBase"

    const-string/jumbo v2, "CONNECTED: DsService"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void

    .line 360
    :catch_50
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    const-string/jumbo v2, "iRegisterDsAccess"

    invoke-virtual {v1, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_39
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 374
    const-string/jumbo v0, "DsBase"

    const-string/jumbo v1, "ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    iget-object v0, v0, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    if-eqz v0, :cond_17

    .line 378
    iget-object v0, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    iget-object v0, v0, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    invoke-interface {v0}, Lcom/dolby/api/IDsAccessEvents;->onClientDisconnected()V

    .line 381
    :cond_17
    iget-object v0, p0, Lcom/dolby/api/DsBase$1;->this$0:Lcom/dolby/api/DsBase;

    iput-object v2, v0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    .line 383
    const-string/jumbo v0, "DsBase"

    const-string/jumbo v1, "/ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

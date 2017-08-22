.class Landroid/dolby/DsClient$1;
.super Ljava/lang/Object;
.source "DsClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/DsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/dolby/DsClient;


# direct methods
.method constructor <init>(Landroid/dolby/DsClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/dolby/DsClient;

    .prologue
    .line 1195
    iput-object p1, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1199
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "ServiceConnection.onServiceConnected()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iget-object v1, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {p2}, Lcom/dolby/api/IDs$Stub;->asInterface(Landroid/os/IBinder;)Lcom/dolby/api/IDs;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsClient;->-set0(Landroid/dolby/DsClient;Lcom/dolby/api/IDs;)Lcom/dolby/api/IDs;

    .line 1205
    :try_start_12
    iget-object v1, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get3(Landroid/dolby/DsClient;)Lcom/dolby/api/IDs;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v3}, Landroid/dolby/DsClient;->-get2(Landroid/dolby/DsClient;)Lcom/dolby/api/IDsDeathHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/dolby/api/IDs;->iRegisterDeathHandler(ILcom/dolby/api/IDsDeathHandler;)V

    .line 1206
    iget-object v1, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get3(Landroid/dolby/DsClient;)Lcom/dolby/api/IDs;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v3}, Landroid/dolby/DsClient;->-get1(Landroid/dolby/DsClient;)Lcom/dolby/api/IDsCallbacks;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/dolby/api/IDs;->iRegisterCallback(ILcom/dolby/api/IDsCallbacks;I)V

    .line 1207
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "ServiceConnection.onServiceConnected()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_42} :catch_5d

    .line 1214
    :goto_42
    iget-object v1, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 1216
    iget-object v1, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v1

    invoke-interface {v1}, Landroid/dolby/IDsClientEvents;->onClientConnected()V

    .line 1219
    :cond_53
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "CONNECTED: DSService"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    return-void

    .line 1210
    :catch_5d
    move-exception v0

    .line 1211
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "onServiceConnected failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 1224
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1228
    iget-object v0, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v0

    invoke-interface {v0}, Landroid/dolby/IDsClientEvents;->onClientDisconnected()V

    .line 1231
    :cond_1b
    iget-object v0, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0, v2}, Landroid/dolby/DsClient;->-set0(Landroid/dolby/DsClient;Lcom/dolby/api/IDs;)Lcom/dolby/api/IDs;

    .line 1233
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "/ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.class Landroid/dolby/DsClient$2;
.super Lcom/dolby/api/IDsCallbacks$Stub;
.source "DsClient.java"


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
    .line 1242
    iput-object p1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-direct {p0}, Lcom/dolby/api/IDsCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessAvailable()V
    .registers 1

    .prologue
    .line 1287
    return-void
.end method

.method public onAccessForceReleased(Ljava/lang/String;I)V
    .registers 3
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1282
    return-void
.end method

.method public onAccessRequested(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1295
    const/4 v0, 0x1

    return v0
.end method

.method public onDsOn(Z)V
    .registers 7
    .param p1, "on"    # Z

    .prologue
    .line 1251
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "event onDsOn()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    if-eqz p1, :cond_22

    const/4 v0, 0x1

    .line 1253
    .local v0, "status":I
    :goto_c
    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get4(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get4(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1249
    return-void

    .line 1252
    .end local v0    # "status":I
    :cond_22
    const/4 v0, 0x0

    .restart local v0    # "status":I
    goto :goto_c
.end method

.method public onDsSuspended(Z)V
    .registers 2
    .param p1, "isSuspended"    # Z

    .prologue
    .line 1262
    return-void
.end method

.method public onLegacyClientSetting()Z
    .registers 2

    .prologue
    .line 1306
    const/4 v0, 0x0

    return v0
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "profile"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1298
    return-void
.end method

.method public onProfileSelected(I)V
    .registers 6
    .param p1, "profile"    # I

    .prologue
    .line 1258
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "event onProfileSelected()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get4(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get4(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1256
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .registers 2
    .param p1, "profile"    # I

    .prologue
    .line 1267
    return-void
.end method

.method public onVisualizerSuspended(Z)V
    .registers 2
    .param p1, "isSuspended"    # Z

    .prologue
    .line 1277
    return-void
.end method

.method public onVisualizerUpdated([F[F)V
    .registers 3
    .param p1, "gains"    # [F
    .param p2, "excitations"    # [F

    .prologue
    .line 1272
    return-void
.end method

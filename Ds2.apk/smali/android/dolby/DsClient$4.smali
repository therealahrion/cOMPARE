.class Landroid/dolby/DsClient$4;
.super Landroid/os/Handler;
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
.method constructor <init>(Landroid/dolby/DsClient;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/dolby/DsClient;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1328
    iput-object p1, p0, Landroid/dolby/DsClient$4;->this$0:Landroid/dolby/DsClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1333
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_6e

    .line 1356
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1331
    :cond_8
    :goto_8
    return-void

    .line 1336
    :pswitch_9
    const-string/jumbo v1, "DsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage(DS_STATUS_CHANGED_MSG): isOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_3c

    const/4 v0, 0x0

    .line 1340
    .local v0, "isOn":Z
    :goto_2a
    iget-object v1, p0, Landroid/dolby/DsClient$4;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1342
    iget-object v1, p0, Landroid/dolby/DsClient$4;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/dolby/IDsClientEvents;->onDsOn(Z)V

    goto :goto_8

    .line 1337
    .end local v0    # "isOn":Z
    :cond_3c
    const/4 v0, 0x1

    .restart local v0    # "isOn":Z
    goto :goto_2a

    .line 1347
    .end local v0    # "isOn":Z
    :pswitch_3e
    const-string/jumbo v1, "DsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage(PROFILE_SELECTED_MSG): profile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v1, p0, Landroid/dolby/DsClient$4;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1351
    iget-object v1, p0, Landroid/dolby/DsClient$4;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Landroid/dolby/IDsClientEvents;->onProfileSelected(I)V

    goto :goto_8

    .line 1333
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_3e
    .end packed-switch
.end method

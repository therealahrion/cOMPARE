.class Lcom/dolby/api/DsFocus$1;
.super Lcom/dolby/api/IDsCallbacks$Stub;
.source "DsFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/api/DsFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/api/DsFocus;


# direct methods
.method constructor <init>(Lcom/dolby/api/DsFocus;)V
    .registers 2
    .param p1, "this$0"    # Lcom/dolby/api/DsFocus;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    invoke-direct {p0}, Lcom/dolby/api/IDsCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessAvailable()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 752
    const-string/jumbo v0, "DsFocus"

    const-string/jumbo v1, "event onAccessAvailable()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v0, v0, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 750
    return-void
.end method

.method public onAccessForceReleased(Ljava/lang/String;I)V
    .registers 7
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 746
    const-string/jumbo v0, "DsFocus"

    const-string/jumbo v1, "event onAccessForceReleased()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v0, v0, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 744
    return-void
.end method

.method public onAccessRequested(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 759
    const-string/jumbo v1, "DsFocus"

    const-string/jumbo v2, "event onAccessRequested()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, "value":Z
    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    if-eqz v1, :cond_18

    .line 763
    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    invoke-interface {v1, p1, p2}, Lcom/dolby/api/IDsAccessEvents;->onAccessRequested(Ljava/lang/String;I)Z

    move-result v0

    .line 765
    .end local v0    # "value":Z
    :cond_18
    return v0
.end method

.method public onDsOn(Z)V
    .registers 7
    .param p1, "on"    # Z

    .prologue
    .line 704
    const-string/jumbo v1, "DsFocus"

    const-string/jumbo v2, "event onDsOn()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    .line 706
    .local v0, "status":I
    :goto_c
    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 702
    return-void

    .line 705
    .end local v0    # "status":I
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "status":I
    goto :goto_c
.end method

.method public onDsSuspended(Z)V
    .registers 7
    .param p1, "isSuspended"    # Z

    .prologue
    .line 711
    const-string/jumbo v1, "DsFocus"

    const-string/jumbo v2, "event onDsSuspended()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    .line 713
    .local v0, "status":I
    :goto_c
    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 709
    return-void

    .line 712
    .end local v0    # "status":I
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "status":I
    goto :goto_c
.end method

.method public onLegacyClientSetting()Z
    .registers 4

    .prologue
    .line 777
    const-string/jumbo v1, "DsFocus"

    const-string/jumbo v2, "event onLegacyClientSetting()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const/4 v0, 0x0

    .line 779
    .local v0, "value":Z
    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsFocus;->legacyClientListener_:Lcom/dolby/api/IDsLegacyClientEvents;

    if-eqz v1, :cond_18

    .line 781
    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsFocus;->legacyClientListener_:Lcom/dolby/api/IDsLegacyClientEvents;

    invoke-interface {v1}, Lcom/dolby/api/IDsLegacyClientEvents;->onLegacyClientSetting()Z

    move-result v0

    .line 783
    .end local v0    # "value":Z
    :cond_18
    return v0
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .registers 7
    .param p1, "profile"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 770
    const-string/jumbo v0, "DsFocus"

    const-string/jumbo v1, "event onProfileNameChanged()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v0, v0, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 768
    return-void
.end method

.method public onProfileSelected(I)V
    .registers 6
    .param p1, "profile"    # I

    .prologue
    .line 718
    const-string/jumbo v0, "DsFocus"

    const-string/jumbo v1, "event onProfileSelected()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v0, v0, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 716
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .registers 6
    .param p1, "profile"    # I

    .prologue
    .line 724
    const-string/jumbo v0, "DsFocus"

    const-string/jumbo v1, "event onProfileSettingsChanged()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v0, v0, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 722
    return-void
.end method

.method public onVisualizerSuspended(Z)V
    .registers 7
    .param p1, "isSuspended"    # Z

    .prologue
    .line 739
    const-string/jumbo v1, "DsFocus"

    const-string/jumbo v2, "event onVisualizerSuspended()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    .line 741
    .local v0, "status":I
    :goto_c
    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 737
    return-void

    .line 740
    .end local v0    # "status":I
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "status":I
    goto :goto_c
.end method

.method public onVisualizerUpdated([F[F)V
    .registers 7
    .param p1, "gains"    # [F
    .param p2, "excitations"    # [F

    .prologue
    const/4 v3, 0x0

    .line 730
    const-string/jumbo v0, "DsFocus"

    const-string/jumbo v1, "event onVisualizerUpdated()"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v0, v0, Lcom/dolby/api/DsFocus;->gains_:[F

    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget v1, v1, Lcom/dolby/api/DsFocus;->bandCount_:I

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 733
    iget-object v0, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v0, v0, Lcom/dolby/api/DsFocus;->excitations_:[F

    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget v1, v1, Lcom/dolby/api/DsFocus;->bandCount_:I

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 734
    iget-object v0, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v0, v0, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/api/DsFocus$1;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v1, v1, Lcom/dolby/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 728
    return-void
.end method

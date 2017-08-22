.class Lcom/dolby/api/DsFocus$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/dolby/api/DsFocus;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/dolby/api/DsFocus;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 796
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1ac

    .line 884
    :pswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 794
    :cond_8
    :goto_8
    return-void

    .line 799
    :pswitch_9
    const-string/jumbo v2, "DsFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(DS_STATUS_CHANGED_MSG): isOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;

    if-eqz v2, :cond_8

    .line 804
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_38

    const/4 v0, 0x0

    .line 805
    .local v0, "isOn":Z
    :goto_30
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;

    invoke-interface {v2, v0}, Lcom/dolby/api/IDsEvents;->onDsOn(Z)V

    goto :goto_8

    .line 804
    .end local v0    # "isOn":Z
    :cond_38
    const/4 v0, 0x1

    .restart local v0    # "isOn":Z
    goto :goto_30

    .line 810
    .end local v0    # "isOn":Z
    :pswitch_3a
    const-string/jumbo v2, "DsFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(PROFILE_SELECTED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;

    if-eqz v2, :cond_8

    .line 814
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/dolby/api/IDsEvents;->onProfileSelected(I)V

    goto :goto_8

    .line 819
    :pswitch_66
    const-string/jumbo v2, "DsFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(PROFILE_SETTINGS_CHANGED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;

    if-eqz v2, :cond_8

    .line 823
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/dolby/api/IDsEvents;->onProfileSettingsChanged(I)V

    goto/16 :goto_8

    .line 828
    :pswitch_93
    const-string/jumbo v2, "DsFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(DS_STATUS_SUSPENDED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;

    if-eqz v2, :cond_8

    .line 832
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_c3

    const/4 v1, 0x0

    .line 833
    .local v1, "isSuspended":Z
    :goto_ba
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->dsListener_:Lcom/dolby/api/IDsEvents;

    invoke-interface {v2, v1}, Lcom/dolby/api/IDsEvents;->onDsSuspended(Z)V

    goto/16 :goto_8

    .line 832
    .end local v1    # "isSuspended":Z
    :cond_c3
    const/4 v1, 0x1

    .restart local v1    # "isSuspended":Z
    goto :goto_ba

    .line 838
    .end local v1    # "isSuspended":Z
    :pswitch_c5
    const-string/jumbo v2, "DsFocus"

    const-string/jumbo v3, "handleMessage(VISUALIZER_UPDATED_MSG):"

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->visualizerListener_:Lcom/dolby/api/IDsVisualizerEvents;

    if-eqz v2, :cond_8

    .line 842
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->visualizerListener_:Lcom/dolby/api/IDsVisualizerEvents;

    iget-object v3, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v3, v3, Lcom/dolby/api/DsFocus;->excitations_:[F

    iget-object v4, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v4, v4, Lcom/dolby/api/DsFocus;->gains_:[F

    invoke-interface {v2, v3, v4}, Lcom/dolby/api/IDsVisualizerEvents;->onVisualizerUpdate([F[F)V

    goto/16 :goto_8

    .line 847
    :pswitch_e5
    const-string/jumbo v2, "DsFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(VISUALIZER_SUSPENDED_MSG): isSuspended = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->visualizerListener_:Lcom/dolby/api/IDsVisualizerEvents;

    if-eqz v2, :cond_8

    .line 851
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_115

    const/4 v1, 0x0

    .line 852
    .restart local v1    # "isSuspended":Z
    :goto_10c
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->visualizerListener_:Lcom/dolby/api/IDsVisualizerEvents;

    invoke-interface {v2, v1}, Lcom/dolby/api/IDsVisualizerEvents;->onVisualizerSuspended(Z)V

    goto/16 :goto_8

    .line 851
    .end local v1    # "isSuspended":Z
    :cond_115
    const/4 v1, 0x1

    .restart local v1    # "isSuspended":Z
    goto :goto_10c

    .line 857
    .end local v1    # "isSuspended":Z
    :pswitch_117
    const-string/jumbo v2, "DsFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(ACCESS_RELEASED_MSG): app = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    if-eqz v2, :cond_8

    .line 861
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v3, v2, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v2, v4}, Lcom/dolby/api/IDsAccessEvents;->onAccessForceReleased(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 866
    :pswitch_155
    const-string/jumbo v2, "DsFocus"

    const-string/jumbo v3, "handleMessage(ACCESS_AVAILABLE_MSG)"

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    if-eqz v2, :cond_8

    .line 870
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    invoke-interface {v2}, Lcom/dolby/api/IDsAccessEvents;->onAccessAvailable()V

    goto/16 :goto_8

    .line 875
    :pswitch_16d
    const-string/jumbo v2, "DsFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(PROFILE_NAME_CHANGED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " name ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v2, v2, Lcom/dolby/api/DsFocus;->profileNameListener_:Lcom/dolby/api/IDsProfileNameEvents;

    if-eqz v2, :cond_8

    .line 879
    iget-object v2, p0, Lcom/dolby/api/DsFocus$2;->this$0:Lcom/dolby/api/DsFocus;

    iget-object v3, v2, Lcom/dolby/api/DsFocus;->profileNameListener_:Lcom/dolby/api/IDsProfileNameEvents;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/dolby/api/IDsProfileNameEvents;->onProfileNameChanged(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 796
    nop

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_9
        :pswitch_3a
        :pswitch_66
        :pswitch_c5
        :pswitch_e5
        :pswitch_93
        :pswitch_117
        :pswitch_155
        :pswitch_5
        :pswitch_16d
    .end packed-switch
.end method

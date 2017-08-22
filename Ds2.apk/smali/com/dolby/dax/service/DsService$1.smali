.class Lcom/dolby/dax/service/DsService$1;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get6(Lcom/dolby/dax/service/DsService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "cmd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "widget class"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intentReceiver_.onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.REBOOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "Save DS state and current settings before shutting down..."

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->saveDsStateAndSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v16

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v1, "media_server_started"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "audio_server_started"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->validateDsEffect()Z

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DS effect recreate successfully"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_2
    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "Exception found in DsService::onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v16

    throw v1

    :cond_4
    :try_start_3
    const-string/jumbo v1, "DS_EFFECT_SUSPEND_ACTION"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DS_EFFECT_SUSPEND_ACTION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/dax/service/DsService$1;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/dax/service/DsService$1;->getResultCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dolby/dax/service/DsManager;->setDsSuspended(Z)V

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DS_EFFECT_UNSUSPENDED"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/dolby/dax/service/DsService;->-wrap1(Lcom/dolby/dax/service/DsService;IZ)I

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dolby/dax/service/DsManager;->setDsSuspended(Z)V

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DS_EFFECT_SUSPENDED"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->getDsOn()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get2(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/dolby/dax/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DS_AUDIO_FOCUS_CHANGE_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v1, "focusChange"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "focusChange"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v1, "loss"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "abandon"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/service/DsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get1(Lcom/dolby/dax/service/DsService;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    invoke-virtual {v1, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_1

    const-string/jumbo v1, "abandon"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DsService,The application named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has abandoned its audio focus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v15, v2}, Lcom/dolby/dax/service/DsAccessRightManager;->doAccessForAudioFocusChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DsService,The application named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has lost its audio focus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Lcom/dolby/dax/service/DsAccessRightManager;->doAccessForAudioFocusChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "gain"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DsService,The application named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has gained its audio focus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get0(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsAccessRightManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2}, Lcom/dolby/dax/service/DsAccessRightManager;->doAccessForAudioFocusChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->getDsOn()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dolby/dax/service/DsManager;->setDsOn(Z)V

    const-string/jumbo v1, "dolby_state=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DS have already turn off,DsOn does not need set false"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->getDsOn()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "DsService"

    const-string/jumbo v2, "DS have already turn on,DsOn does not need set true"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dolby/dax/service/DsManager;->setDsOn(Z)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v1, "dolby.intent.action.MOVIE_PROFILE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->getDsOn()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    sget-object v2, Lcom/dolby/dax/model/ProfileType;->movie:Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v2}, Lcom/dolby/dax/model/ProfileType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolby/dax/service/DsManager;->setSelectedProfile(I)Z

    const-string/jumbo v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DS replace profile with MOVIE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dolby/dax/model/ProfileType;->movie:Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v3}, Lcom/dolby/dax/model/ProfileType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v1, "dolby.intent.action.MUSIC_PROFILE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->getDsOn()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    sget-object v2, Lcom/dolby/dax/model/ProfileType;->music:Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v2}, Lcom/dolby/dax/model/ProfileType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolby/dax/service/DsManager;->setSelectedProfile(I)Z

    const-string/jumbo v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DS replace profile with MUSIC ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dolby/dax/model/ProfileType;->movie:Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v3}, Lcom/dolby/dax/model/ProfileType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "dolby.intent.action.VOICE_PROFILE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/service/DsManager;->getDsOn()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/dax/service/DsService$1;->this$0:Lcom/dolby/dax/service/DsService;

    invoke-static {v1}, Lcom/dolby/dax/service/DsService;->-get5(Lcom/dolby/dax/service/DsService;)Lcom/dolby/dax/service/DsManager;

    move-result-object v1

    sget-object v2, Lcom/dolby/dax/model/ProfileType;->voice:Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v2}, Lcom/dolby/dax/model/ProfileType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolby/dax/service/DsManager;->setSelectedProfile(I)Z

    const-string/jumbo v1, "DsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DS replace profile with VOICE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dolby/dax/model/ProfileType;->movie:Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v3}, Lcom/dolby/dax/model/ProfileType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

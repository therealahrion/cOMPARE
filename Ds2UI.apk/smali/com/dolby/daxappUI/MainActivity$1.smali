.class Lcom/dolby/daxappUI/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/daxappUI/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/MainActivity;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/MainActivity$1;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity$1;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0001

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "DsUI::MainActivity"

    const-string/jumbo v3, "ACTION_SCREEN_OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity$1;->this$0:Lcom/dolby/daxappUI/MainActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/dolby/daxappUI/MainActivity;->-set0(Lcom/dolby/daxappUI/MainActivity;Z)Z

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity$1;->this$0:Lcom/dolby/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity$1;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v3}, Lcom/dolby/daxappUI/MainActivity;->-get2(Lcom/dolby/daxappUI/MainActivity;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/dolby/daxappUI/MainActivity;->-wrap2(Lcom/dolby/daxappUI/MainActivity;Z)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity$1;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v2}, Lcom/dolby/daxappUI/MainActivity;->-get2(Lcom/dolby/daxappUI/MainActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DsUI::MainActivity"

    const-string/jumbo v3, "ACTION_SCREEN_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity$1;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v2, v4}, Lcom/dolby/daxappUI/MainActivity;->-set0(Lcom/dolby/daxappUI/MainActivity;Z)Z

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity$1;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v2}, Lcom/dolby/daxappUI/MainActivity;->-get1(Lcom/dolby/daxappUI/MainActivity;)Lcom/dolby/api/DsGlobalEx;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity$1;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v2}, Lcom/dolby/daxappUI/MainActivity;->-get0(Lcom/dolby/daxappUI/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity$1;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v2}, Lcom/dolby/daxappUI/MainActivity;->-get1(Lcom/dolby/daxappUI/MainActivity;)Lcom/dolby/api/DsGlobalEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v2

    if-ne v4, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity$1;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v2, v0}, Lcom/dolby/daxappUI/MainActivity;->-wrap2(Lcom/dolby/daxappUI/MainActivity;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.class Lcom/dolby/instoredemoapp/DlbApController$1;
.super Ljava/lang/Object;
.source "DlbApController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/instoredemoapp/DlbApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/instoredemoapp/DlbApController;


# direct methods
.method constructor <init>(Lcom/dolby/instoredemoapp/DlbApController;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbApController$1;->this$0:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5

    const/16 v4, 0x7e1

    const-string/jumbo v1, "DlbApController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAudioFocusChange, focusChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController$1;->this$0:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbApController;->-get1(Lcom/dolby/instoredemoapp/DlbApController;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController$1;->this$0:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbApController;->-get0(Lcom/dolby/instoredemoapp/DlbApController;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v1, "com.dolby.daxappUI"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isAppInFocus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController$1;->this$0:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbApController;->-get1(Lcom/dolby/instoredemoapp/DlbApController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_2
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController$1;->this$0:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbApController;->-get1(Lcom/dolby/instoredemoapp/DlbApController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "DlbApController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAudioFocusChange, do nothing for value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

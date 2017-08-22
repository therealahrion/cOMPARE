.class Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;
.super Landroid/os/Handler;
.source "DlbInStoreDemoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;


# direct methods
.method constructor <init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7dc

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get0(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Lcom/dolby/instoredemoapp/DlbApController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolby/instoredemoapp/DlbApController;->processApMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get6(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get6(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->callOnClick()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7dd

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7de

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get7(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v2}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-wrap1(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-set1(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get3(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get7(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7df

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get7(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v2}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-wrap0(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get0(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Lcom/dolby/instoredemoapp/DlbApController;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v2}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-wrap2(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolby/instoredemoapp/DlbApController;->setApInfoFile(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1, v3}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-set0(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1, v3}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-set1(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7e0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get7(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v2}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-wrap0(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7e1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-virtual {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->finish()V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "DlbInStoreDemoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DlbInstoreDemoPlayer.mHandler.handleMessage(), unknown message id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

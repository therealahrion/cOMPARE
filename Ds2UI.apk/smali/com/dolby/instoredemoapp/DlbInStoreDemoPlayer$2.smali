.class Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;
.super Ljava/lang/Object;
.source "DlbInStoreDemoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get2(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get1(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-set0(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get7(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get1(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

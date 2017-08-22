.class Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;
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

    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get5(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-set2(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get5(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get4(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->-get4(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1
.end method

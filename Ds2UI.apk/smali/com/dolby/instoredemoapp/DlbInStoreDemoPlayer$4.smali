.class Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$4;
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

    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$4;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$4;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->finish()V

    return-void
.end method

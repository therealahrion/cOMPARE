.class Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;
.super Ljava/lang/Object;
.source "FragExploreDolbyAtmos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v1}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get12(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-set0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;I)I

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap0(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap8(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap1(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap4(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap2(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap7(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap6(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap5(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$3;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-wrap3(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;FII)V

    goto :goto_0
.end method

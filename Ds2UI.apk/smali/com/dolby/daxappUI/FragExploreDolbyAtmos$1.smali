.class Lcom/dolby/daxappUI/FragExploreDolbyAtmos$1;
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

    iput-object p1, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$1;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v2, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$1;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v2}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get11(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "http://www.dolby.com/us/en/technologies/dolby-atmos.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$1;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-virtual {v2, v0}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

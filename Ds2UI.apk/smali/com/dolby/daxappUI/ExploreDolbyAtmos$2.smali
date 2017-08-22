.class Lcom/dolby/daxappUI/ExploreDolbyAtmos$2;
.super Ljava/lang/Object;
.source "ExploreDolbyAtmos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/ExploreDolbyAtmos;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$2;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$2;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    invoke-static {v2}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "http://www.dolby.com/androidapps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos$2;->this$0:Lcom/dolby/daxappUI/ExploreDolbyAtmos;

    invoke-virtual {v2, v0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

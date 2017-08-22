.class Lcom/dolby/daxappUI/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/MainActivity;->onBackPressed()V
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

    iput-object p1, p0, Lcom/dolby/daxappUI/MainActivity$4;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity$4;->this$0:Lcom/dolby/daxappUI/MainActivity;

    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity$4;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v1}, Lcom/dolby/daxappUI/MainActivity;->-get3(Lcom/dolby/daxappUI/MainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity$4;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v2}, Lcom/dolby/daxappUI/MainActivity;->-get4(Lcom/dolby/daxappUI/MainActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

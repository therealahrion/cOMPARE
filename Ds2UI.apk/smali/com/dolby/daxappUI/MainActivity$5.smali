.class Lcom/dolby/daxappUI/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/MainActivity;->profilePresetsAreAlive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/MainActivity;

.field final synthetic val$profile:I


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/MainActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/MainActivity$5;->this$0:Lcom/dolby/daxappUI/MainActivity;

    iput p2, p0, Lcom/dolby/daxappUI/MainActivity$5;->val$profile:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity$5;->this$0:Lcom/dolby/daxappUI/MainActivity;

    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/dolby/daxappUI/MainActivity$5;->val$profile:I

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

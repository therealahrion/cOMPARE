.class Lcom/dolby/daxappUI/FragExploreDolbyAtmos$27;
.super Ljava/lang/Object;
.source "FragExploreDolbyAtmos.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->controlTxtUpRemark(FII)V
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

    iput-object p1, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$27;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v1, p0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos$27;->this$0:Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-static {v1}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->-get10(Lcom/dolby/daxappUI/FragExploreDolbyAtmos;)Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

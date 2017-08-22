.class public Lcom/dolby/daxappUI/ToggleSlideListener;
.super Ljava/lang/Object;
.source "ToggleSlideListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDetected:Z

.field private mHalfWidth:F

.field private mMinDist:F

.field private mRight:Z

.field private mStartX:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onDetected(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mDetected:Z

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private testXonOtherHalf(F)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mRight:Z

    iget v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mHalfWidth:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    if-ne v3, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mDetected:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mHalfWidth:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iput v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mMinDist:F

    instance-of v2, p1, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mRight:Z

    :cond_0
    iget v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mStartX:F

    invoke-direct {p0, v2}, Lcom/dolby/daxappUI/ToggleSlideListener;->testXonOtherHalf(F)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/ToggleSlideListener;->onDetected(Landroid/view/View;)V

    :cond_1
    iget-boolean v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mDetected:Z

    return v2

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mDetected:Z

    if-eqz v2, :cond_4

    return v4

    :cond_4
    const/4 v2, 0x2

    if-ne v2, v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-boolean v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mRight:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mStartX:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    iput v1, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mStartX:F

    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/dolby/daxappUI/ToggleSlideListener;->testXonOtherHalf(F)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/ToggleSlideListener;->onDetected(Landroid/view/View;)V

    :cond_6
    :goto_2
    iget-boolean v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mDetected:Z

    return v2

    :cond_7
    iget v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mStartX:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    iput v1, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mStartX:F

    goto :goto_1

    :cond_8
    iget-boolean v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mRight:Z

    iget v5, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mStartX:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_9

    :goto_3
    if-ne v2, v4, :cond_6

    iget v2, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mStartX:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/dolby/daxappUI/ToggleSlideListener;->mMinDist:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/ToggleSlideListener;->onDetected(Landroid/view/View;)V

    goto :goto_2

    :cond_9
    move v4, v3

    goto :goto_3
.end method

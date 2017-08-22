.class public Lcom/dolby/daxappUI/ExploreDolbyAtmos;
.super Landroid/app/Activity;
.source "ExploreDolbyAtmos.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAnimateDuring:I

.field private mBtnControlInitY:I

.field private mDownimgHeight:I

.field private mDownimgOldTouhDownY:I

.field private mDownimgTouchDownY:I

.field private mExperienceDolbyMaxDistanceRatio:D

.field private mExperienceDolbyY:I

.field private mExploreAtmosLogoY:I

.field private mExploreAtmosMaxDistanceRatio:D

.field private mRollbackDisance:I

.field private mScreenHeight:I

.field private mUpImgAtTop:Z

.field private mUpimgHeight:I

.field private mUpimgOldTouhDownY:I

.field private mUpimgTouchDownY:I

.field private screenTopD:I

.field private scrollExperienceMaxDistance:I

.field private tag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    return v0
.end method

.method static synthetic -get1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    return v0
.end method

.method static synthetic -get10(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    return v0
.end method

.method static synthetic -get11(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    return v0
.end method

.method static synthetic -get12(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgOldTouhDownY:I

    return v0
.end method

.method static synthetic -get13(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgTouchDownY:I

    return v0
.end method

.method static synthetic -get2(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgOldTouhDownY:I

    return v0
.end method

.method static synthetic -get3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgTouchDownY:I

    return v0
.end method

.method static synthetic -get4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D
    .locals 2

    iget-wide v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyMaxDistanceRatio:D

    return-wide v0
.end method

.method static synthetic -get5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    return v0
.end method

.method static synthetic -get6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    return v0
.end method

.method static synthetic -get7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)D
    .locals 2

    iget-wide v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosMaxDistanceRatio:D

    return-wide v0
.end method

.method static synthetic -get8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mRollbackDisance:I

    return v0
.end method

.method static synthetic -get9(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    return v0
.end method

.method static synthetic -set0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I
    .locals 0

    iput p1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    return p1
.end method

.method static synthetic -set1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I
    .locals 0

    iput p1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgOldTouhDownY:I

    return p1
.end method

.method static synthetic -set2(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I
    .locals 0

    iput p1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgTouchDownY:I

    return p1
.end method

.method static synthetic -set3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    return p1
.end method

.method static synthetic -set4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I
    .locals 0

    iput p1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgOldTouhDownY:I

    return p1
.end method

.method static synthetic -set5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;I)I
    .locals 0

    iput p1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgTouchDownY:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->controlBtnControlImg(FII)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->controlDownimgAnimate(FII)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->controlExperienceDolby(FII)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->controlExploreAtmosAccess(FII)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->controlExploreAtmosLogo(FII)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->controlLearnMore(FII)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->controlTxtDownRemark(FII)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->controlTxtUpRemark(FII)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/dolby/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->controlUpimgAnimate(FII)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, "ExploreDolbyAtmos"

    iput-object v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    iput v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgTouchDownY:I

    iput v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iput v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgOldTouhDownY:I

    iput v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgTouchDownY:I

    iput v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iput v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgOldTouhDownY:I

    iput v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mRollbackDisance:I

    iput-boolean v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    iput v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    const-wide v0, 0x3fe199999999999aL    # 0.55

    iput-wide v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosMaxDistanceRatio:D

    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyMaxDistanceRatio:D

    const/16 v0, 0xf0

    iput v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    return-void
.end method

.method private controlBtnControlImg(FII)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    iget v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v6, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v7, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    sub-int/2addr v6, v7

    sub-int v4, v5, v6

    const v5, 0x7f0c0005

    invoke-virtual {p0, v5}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-ne p3, v11, :cond_1

    if-nez p2, :cond_0

    new-array v5, v10, [I

    int-to-float v6, v4

    mul-float/2addr v6, p1

    iget v7, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    sub-int/2addr v7, v4

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v5, v9

    iget v6, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    sub-int/2addr v6, v4

    aput v6, v5, v11

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v5, Lcom/dolby/daxappUI/ExploreDolbyAtmos$14;

    invoke-direct {v5, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$14;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    new-array v5, v10, [I

    int-to-float v6, v4

    mul-float/2addr v6, p1

    iget v7, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    sub-int/2addr v7, v4

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v5, v9

    iget v6, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    aput v6, v5, v11

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v5, Lcom/dolby/daxappUI/ExploreDolbyAtmos$15;

    invoke-direct {v5, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$15;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string/jumbo v5, "rotationX"

    new-array v6, v10, [F

    fill-array-data v6, :array_0

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    new-array v5, v10, [I

    iget v6, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    int-to-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v7, p1

    sub-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v5, v9

    iget v6, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    aput v6, v5, v11

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v5, Lcom/dolby/daxappUI/ExploreDolbyAtmos$16;

    invoke-direct {v5, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$16;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    :cond_2
    new-array v5, v10, [I

    iget v6, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    int-to-float v7, v4

    mul-float/2addr v7, p1

    float-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v5, v9

    iget v6, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    sub-int/2addr v6, v4

    aput v6, v5, v11

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v5, Lcom/dolby/daxappUI/ExploreDolbyAtmos$17;

    invoke-direct {v5, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$17;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string/jumbo v5, "rotationX"

    new-array v6, v10, [F

    fill-array-data v6, :array_1

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method private controlDownimgAnimate(FII)V
    .locals 9

    const/4 v1, 0x2

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p3, v7, :cond_1

    if-nez p2, :cond_0

    new-array v1, v1, [I

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v6

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v2, v3

    aput v2, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$10;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$10;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    new-array v1, v1, [I

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v6

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    aput v2, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$11;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$11;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    new-array v1, v1, [I

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v6

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    aput v2, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$12;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$12;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    new-array v1, v1, [I

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    sub-int/2addr v2, v3

    aput v2, v1, v6

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v2, v3

    aput v2, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$13;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$13;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0
.end method

.method private controlExperienceDolby(FII)V
    .locals 8

    const/4 v2, 0x2

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->scrollExperienceMaxDistance:I

    if-ne p3, v6, :cond_1

    if-nez p2, :cond_0

    new-array v2, v2, [I

    int-to-float v3, v1

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v5

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    sub-int/2addr v3, v1

    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/dolby/daxappUI/ExploreDolbyAtmos$22;

    invoke-direct {v2, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$22;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    new-array v2, v2, [I

    int-to-float v3, v1

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v5

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/dolby/daxappUI/ExploreDolbyAtmos$23;

    invoke-direct {v2, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$23;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    new-array v2, v2, [I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    int-to-float v3, v3

    int-to-float v4, v1

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v5

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/dolby/daxappUI/ExploreDolbyAtmos$24;

    invoke-direct {v2, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$24;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    new-array v2, v2, [I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    int-to-float v4, v1

    mul-float/2addr v4, p1

    float-to-int v4, v4

    sub-int/2addr v3, v4

    aput v3, v2, v5

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    sub-int/2addr v3, v1

    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/dolby/daxappUI/ExploreDolbyAtmos$25;

    invoke-direct {v2, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$25;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0
.end method

.method private controlExploreAtmosAccess(FII)V
    .locals 7

    const/4 v1, 0x2

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p3, v4, :cond_1

    if-nez p2, :cond_0

    new-array v1, v1, [F

    sub-float v2, v5, p1

    aput v2, v1, v3

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$38;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$38;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    new-array v1, v1, [F

    sub-float v2, v5, p1

    aput v2, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$39;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$39;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    new-array v1, v1, [F

    aput p1, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$40;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$40;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    new-array v1, v1, [F

    aput p1, v1, v3

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$41;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$41;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private controlExploreAtmosLogo(FII)V
    .locals 10

    const v3, 0x7f0c0006

    invoke-virtual {p0, v3}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    int-to-double v4, v3

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v6, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v3, v6

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-double v6, v3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v2, v4

    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    if-nez p2, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    int-to-float v4, v2

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    sub-int/2addr v4, v2

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/dolby/daxappUI/ExploreDolbyAtmos$18;

    invoke-direct {v3, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$18;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    int-to-float v4, v2

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/dolby/daxappUI/ExploreDolbyAtmos$19;

    invoke-direct {v3, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$19;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    int-to-float v4, v4

    int-to-float v5, v2

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/dolby/daxappUI/ExploreDolbyAtmos$20;

    invoke-direct {v3, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$20;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    int-to-float v5, v2

    mul-float/2addr v5, p1

    float-to-int v5, v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    sub-int/2addr v4, v2

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/dolby/daxappUI/ExploreDolbyAtmos$21;

    invoke-direct {v3, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$21;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0
.end method

.method private controlLearnMore(FII)V
    .locals 7

    const/4 v1, 0x2

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p3, v4, :cond_1

    if-nez p2, :cond_0

    new-array v1, v1, [F

    aput p1, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$34;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$34;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    new-array v1, v1, [F

    aput p1, v1, v3

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$35;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$35;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    new-array v1, v1, [F

    sub-float v2, v5, p1

    aput v2, v1, v3

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$36;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$36;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    new-array v1, v1, [F

    sub-float v2, v5, p1

    aput v2, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$37;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$37;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private controlTxtDownRemark(FII)V
    .locals 7

    const/4 v1, 0x2

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p3, v4, :cond_1

    if-nez p2, :cond_0

    new-array v1, v1, [F

    sub-float v2, v5, p1

    aput v2, v1, v3

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$30;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$30;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    new-array v1, v1, [F

    sub-float v2, v5, p1

    aput v2, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$31;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$31;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    new-array v1, v1, [F

    aput p1, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$32;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$32;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    new-array v1, v1, [F

    aput p1, v1, v3

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$33;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$33;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private controlTxtUpRemark(FII)V
    .locals 7

    const/4 v1, 0x2

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p3, v4, :cond_1

    if-nez p2, :cond_0

    new-array v1, v1, [F

    aput p1, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$26;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$26;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    new-array v1, v1, [F

    aput p1, v1, v3

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$27;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$27;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    new-array v1, v1, [F

    sub-float v2, v5, p1

    aput v2, v1, v3

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$28;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$28;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    new-array v1, v1, [F

    sub-float v2, v5, p1

    aput v2, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$29;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$29;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private controlUpimgAnimate(FII)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    const-string/jumbo v2, "controlUpimgAnimate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "controlUpimgAnimate percent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " orient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-ne p3, v6, :cond_1

    if-nez p2, :cond_0

    new-array v1, v4, [I

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    sub-float v3, v8, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v5

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    neg-int v2, v2

    aput v2, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$6;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$6;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v6, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    :goto_0
    return-void

    :cond_0
    new-array v1, v4, [I

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    sub-float v3, v8, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v5

    aput v5, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$7;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$7;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    new-array v1, v4, [I

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    aput v2, v1, v5

    aput v5, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$8;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$8;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    goto :goto_0

    :cond_2
    new-array v1, v4, [I

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    aput v2, v1, v5

    iget v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v3, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v4, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    neg-int v2, v2

    aput v2, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos$9;

    invoke-direct {v1, p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$9;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v6, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public changeScale()V
    .locals 4

    invoke-virtual {p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/16 v2, 0x5a

    iput v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mRollbackDisance:I

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x78

    iput v2, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mRollbackDisance:I

    goto :goto_0
.end method

.method public changeScaleFont()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v2, v2

    const/high16 v3, 0x44480000    # 800.0f

    div-float/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void

    :cond_0
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x168

    if-lt v2, v3, :cond_1

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string/jumbo v53, "onCreate"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->changeScale()V

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->changeScaleFont()V

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getActionBar()Landroid/app/ActionBar;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/app/ActionBar;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance v41, Landroid/util/TypedValue;

    invoke-direct/range {v41 .. v41}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v52

    const v53, 0x10102eb

    const/16 v54, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v53

    move-object/from16 v2, v41

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v52

    if-eqz v52, :cond_0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v52, v0

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getBaseContext()Landroid/content/Context;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    :cond_0
    const v52, 0x7f030002

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v52

    const-string/jumbo v53, "fonts/DolbyGustan-Book.otf"

    invoke-static/range {v52 .. v53}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v52

    const-string/jumbo v53, "fonts/DolbyGustan-Light.otf"

    invoke-static/range {v52 .. v53}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v52

    const-string/jumbo v53, "fonts/DolbyGustan-Medium.otf"

    invoke-static/range {v52 .. v53}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    const v52, 0x7f0c0007

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v52, 0x7f0c0009

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v52, 0x7f0c000b

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/TextView;

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v52, 0x7f0c000d

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v52

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v52, "el"

    move-object/from16 v0, v31

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_1

    const-string/jumbo v52, "el_GR"

    move-object/from16 v0, v31

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_3

    :cond_1
    :goto_0
    const v52, 0x7f0c000e

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/TextView;

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v52, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const v52, 0x7f0c0010

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v52, 0x7f0c000f

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const/16 v52, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const v52, 0x7f0c0003

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/ImageView;

    const v52, 0x7f0c0004

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    new-instance v33, Landroid/util/DisplayMetrics;

    invoke-direct/range {v33 .. v33}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v38, v0

    new-instance v35, Landroid/graphics/Rect;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getWindow()Landroid/view/Window;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/16 v37, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getBaseContext()Landroid/content/Context;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const-string/jumbo v53, "status_bar_height"

    const-string/jumbo v54, "dimen"

    const-string/jumbo v55, "android"

    invoke-virtual/range {v52 .. v55}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    if-lez v36, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getBaseContext()Landroid/content/Context;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v37

    :cond_2
    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    sub-int v52, v52, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    move/from16 v53, v0

    sub-int v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-double v0, v0

    move-wide/from16 v52, v0

    const-wide v54, 0x3fe999999999999aL    # 0.8

    mul-double v52, v52, v54

    move-wide/from16 v0, v52

    double-to-int v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-double v0, v0

    move-wide/from16 v52, v0

    const-wide v54, 0x3fe999999999999aL    # 0.8

    mul-double v52, v52, v54

    move-wide/from16 v0, v52

    double-to-int v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    const/16 v52, 0x0

    const/16 v53, 0x0

    invoke-static/range {v52 .. v53}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v51

    const/16 v52, 0x0

    const/16 v53, 0x0

    invoke-static/range {v52 .. v53}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move-object/from16 v0, v47

    move/from16 v1, v51

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v26

    const v52, 0x7f0c000a

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v48

    check-cast v48, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v48

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x41a00000    # 20.0f

    mul-float v53, v53, v38

    sub-float v52, v52, v53

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v53, v0

    sub-float v52, v52, v53

    move/from16 v0, v52

    float-to-int v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v34

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v42

    move/from16 v1, v51

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v27

    const v52, 0x7f0c0006

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v34

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x41f00000    # 30.0f

    mul-float v53, v53, v38

    sub-float v52, v52, v53

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v53, v0

    sub-float v52, v52, v53

    move/from16 v0, v52

    float-to-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v52, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v53, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v54, v0

    move-object/from16 v0, v24

    move/from16 v1, v52

    move/from16 v2, v39

    move/from16 v3, v53

    move/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    move-object/from16 v0, v23

    move/from16 v1, v51

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    move/from16 v55, v0

    sub-int v54, v54, v55

    sub-int v54, v54, v28

    move/from16 v0, v54

    int-to-double v0, v0

    move-wide/from16 v54, v0

    const-wide/high16 v56, 0x3fe0000000000000L    # 0.5

    mul-double v54, v54, v56

    sub-double v52, v52, v54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    move/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    move/from16 v56, v0

    sub-int v55, v55, v56

    sub-int v54, v54, v55

    move/from16 v0, v54

    int-to-double v0, v0

    move-wide/from16 v54, v0

    div-double v52, v52, v54

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExploreAtmosMaxDistanceRatio:D

    move-object/from16 v0, v45

    move/from16 v1, v51

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual/range {v45 .. v45}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v29

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v45 .. v45}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x41a00000    # 20.0f

    mul-float v53, v53, v38

    sub-float v52, v52, v53

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v53, v0

    sub-float v52, v52, v53

    move/from16 v0, v52

    float-to-int v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v44

    move/from16 v1, v51

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v30

    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    move/from16 v55, v0

    sub-int v54, v54, v55

    sub-int v54, v54, v30

    move/from16 v0, v54

    int-to-double v0, v0

    move-wide/from16 v54, v0

    const-wide/high16 v56, 0x3fe0000000000000L    # 0.5

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v0, v52

    double-to-int v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v44

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v53, v0

    sub-int v53, v53, v30

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const/high16 v54, 0x41f00000    # 30.0f

    mul-float v54, v54, v38

    sub-float v53, v53, v54

    sub-float v52, v52, v53

    move/from16 v0, v52

    float-to-int v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->scrollExperienceMaxDistance:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->scrollExperienceMaxDistance:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    move/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    move/from16 v56, v0

    sub-int v55, v55, v56

    sub-int v54, v54, v55

    move/from16 v0, v54

    int-to-double v0, v0

    move-wide/from16 v54, v0

    div-double v52, v52, v54

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyMaxDistanceRatio:D

    new-instance v50, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    move/from16 v52, v0

    const/16 v53, -0x1

    move-object/from16 v0, v50

    move/from16 v1, v53

    move/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    move/from16 v52, v0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual/range {v49 .. v50}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    move/from16 v52, v0

    const/16 v53, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v53

    move/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    move/from16 v52, v0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v53

    move/from16 v2, v52

    move/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f02000b

    invoke-static/range {v52 .. v53}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    move/from16 v52, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v53

    div-int/lit8 v53, v53, 0x2

    sub-int v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v52

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v53

    move/from16 v0, v52

    move/from16 v1, v53

    invoke-direct {v8, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v52, 0x7f0c0005

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v52, v0

    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v53, v0

    sub-int v52, v52, v53

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v53

    sub-int v52, v52, v53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    move/from16 v53, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v54, v0

    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v55, v0

    sub-int v54, v54, v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    move/from16 v55, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    move/from16 v0, v52

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v52, v0

    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v53, v0

    sub-int v52, v52, v53

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v53

    sub-int v52, v52, v53

    move/from16 v0, v52

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v52, 0x7f0c000c

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    new-instance v52, Lcom/dolby/daxappUI/ExploreDolbyAtmos$1;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$1;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    move-object/from16 v0, v52

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v52, 0x7f0c0011

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    new-instance v52, Lcom/dolby/daxappUI/ExploreDolbyAtmos$2;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$2;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v52, Lcom/dolby/daxappUI/ExploreDolbyAtmos$3;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$3;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v52, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$4;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v52, Lcom/dolby/daxappUI/ExploreDolbyAtmos$5;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos$5;-><init>(Lcom/dolby/daxappUI/ExploreDolbyAtmos;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_3
    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->finish()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    const-string/jumbo v6, "onResume"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const v5, 0x7f0c000f

    invoke-virtual {p0, v5}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v5, 0x7f0c000a

    invoke-virtual {p0, v5}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v5, 0x7f0c0009

    invoke-virtual {p0, v5}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0c000e

    invoke-virtual {p0, v5}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0c0005

    invoke-virtual {p0, v5}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    if-eqz v5, :cond_4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_3
    if-eqz v0, :cond_4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v7, v5, v6}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->controlBtnControlImg(FII)V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    const-string/jumbo v2, "onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "UPIMGTOP"

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/dolby/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.class public Lcom/dolby/daxappUI/ViewTools;
.super Ljava/lang/Object;
.source "ViewTools.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineNativeViewContainer(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 4

    const/4 v3, -0x2

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v1}, Lcom/dolby/daxappUI/ViewTools;->removeFromParent(Landroid/view/View;)V

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getRelativePosition(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/graphics/Point;
    .locals 5

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p1, :cond_2

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static showTooltip(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 14

    move-object/from16 v0, p2

    invoke-static {v0, p1}, Lcom/dolby/daxappUI/ViewTools;->getRelativePosition(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/graphics/Point;

    move-result-object v5

    iget v1, v5, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    iput v1, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v7, 0x7f030011

    const/4 v13, 0x0

    invoke-virtual {v1, v7, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const v1, 0x7f0c0038

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v1, 0x7f0c0049

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v1, 0x7f0c004a

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v1, 0x7f0c004b

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f060032

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v11}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    sget-object v1, Lcom/dolby/daxappUI/Assets$FontType;->REGULAR:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static {v1}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v1, Lcom/dolby/daxappUI/Assets$FontType;->REGULAR:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static {v1}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v5, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x3

    if-gt v1, v10, :cond_1

    const/4 v1, 0x3

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v7, -0x1

    invoke-direct {v9, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v6, v9}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    new-instance v1, Lcom/dolby/daxappUI/ViewTools$1;

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/dolby/daxappUI/ViewTools$1;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Point;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {v13, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v1, Lcom/dolby/daxappUI/ViewTools$2;

    invoke-direct {v1, v6}, Lcom/dolby/daxappUI/ViewTools$2;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v6

    :cond_1
    iget v1, v5, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v7, v10, 0x2

    if-lt v1, v7, :cond_2

    const/4 v1, 0x5

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method public static testDrawableState([I[I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_0

    aget v4, p1, v1

    aget v5, p0, v2

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_3

    const/4 v3, 0x0

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

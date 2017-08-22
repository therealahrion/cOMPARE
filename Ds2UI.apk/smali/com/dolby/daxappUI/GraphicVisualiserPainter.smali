.class public Lcom/dolby/daxappUI/GraphicVisualiserPainter;
.super Ljava/lang/Object;
.source "GraphicVisualiserPainter.java"


# instance fields
.field private final barLock:Ljava/lang/Object;

.field private final mBarBlue:Landroid/graphics/drawable/BitmapDrawable;

.field private final mBarBlueLight:Landroid/graphics/drawable/BitmapDrawable;

.field private final mBarEmpty:Landroid/graphics/drawable/BitmapDrawable;

.field private final mBarRed:Landroid/graphics/drawable/BitmapDrawable;

.field private final mBarYellow:Landroid/graphics/drawable/BitmapDrawable;

.field private final mBg:Landroid/graphics/drawable/BitmapDrawable;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mExcitations:[F

.field private final mGains:[F

.field private final mGainsUser:[F

.field private mHeight:I

.field private mScaledBarBlue:Landroid/graphics/Bitmap;

.field private mScaledBarBlueLight:Landroid/graphics/Bitmap;

.field private mScaledBarEmpty:Landroid/graphics/Bitmap;

.field private mScaledBarRed:Landroid/graphics/Bitmap;

.field private mScaledBarYellow:Landroid/graphics/Bitmap;

.field private mScaledBg:Landroid/graphics/Bitmap;

.field private final mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolby/daxappUI/GraphicVisualiser;[F[F)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x14

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mExcitations:[F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mEnabled:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->barLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    iput-object p3, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mGains:[F

    iput-object p4, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mGainsUser:[F

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020027

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBg:Landroid/graphics/drawable/BitmapDrawable;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBarEmpty:Landroid/graphics/drawable/BitmapDrawable;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBarBlue:Landroid/graphics/drawable/BitmapDrawable;

    const v1, 0x7f020041

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBarYellow:Landroid/graphics/drawable/BitmapDrawable;

    const v1, 0x7f020040

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBarRed:Landroid/graphics/drawable/BitmapDrawable;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBarBlueLight:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method private static convertValue(FF)F
    .locals 4

    const/high16 v2, -0x3ec00000    # -12.0f

    sub-float v0, p0, v2

    mul-float v2, v0, p1

    const/high16 v3, 0x42400000    # 48.0f

    div-float v1, v2, v3

    float-to-int v2, v1

    int-to-float v2, v2

    return v2
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->barLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    iget-boolean v0, v1, Lcom/dolby/daxappUI/GraphicVisualiser;->mSuspended:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mGainsUser:[F

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    monitor-exit v21

    return-void

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mGains:[F

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v21

    throw v1

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mEnabled:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mHeight:I

    sub-int v16, v1, v7

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x1000000

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mWidth:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v9, v1, 0x14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mHeight:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v8, v1, 0x30

    const/4 v11, 0x0

    :goto_2
    const/16 v1, 0x14

    if-ge v11, v1, :cond_10

    mul-int v1, v9, v11

    add-int/lit8 v19, v1, 0x1

    add-int/lit8 v1, v19, -0x1

    int-to-float v2, v1

    const/4 v3, 0x0

    add-int/lit8 v1, v19, -0x1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mHeight:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mExcitations:[F

    aget v1, v1, v11

    const/high16 v2, 0x423c0000    # 47.0f

    invoke-static {v1, v2}, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->convertValue(FF)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v13, v1

    const/16 v17, 0x0

    :goto_3
    const/16 v1, 0x30

    move/from16 v0, v17

    if-ge v0, v1, :cond_e

    mul-int v1, v8, v17

    add-int/lit8 v20, v1, 0x1

    if-nez v11, :cond_5

    const/4 v2, 0x0

    add-int/lit8 v1, v20, -0x1

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mWidth:I

    int-to-float v4, v1

    add-int/lit8 v1, v20, -0x1

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    if-eqz v12, :cond_6

    if-eqz v18, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    :goto_4
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_7
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_8
    rsub-int/lit8 v1, v17, 0x2f

    if-lt v13, v1, :cond_9

    const/16 v1, 0x2f

    if-le v13, v1, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_a
    const/16 v1, 0xc

    move/from16 v0, v17

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarRed:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_b
    const/16 v1, 0x12

    move/from16 v0, v17

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarYellow:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlue:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_d
    move/from16 v0, v19

    int-to-float v1, v0

    move/from16 v0, v20

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_e
    if-eqz v12, :cond_f

    aget v1, v15, v11

    move/from16 v0, v16

    int-to-float v2, v0

    invoke-static {v1, v2}, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->convertValue(FF)F

    move-result v1

    div-int/lit8 v2, v7, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    move/from16 v0, v19

    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mHeight:I

    sub-int/2addr v3, v7

    sub-int/2addr v3, v14

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_10
    monitor-exit v21

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->barLock:Ljava/lang/Object;

    monitor-enter v3

    add-int/lit8 v2, p1, -0x1

    :try_start_0
    div-int/lit8 v2, v2, 0x14

    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x30

    add-int/lit8 v0, v2, -0x1

    if-lez v1, :cond_6

    if-lez v0, :cond_6

    iput p1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mWidth:I

    iput p2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mHeight:I

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlue:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlue:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlue:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarYellow:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarYellow:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarYellow:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarRed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarRed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarRed:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBg:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget v4, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mWidth:I

    const/4 v5, 0x1

    invoke-static {v2, v4, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBarEmpty:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBarBlue:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlue:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBarYellow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarYellow:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBarRed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarRed:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mBarBlueLight:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mEnabled:Z

    return-void
.end method

.method public setExcitations([F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mExcitations:[F

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->mExcitations:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

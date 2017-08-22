.class public Lcom/dolby/daxappUI/GraphicVisualiser;
.super Landroid/view/SurfaceView;
.source "GraphicVisualiser.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/daxappUI/GraphicVisualiser$1;
    }
.end annotation


# static fields
.field private static final PAINT_HANDLER:Landroid/os/Handler;


# instance fields
.field private final mCanvasPaint:Ljava/lang/Runnable;

.field public mEnableEditTouch:Z

.field private mEqualizer:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

.field private mFragmentIsActive:Z

.field private final mGainsUi:[F

.field private final mGainsUserSmoothed:[F

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mPainter:Lcom/dolby/daxappUI/GraphicVisualiserPainter;

.field private mSufraceCreated:Z

.field public mSuspended:Z


# direct methods
.method static synthetic -get0()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/dolby/daxappUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/dolby/daxappUI/GraphicVisualiser;)Lcom/dolby/daxappUI/GraphicEqualizerPainter;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/dolby/daxappUI/GraphicVisualiser;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mFragmentIsActive:Z

    return v0
.end method

.method static synthetic -get3(Lcom/dolby/daxappUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic -get4(Lcom/dolby/daxappUI/GraphicVisualiser;)Lcom/dolby/daxappUI/GraphicVisualiserPainter;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mPainter:Lcom/dolby/daxappUI/GraphicVisualiserPainter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/dolby/daxappUI/GraphicVisualiser;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mSufraceCreated:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v3, "VisPaint"

    const/4 v4, -0x4

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    throw v1

    throw v1

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dolby/daxappUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mSuspended:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEnableEditTouch:Z

    iput-boolean v1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mFragmentIsActive:Z

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mGainsUi:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mGainsUserSmoothed:[F

    new-instance v0, Lcom/dolby/daxappUI/GraphicVisualiser$1;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/GraphicVisualiser$1;-><init>(Lcom/dolby/daxappUI/GraphicVisualiser;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/GraphicVisualiser;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/16 v2, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mSuspended:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEnableEditTouch:Z

    iput-boolean v1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mFragmentIsActive:Z

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mGainsUi:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mGainsUserSmoothed:[F

    new-instance v0, Lcom/dolby/daxappUI/GraphicVisualiser$1;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/GraphicVisualiser$1;-><init>(Lcom/dolby/daxappUI/GraphicVisualiser;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/GraphicVisualiser;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/16 v2, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mSuspended:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEnableEditTouch:Z

    iput-boolean v1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mFragmentIsActive:Z

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mGainsUi:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mGainsUserSmoothed:[F

    new-instance v0, Lcom/dolby/daxappUI/GraphicVisualiser$1;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/GraphicVisualiser$1;-><init>(Lcom/dolby/daxappUI/GraphicVisualiser;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/GraphicVisualiser;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/dolby/daxappUI/GraphicVisualiserPainter;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mGainsUi:[F

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mGainsUserSmoothed:[F

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/dolby/daxappUI/GraphicVisualiserPainter;-><init>(Landroid/content/Context;Lcom/dolby/daxappUI/GraphicVisualiser;[F[F)V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mPainter:Lcom/dolby/daxappUI/GraphicVisualiserPainter;

    new-instance v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mGainsUi:[F

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mGainsUserSmoothed:[F

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;-><init>(Landroid/content/Context;Lcom/dolby/daxappUI/GraphicVisualiser;[F[F)V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mPainter:Lcom/dolby/daxappUI/GraphicVisualiserPainter;

    invoke-virtual {v0, v3}, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-virtual {v0, v3}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/GraphicVisualiser;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/SurfaceView;->drawableStateChanged()V

    iget-boolean v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mSufraceCreated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/GraphicVisualiser;->getDrawableState()[I

    move-result-object v0

    sget-object v1, Lcom/dolby/daxappUI/GraphicVisualiser;->ENABLED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/dolby/daxappUI/ViewTools;->testDrawableState([I[I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolby/daxappUI/GraphicVisualiser;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mPainter:Lcom/dolby/daxappUI/GraphicVisualiserPainter;

    invoke-virtual {p0}, Lcom/dolby/daxappUI/GraphicVisualiser;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-virtual {p0}, Lcom/dolby/daxappUI/GraphicVisualiser;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->setEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolby/daxappUI/GraphicVisualiser;->repaint(Z)V

    return-void
.end method

.method public getEqualizer()Lcom/dolby/daxappUI/GraphicEqualizerPainter;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    return-object v0
.end method

.method isSurfaceCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mSufraceCreated:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    const-string/jumbo v0, "DsUI::MainActivity"

    const-string/jumbo v3, "GraphicVisualiser.onSizeChanged"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x14

    add-int/lit8 v7, v0, -0x1

    add-int/lit8 v0, p2, -0x1

    div-int/lit8 v0, v0, 0x30

    add-int/lit8 v6, v0, -0x1

    add-int/lit8 v0, v7, 0x1

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v6, 0x1

    mul-int/lit8 v0, v0, 0x30

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mPainter:Lcom/dolby/daxappUI/GraphicVisualiserPainter;

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-virtual {p0}, Lcom/dolby/daxappUI/GraphicVisualiser;->getHeight()I

    move-result v5

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->onSizeChanged(IIIII)V

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEnableEditTouch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-virtual {v0, p1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onVisualizerUpdate([F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mGainsUi:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public repaint()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolby/daxappUI/GraphicVisualiser;->repaint(Z)V

    return-void
.end method

.method public repaint(Z)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/dolby/daxappUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolby/daxappUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/dolby/daxappUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    sget-object v0, Lcom/dolby/daxappUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/dolby/daxappUI/GraphicVisualiser;->PAINT_HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mCanvasPaint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setActiveStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mFragmentIsActive:Z

    return-void
.end method

.method public setExcitations([F)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mPainter:Lcom/dolby/daxappUI/GraphicVisualiserPainter;

    invoke-virtual {v0, p1}, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->setExcitations([F)V

    return-void
.end method

.method public setSuspended(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mSuspended:Z

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-virtual {v0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->readUserGainsFromEngine()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    const-string/jumbo v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GraphicVisualiser.surfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mSufraceCreated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolby/daxappUI/GraphicVisualiser;->repaint(Z)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "DsUI::MainActivity"

    const-string/jumbo v1, "GraphicVisualiser.surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mSufraceCreated:Z

    invoke-virtual {p0, v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->repaint(Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string/jumbo v0, "DsUI::MainActivity"

    const-string/jumbo v1, "GraphicVisualiser.surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/GraphicVisualiser;->mSufraceCreated:Z

    return-void
.end method

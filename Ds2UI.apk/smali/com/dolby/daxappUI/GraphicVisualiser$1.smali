.class Lcom/dolby/daxappUI/GraphicVisualiser$1;
.super Ljava/lang/Object;
.source "GraphicVisualiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/daxappUI/GraphicVisualiser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/GraphicVisualiser;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/GraphicVisualiser;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/GraphicVisualiser$1;->this$0:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser$1;->this$0:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->-get5(Lcom/dolby/daxappUI/GraphicVisualiser;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser$1;->this$0:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->-get2(Lcom/dolby/daxappUI/GraphicVisualiser;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser$1;->this$0:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->-get3(Lcom/dolby/daxappUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser$1;->this$0:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->-get4(Lcom/dolby/daxappUI/GraphicVisualiser;)Lcom/dolby/daxappUI/GraphicVisualiserPainter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolby/daxappUI/GraphicVisualiserPainter;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser$1;->this$0:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->-get1(Lcom/dolby/daxappUI/GraphicVisualiser;)Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser$1;->this$0:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->-get3(Lcom/dolby/daxappUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser$1;->this$0:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->-get1(Lcom/dolby/daxappUI/GraphicVisualiser;)Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/dolby/daxappUI/GraphicVisualiser;->-get0()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/dolby/daxappUI/GraphicVisualiser;->-get0()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v2, "DsUI::MainActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicVisualiser$1;->this$0:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->-get3(Lcom/dolby/daxappUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_4

    :try_start_4
    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicVisualiser$1;->this$0:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-static {v3}, Lcom/dolby/daxappUI/GraphicVisualiser;->-get3(Lcom/dolby/daxappUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

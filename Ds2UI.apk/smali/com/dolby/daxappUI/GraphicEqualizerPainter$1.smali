.class Lcom/dolby/daxappUI/GraphicEqualizerPainter$1;
.super Ljava/lang/Object;
.source "GraphicEqualizerPainter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/daxappUI/GraphicEqualizerPainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$1;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$1;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->-wrap0(Lcom/dolby/daxappUI/GraphicEqualizerPainter;Z)V

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$1;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-static {v0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->-get2(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)Lcom/dolby/daxappUI/GraphicVisualiser;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/GraphicVisualiser;->repaint(Z)V

    return-void
.end method

.class Lcom/dolby/daxappUI/FragGraphicVisualizer$2;
.super Ljava/lang/Object;
.source "FragGraphicVisualizer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/FragGraphicVisualizer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/FragGraphicVisualizer;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/FragGraphicVisualizer;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer$2;->this$0:Lcom/dolby/daxappUI/FragGraphicVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer$2;->this$0:Lcom/dolby/daxappUI/FragGraphicVisualizer;

    invoke-static {v0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->-get1(Lcom/dolby/daxappUI/FragGraphicVisualizer;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer$2;->this$0:Lcom/dolby/daxappUI/FragGraphicVisualizer;

    invoke-static {v0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->-get0(Lcom/dolby/daxappUI/FragGraphicVisualizer;)Lcom/dolby/daxappUI/EqualizerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/daxappUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

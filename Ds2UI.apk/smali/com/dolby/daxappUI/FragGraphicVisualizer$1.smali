.class Lcom/dolby/daxappUI/FragGraphicVisualizer$1;
.super Ljava/lang/Object;
.source "FragGraphicVisualizer.java"

# interfaces
.implements Lcom/dolby/daxappUI/EqualizerAdapter$IPresetListener;


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

    iput-object p1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer$1;->this$0:Lcom/dolby/daxappUI/FragGraphicVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresetChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer$1;->this$0:Lcom/dolby/daxappUI/FragGraphicVisualizer;

    invoke-static {v0, p1}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->-wrap0(Lcom/dolby/daxappUI/FragGraphicVisualizer;I)V

    return-void
.end method

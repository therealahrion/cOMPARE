.class Lcom/dolby/daxappUI/FragEqualizerPresets$1;
.super Ljava/lang/Object;
.source "FragEqualizerPresets.java"

# interfaces
.implements Lcom/dolby/daxappUI/EqualizerAdapter$IPresetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/FragEqualizerPresets;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/FragEqualizerPresets;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/FragEqualizerPresets;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/FragEqualizerPresets$1;->this$0:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresetChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets$1;->this$0:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-static {v0, p1}, Lcom/dolby/daxappUI/FragEqualizerPresets;->-wrap0(Lcom/dolby/daxappUI/FragEqualizerPresets;I)V

    return-void
.end method

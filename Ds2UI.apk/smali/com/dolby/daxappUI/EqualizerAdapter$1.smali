.class Lcom/dolby/daxappUI/EqualizerAdapter$1;
.super Ljava/lang/Object;
.source "EqualizerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/daxappUI/EqualizerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/EqualizerAdapter;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/EqualizerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/EqualizerAdapter$1;->this$0:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter$1;->this$0:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v0}, Lcom/dolby/daxappUI/EqualizerAdapter;->notifyDataSetChanged()V

    return-void
.end method

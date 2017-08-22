.class Lcom/dolby/dax/service/DsVisualizerManager$1;
.super Ljava/lang/Object;
.source "DsVisualizerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/service/DsVisualizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/dax/service/DsVisualizerManager;


# direct methods
.method constructor <init>(Lcom/dolby/dax/service/DsVisualizerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/dax/service/DsVisualizerManager$1;->this$0:Lcom/dolby/dax/service/DsVisualizerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/service/DsVisualizerManager$1;->this$0:Lcom/dolby/dax/service/DsVisualizerManager;

    invoke-static {v0}, Lcom/dolby/dax/service/DsVisualizerManager;->-wrap0(Lcom/dolby/dax/service/DsVisualizerManager;)V

    return-void
.end method

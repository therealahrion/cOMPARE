.class public Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;
.super Ljava/lang/Object;
.source "SetVisualizerEnableCommand.java"


# instance fields
.field enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;->enabled:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/dolby/dax/dap/Dap;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [I

    iget-boolean v1, p0, Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;->enabled:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    aput v1, v0, v3

    invoke-interface {p1, v2, v0}, Lcom/dolby/dax/dap/Dap;->send(I[I)I

    move-result v1

    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;->enabled:Z

    return-void
.end method

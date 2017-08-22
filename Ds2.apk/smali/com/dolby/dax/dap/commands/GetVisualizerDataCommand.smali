.class public Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;
.super Ljava/lang/Object;
.source "GetVisualizerDataCommand.java"


# instance fields
.field private VISUALIZER_BAND_COUNT:I

.field private final excitations:[F

.field private final gains:[F

.field private final visualizerData:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->VISUALIZER_BAND_COUNT:I

    iget v0, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->VISUALIZER_BAND_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->visualizerData:[I

    iget v0, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->VISUALIZER_BAND_COUNT:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->gains:[F

    iget v0, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->VISUALIZER_BAND_COUNT:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->excitations:[F

    return-void
.end method


# virtual methods
.method public execute(Lcom/dolby/dax/dap/Dap;)I
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    iget-object v2, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->visualizerData:[I

    const/4 v3, 0x2

    invoke-interface {p1, v3, v2}, Lcom/dolby/dax/dap/Dap;->receive(I[I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->visualizerData:[I

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->VISUALIZER_BAND_COUNT:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->gains:[F

    iget-object v3, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->visualizerData:[I

    aget v3, v3, v0

    int-to-float v3, v3

    div-float/2addr v3, v5

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->VISUALIZER_BAND_COUNT:I

    :goto_1
    iget-object v2, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->visualizerData:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->excitations:[F

    iget v3, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->VISUALIZER_BAND_COUNT:I

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->visualizerData:[I

    aget v4, v4, v0

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public getExcitations()[F
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->excitations:[F

    return-object v0
.end method

.method public getGains()[F
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->gains:[F

    return-object v0
.end method

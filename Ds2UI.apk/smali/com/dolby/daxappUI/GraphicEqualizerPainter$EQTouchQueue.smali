.class Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;
.super Ljava/lang/Object;
.source "GraphicEqualizerPainter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/daxappUI/GraphicEqualizerPainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EQTouchQueue"
.end annotation


# instance fields
.field private final mBands:[I

.field private final mGains:[F

.field private mSize:I

.field final synthetic this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;


# direct methods
.method public constructor <init>(Lcom/dolby/daxappUI/GraphicEqualizerPainter;I)V
    .locals 1

    iput-object p1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    new-array v0, p2, [F

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    return-void
.end method


# virtual methods
.method public declared-synchronized add(IF)V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-static {v11}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->-get0(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-static {v11}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->-get0(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)I

    move-result v11

    sub-int v7, p1, v11

    const/4 v11, -0x1

    if-lt v7, v11, :cond_0

    const/4 v11, 0x1

    if-le v7, v11, :cond_7

    :cond_0
    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-static {v11}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->-get0(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)I

    move-result v12

    if-gez v7, :cond_2

    const/4 v11, -0x1

    :goto_0
    add-int/2addr v11, v12

    int-to-float v2, v11

    if-gez v7, :cond_3

    const/4 v11, 0x1

    :goto_1
    add-int/2addr v11, p1

    int-to-float v8, v11

    if-gez v7, :cond_4

    const/4 v11, -0x1

    :goto_2
    int-to-float v4, v11

    if-gez v7, :cond_5

    int-to-float v6, p1

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-static {v11}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->-get0(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)I

    move-result v11

    int-to-float v5, v11

    move/from16 v3, p2

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-static {v11}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->-get1(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)F

    move-result v11

    sub-float v10, v11, p2

    :goto_3
    sub-float v1, v5, v6

    move v0, v2

    :goto_4
    if-gez v7, :cond_6

    cmpl-float v11, v0, v8

    if-ltz v11, :cond_7

    :cond_1
    iget v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    iget-object v12, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    array-length v12, v12

    if-ge v11, v12, :cond_7

    sub-float v11, v0, v6

    mul-float/2addr v11, v10

    div-float/2addr v11, v1

    add-float v9, v3, v11

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    iget v12, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    float-to-int v13, v0

    aput v13, v11, v12

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    iget v12, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    aput v9, v11, v12

    iget v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-float/2addr v0, v4

    goto :goto_4

    :cond_2
    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    const/4 v11, -0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-static {v11}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->-get0(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)I

    move-result v11

    int-to-float v6, v11

    int-to-float v5, p1

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-static {v11}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->-get1(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)F

    move-result v3

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    invoke-static {v11}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->-get1(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)F

    move-result v11

    sub-float v10, p2, v11

    goto :goto_3

    :cond_6
    cmpg-float v11, v0, v8

    if-lez v11, :cond_1

    :cond_7
    iget v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    if-lez v11, :cond_8

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    iget v12, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    if-ne v11, p1, :cond_8

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    iget v12, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v12, v12, -0x1

    aput p2, v11, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    monitor-exit p0

    return-void

    :cond_8
    :try_start_1
    iget v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    iget-object v12, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    array-length v12, v12

    if-ge v11, v12, :cond_9

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    iget v12, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    aput p1, v11, v12

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    iget v12, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    aput p2, v11, v12

    iget v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_9
    :try_start_2
    const-string/jumbo v11, "GraphicEqualizerPainter"

    const-string/jumbo v12, "EQTouchQueue.add buffer overflow"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public declared-synchronized getBandAt(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGainAt(I)F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

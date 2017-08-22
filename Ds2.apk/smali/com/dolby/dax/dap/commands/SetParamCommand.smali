.class public Lcom/dolby/dax/dap/commands/SetParamCommand;
.super Ljava/lang/Object;
.source "SetParamCommand.java"


# instance fields
.field final buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

.field final byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field deviceId:I

.field numParameters:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Lcom/google/common/io/LittleEndianDataOutputStream;

    iget-object v2, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Lcom/google/common/io/LittleEndianDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {v1, p1}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    iget v2, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I

    invoke-virtual {v1, v2}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SetParamCommand"

    const-string/jumbo v2, "Unexpected exception from ByteArrayOutputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/dolby/dax/dap/DapParameter;I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    iget v2, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->deviceId:I

    invoke-virtual {v1, v2}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {p1}, Lcom/dolby/dax/dap/DapParameter;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {v1, p2}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SetParamCommand"

    const-string/jumbo v2, "Unexpected exception from ByteArrayOutputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public varargs add(Lcom/dolby/dax/dap/DapParameter;I[[I)V
    .locals 10

    const/4 v5, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    iget v6, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->deviceId:I

    invoke-virtual {v4, v6}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget-object v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {p1}, Lcom/dolby/dax/dap/DapParameter;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    const/4 v0, 0x1

    array-length v6, p3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, p3, v4

    array-length v7, v3

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {v4, v0}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget-object v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {v4, p2}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    array-length v7, p3

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v3, p3, v6

    array-length v8, v3

    move v4, v5

    :goto_2
    if-ge v4, v8, :cond_1

    aget v2, v3, v4

    iget-object v9, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {v9, v2}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SetParamCommand"

    const-string/jumbo v5, "Unexpected exception from ByteArrayOutputStream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public add(Lcom/dolby/dax/dap/DapParameter;[I)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    iget v3, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->deviceId:I

    invoke-virtual {v2, v3}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {p1}, Lcom/dolby/dax/dap/DapParameter;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    array-length v3, p2

    invoke-virtual {v2, v3}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p2, v2

    iget-object v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {v4, v1}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SetParamCommand"

    const-string/jumbo v3, "Unexpected exception from ByteArrayOutputStream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public varargs add(Lcom/dolby/dax/dap/DapParameter;[[I)V
    .locals 10

    const/4 v5, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    iget v6, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->deviceId:I

    invoke-virtual {v4, v6}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget-object v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {p1}, Lcom/dolby/dax/dap/DapParameter;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    array-length v6, p2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, p2, v4

    array-length v7, v3

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {v4, v0}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    array-length v7, p2

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v3, p2, v6

    array-length v8, v3

    move v4, v5

    :goto_2
    if-ge v4, v8, :cond_1

    aget v2, v3, v4

    iget-object v9, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->buffer:Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-virtual {v9, v2}, Lcom/google/common/io/LittleEndianDataOutputStream;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SetParamCommand"

    const-string/jumbo v5, "Unexpected exception from ByteArrayOutputStream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public execute(Lcom/dolby/dax/dap/Dap;)I
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->numParameters:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-interface {p1, v3, v1}, Lcom/dolby/dax/dap/Dap;->send(I[B)I

    move-result v1

    return v1
.end method

.method public setDeviceId(I)V
    .locals 0

    iput p1, p0, Lcom/dolby/dax/dap/commands/SetParamCommand;->deviceId:I

    return-void
.end method

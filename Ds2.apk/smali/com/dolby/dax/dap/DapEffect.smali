.class public Lcom/dolby/dax/dap/DapEffect;
.super Ljava/lang/Object;
.source "DapEffect.java"

# interfaces
.implements Lcom/dolby/dax/dap/Dap;


# static fields
.field public static final EFFECT_DS:Ljava/util/UUID;

.field public static final EFFECT_TYPE_DS:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID;


# instance fields
.field private AudioEffect_GetParameter_ByteArray:Ljava/lang/reflect/Method;

.field private AudioEffect_SetParameter_ByteArray:Ljava/lang/reflect/Method;

.field private audioEffect:Landroid/media/audiofx/AudioEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/dap/DapEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const-string/jumbo v0, "46d279d9-9be7-453d-9d7c-ef937f675587"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/dap/DapEffect;->EFFECT_TYPE_DS:Ljava/util/UUID;

    const-string/jumbo v0, "9d4921da-8225-4f29-aefa-39537a04bcaa"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/dap/DapEffect;->EFFECT_DS:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/dolby/dax/dap/DapEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    iput-object v2, p0, Lcom/dolby/dax/dap/DapEffect;->AudioEffect_SetParameter_ByteArray:Ljava/lang/reflect/Method;

    iput-object v2, p0, Lcom/dolby/dax/dap/DapEffect;->AudioEffect_GetParameter_ByteArray:Ljava/lang/reflect/Method;

    :try_start_0
    const-class v2, Landroid/media/audiofx/AudioEffect;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/util/UUID;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/util/UUID;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/dolby/dax/dap/DapEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/dolby/dax/dap/DapEffect;->EFFECT_DS:Ljava/util/UUID;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiofx/AudioEffect;

    iput-object v2, p0, Lcom/dolby/dax/dap/DapEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const-class v2, Landroid/media/audiofx/AudioEffect;

    const-string/jumbo v3, "setParameter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, [B

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/dax/dap/DapEffect;->AudioEffect_SetParameter_ByteArray:Ljava/lang/reflect/Method;

    const-class v2, Landroid/media/audiofx/AudioEffect;

    const-string/jumbo v3, "getParameter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, [B

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/dax/dap/DapEffect;->AudioEffect_GetParameter_ByteArray:Ljava/lang/reflect/Method;

    const-string/jumbo v2, "DapEffect"

    const-string/jumbo v3, "Created DAP AudioEffect successfully"

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DapEffect"

    const-string/jumbo v3, "Cannot instantiate DAP effect"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method


# virtual methods
.method public hasControl()Z
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/DapEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v0

    return v0
.end method

.method public receive(I[B)I
    .locals 8

    :try_start_0
    iget-object v3, p0, Lcom/dolby/dax/dap/DapEffect;->AudioEffect_GetParameter_ByteArray:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/dolby/dax/dap/DapEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    array-length v3, p2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DapEffect"

    const-string/jumbo v4, "Can not invoke getParameter method on AudioEffect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x5

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "DapEffect"

    const-string/jumbo v4, "AudioEffect instance is not controlling the effect"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x5

    goto :goto_0
.end method

.method public receive(I[I)I
    .locals 4

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/dolby/dax/dap/DapEffect;->receive(I[B)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    :cond_0
    return v1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/DapEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    return-void
.end method

.method public send(I[B)I
    .locals 8

    :try_start_0
    iget-object v3, p0, Lcom/dolby/dax/dap/DapEffect;->AudioEffect_SetParameter_ByteArray:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/dolby/dax/dap/DapEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DapEffect"

    const-string/jumbo v4, "Can not invoke setParameter method on AudioEffect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x5

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "DapEffect"

    const-string/jumbo v4, "AudioEffect instance is not controlling the effect"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x5

    goto :goto_0
.end method

.method public send(I[I)I
    .locals 2

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/dolby/dax/dap/DapEffect;->send(I[B)I

    move-result v1

    return v1
.end method

.method public setEnabled(Z)I
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/DapEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    return v0
.end method

.class public Lcom/dolby/dax/dap/commands/GetDapVersionCommand;
.super Ljava/lang/Object;
.source "GetDapVersionCommand.java"


# instance fields
.field dapVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/dolby/dax/dap/Dap;)I
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x10

    new-array v0, v4, [B

    const/4 v4, 0x3

    invoke-interface {p1, v4, v0}, Lcom/dolby/dax/dap/Dap;->receive(I[B)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/dolby/dax/dap/commands/GetDapVersionCommand;->dapVersion:Ljava/lang/String;

    :goto_0
    return v2

    :cond_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    iput-object v3, p0, Lcom/dolby/dax/dap/commands/GetDapVersionCommand;->dapVersion:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dolby/dax/dap/commands/GetDapVersionCommand;->dapVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDapVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/commands/GetDapVersionCommand;->dapVersion:Ljava/lang/String;

    return-object v0
.end method

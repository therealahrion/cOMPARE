.class public Lcom/dolby/dax/dap/translator/SimpleTranslator;
.super Ljava/lang/Object;
.source "SimpleTranslator.java"

# interfaces
.implements Lcom/dolby/dax/dap/translator/Translator;


# instance fields
.field final dstParam:Lcom/dolby/dax/dap/DapParameter;

.field final srcParam:[Lcom/dolby/dax/model/Parameter;


# direct methods
.method public constructor <init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/dap/translator/SimpleTranslator;->dstParam:Lcom/dolby/dax/dap/DapParameter;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dolby/dax/model/Parameter;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/dolby/dax/dap/translator/SimpleTranslator;->srcParam:[Lcom/dolby/dax/model/Parameter;

    return-void
.end method


# virtual methods
.method public dap1Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 3

    iget-object v0, p0, Lcom/dolby/dax/dap/translator/SimpleTranslator;->dstParam:Lcom/dolby/dax/dap/DapParameter;

    iget-object v1, p0, Lcom/dolby/dax/dap/translator/SimpleTranslator;->srcParam:[Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    return-void
.end method

.method public dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 3

    iget-object v0, p0, Lcom/dolby/dax/dap/translator/SimpleTranslator;->dstParam:Lcom/dolby/dax/dap/DapParameter;

    iget-object v1, p0, Lcom/dolby/dax/dap/translator/SimpleTranslator;->srcParam:[Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    return-void
.end method

.method public srcParams()[Lcom/dolby/dax/model/Parameter;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/translator/SimpleTranslator;->srcParam:[Lcom/dolby/dax/model/Parameter;

    return-object v0
.end method

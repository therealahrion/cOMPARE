.class public Lcom/dolby/dax/dap/translator/SurroundBoostTranslator;
.super Ljava/lang/Object;
.source "SurroundBoostTranslator.java"

# interfaces
.implements Lcom/dolby/dax/dap/translator/Translator;


# static fields
.field static final srcParams:[Lcom/dolby/dax/model/Parameter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dolby/dax/model/Parameter;

    sget-object v1, Lcom/dolby/dax/model/Parameter;->surround_boost:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/dax/dap/translator/SurroundBoostTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dap1Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/dolby/dax/model/Endpoint;->headphone:Lcom/dolby/dax/model/Endpoint;

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/dolby/dax/dap/DapParameter;->DAP1_DHSB:Lcom/dolby/dax/dap/DapParameter;

    sget-object v1, Lcom/dolby/dax/dap/translator/SurroundBoostTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolby/dax/dap/translator/SurroundBoostTranslator;->dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V

    return-void

    :cond_1
    sget-object v0, Lcom/dolby/dax/model/Endpoint;->speaker:Lcom/dolby/dax/model/Endpoint;

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/dolby/dax/dap/DapParameter;->DAP1_DSSB:Lcom/dolby/dax/dap/DapParameter;

    sget-object v1, Lcom/dolby/dax/dap/translator/SurroundBoostTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    goto :goto_0
.end method

.method public dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 3

    sget-object v0, Lcom/dolby/dax/dap/DapParameter;->DAP2_DSB:Lcom/dolby/dax/dap/DapParameter;

    sget-object v1, Lcom/dolby/dax/dap/translator/SurroundBoostTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    return-void
.end method

.method public srcParams()[Lcom/dolby/dax/model/Parameter;
    .locals 1

    sget-object v0, Lcom/dolby/dax/dap/translator/SurroundBoostTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    return-object v0
.end method

.class public Lcom/dolby/dax/dap/translator/AudioRegulatorTranslator;
.super Ljava/lang/Object;
.source "AudioRegulatorTranslator.java"

# interfaces
.implements Lcom/dolby/dax/dap/translator/Translator;


# static fields
.field static final srcParams:[Lcom/dolby/dax/model/Parameter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dolby/dax/model/Parameter;

    sget-object v1, Lcom/dolby/dax/model/Parameter;->regulator_frequency:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->regulator_isolated_band:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->regulator_threshold_high:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->regulator_threshold_low:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/dax/dap/translator/AudioRegulatorTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dap1Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 6

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_frequency:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v4}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_threshold_low:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v4}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_threshold_high:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v4}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_isolated_band:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v4}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v2

    sget-object v4, Lcom/dolby/dax/dap/DapParameter;->DAP1_ARNB:Lcom/dolby/dax/dap/DapParameter;

    array-length v5, v0

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;I)V

    sget-object v4, Lcom/dolby/dax/dap/DapParameter;->DAP1_ARBF:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v4, v0}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    sget-object v4, Lcom/dolby/dax/dap/DapParameter;->DAP1_ARBL:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v4, v3}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    sget-object v4, Lcom/dolby/dax/dap/DapParameter;->DAP1_ARBH:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v4, v1}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    sget-object v4, Lcom/dolby/dax/dap/DapParameter;->DAP1_ARBI:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v4, v2}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/dolby/dax/dap/translator/AudioRegulatorTranslator;->dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V

    return-void
.end method

.method public dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 8

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_frequency:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v4}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_threshold_low:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v4}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_threshold_high:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v4}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_isolated_band:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v4}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v2

    sget-object v4, Lcom/dolby/dax/dap/DapParameter;->DAP2_ARBS:Lcom/dolby/dax/dap/DapParameter;

    array-length v5, v0

    const/4 v6, 0x4

    new-array v6, v6, [[I

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    const/4 v7, 0x3

    aput-object v2, v6, v7

    invoke-virtual {p1, v4, v5, v6}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;I[[I)V

    return-void
.end method

.method public srcParams()[Lcom/dolby/dax/model/Parameter;
    .locals 1

    sget-object v0, Lcom/dolby/dax/dap/translator/AudioRegulatorTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    return-object v0
.end method

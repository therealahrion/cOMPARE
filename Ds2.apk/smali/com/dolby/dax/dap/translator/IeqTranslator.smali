.class public Lcom/dolby/dax/dap/translator/IeqTranslator;
.super Ljava/lang/Object;
.source "IeqTranslator.java"

# interfaces
.implements Lcom/dolby/dax/dap/translator/Translator;


# static fields
.field static final srcParams:[Lcom/dolby/dax/model/Parameter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolby/dax/model/Parameter;

    sget-object v1, Lcom/dolby/dax/model/Parameter;->ieq_frequency:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->ieq_target:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/dax/dap/translator/IeqTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dap1Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 4

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_frequency:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v2}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_target:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v2}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    sget-object v2, Lcom/dolby/dax/dap/DapParameter;->DAP1_IENB:Lcom/dolby/dax/dap/DapParameter;

    array-length v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;I)V

    sget-object v2, Lcom/dolby/dax/dap/DapParameter;->DAP1_IEBF:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v2, v0}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    sget-object v2, Lcom/dolby/dax/dap/DapParameter;->DAP1_IEBT:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v2, v1}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/dolby/dax/dap/translator/IeqTranslator;->dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V

    return-void
.end method

.method public dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 6

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_frequency:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v2}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_target:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v2}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    sget-object v2, Lcom/dolby/dax/dap/DapParameter;->DAP2_IEBS:Lcom/dolby/dax/dap/DapParameter;

    array-length v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [[I

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {p1, v2, v3, v4}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;I[[I)V

    return-void
.end method

.method public srcParams()[Lcom/dolby/dax/model/Parameter;
    .locals 1

    sget-object v0, Lcom/dolby/dax/dap/translator/IeqTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    return-object v0
.end method

.class public Lcom/dolby/dax/dap/translator/OutputModeTranslator;
.super Ljava/lang/Object;
.source "OutputModeTranslator.java"

# interfaces
.implements Lcom/dolby/dax/dap/translator/Translator;


# static fields
.field private static final synthetic -com-dolby-dax-model-EndpointSwitchesValues:[I

.field static final srcParams:[Lcom/dolby/dax/model/Parameter;


# direct methods
.method private static synthetic -getcom-dolby-dax-model-EndpointSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/dolby/dax/dap/translator/OutputModeTranslator;->-com-dolby-dax-model-EndpointSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolby/dax/dap/translator/OutputModeTranslator;->-com-dolby-dax-model-EndpointSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/dolby/dax/model/Endpoint;->values()[Lcom/dolby/dax/model/Endpoint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/dolby/dax/model/Endpoint;->headphone:Lcom/dolby/dax/model/Endpoint;

    invoke-virtual {v1}, Lcom/dolby/dax/model/Endpoint;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/dolby/dax/model/Endpoint;->other:Lcom/dolby/dax/model/Endpoint;

    invoke-virtual {v1}, Lcom/dolby/dax/model/Endpoint;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/dolby/dax/model/Endpoint;->passthrough:Lcom/dolby/dax/model/Endpoint;

    invoke-virtual {v1}, Lcom/dolby/dax/model/Endpoint;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/dolby/dax/model/Endpoint;->speaker:Lcom/dolby/dax/model/Endpoint;

    invoke-virtual {v1}, Lcom/dolby/dax/model/Endpoint;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/dolby/dax/dap/translator/OutputModeTranslator;->-com-dolby-dax-model-EndpointSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolby/dax/model/Parameter;

    sget-object v1, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->output_mix_matrix:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/dax/dap/translator/OutputModeTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

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

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/dolby/dax/dap/translator/OutputModeTranslator;->-getcom-dolby-dax-model-EndpointSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p3}, Lcom/dolby/dax/model/Endpoint;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v3, Lcom/dolby/dax/dap/DapParameter;->DAP1_ENDP:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v3, v5}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;I)V

    sget-object v3, Lcom/dolby/dax/dap/DapParameter;->DAP1_VDHE:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v3, v1}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;I)V

    sget-object v3, Lcom/dolby/dax/dap/DapParameter;->DAP1_VSPE:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v3, v2}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/dolby/dax/dap/translator/OutputModeTranslator;->dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V

    return-void

    :pswitch_1
    sget-object v3, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aget v2, v3, v5

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aget v1, v3, v5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x2

    const/4 v4, 0x0

    sget-object v5, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v5}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v5

    aget v5, v5, v7

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/dolby/dax/dap/translator/OutputModeTranslator;->-getcom-dolby-dax-model-EndpointSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p3}, Lcom/dolby/dax/model/Endpoint;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v5, Lcom/dolby/dax/model/Parameter;->output_mix_matrix:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v5}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    sget-object v5, Lcom/dolby/dax/dap/DapParameter;->DAP2_DOM:Lcom/dolby/dax/dap/DapParameter;

    const/4 v6, 0x1

    new-array v6, v6, [[I

    aput-object v3, v6, v7

    invoke-virtual {p1, v5, v4, v6}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;I[[I)V

    :goto_1
    return-void

    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/dolby/dax/dap/DapParameter;->DAP2_DOM:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v5, v4}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public srcParams()[Lcom/dolby/dax/model/Parameter;
    .locals 1

    sget-object v0, Lcom/dolby/dax/dap/translator/OutputModeTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    return-object v0
.end method

.class public Lcom/dolby/dax/dap/translator/AudioOptimizerTranslator;
.super Ljava/lang/Object;
.source "AudioOptimizerTranslator.java"

# interfaces
.implements Lcom/dolby/dax/dap/translator/Translator;


# static fields
.field static final srcParams:[Lcom/dolby/dax/model/Parameter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/dolby/dax/model/Parameter;

    sget-object v1, Lcom/dolby/dax/model/Parameter;->audio_optimizer_frequency:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_c:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_l:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_lfe:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_lrs:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_ls:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_r:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rrs:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rs:Lcom/dolby/dax/model/Parameter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_ltm:Lcom/dolby/dax/model/Parameter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rtm:Lcom/dolby/dax/model/Parameter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/dax/dap/translator/AudioOptimizerTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dap1Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 13

    const/4 v1, 0x2

    const/4 v5, 0x3

    const/4 v0, 0x4

    const/4 v2, 0x5

    const/4 v4, 0x7

    const/16 v7, 0x8

    const/16 v3, 0x9

    const/16 v6, 0xa

    sget-object v10, Lcom/dolby/dax/model/Parameter;->audio_optimizer_frequency:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v10}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v8

    const/16 v10, 0x10

    new-array v10, v10, [[I

    const/4 v11, 0x2

    invoke-static {v11}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    sget-object v11, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_l:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v11}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x3

    invoke-static {v11}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    sget-object v11, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_r:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v11}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    const/4 v11, 0x4

    invoke-static {v11}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v10, v12

    sget-object v11, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_c:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v11}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v10, v12

    const/4 v11, 0x5

    invoke-static {v11}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v11

    const/4 v12, 0x6

    aput-object v11, v10, v12

    sget-object v11, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_lfe:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v11}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v11

    const/4 v12, 0x7

    aput-object v11, v10, v12

    const/4 v11, 0x7

    invoke-static {v11}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v11

    const/16 v12, 0x8

    aput-object v11, v10, v12

    sget-object v11, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_ls:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v11}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v11

    const/16 v12, 0x9

    aput-object v11, v10, v12

    const/16 v11, 0x8

    invoke-static {v11}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v11

    const/16 v12, 0xa

    aput-object v11, v10, v12

    sget-object v11, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rs:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v11}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v11

    const/16 v12, 0xb

    aput-object v11, v10, v12

    const/16 v11, 0x9

    invoke-static {v11}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v11

    const/16 v12, 0xc

    aput-object v11, v10, v12

    sget-object v11, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_lrs:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v11}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v11

    const/16 v12, 0xd

    aput-object v11, v10, v12

    const/16 v11, 0xa

    invoke-static {v11}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v11

    const/16 v12, 0xe

    aput-object v11, v10, v12

    sget-object v11, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rrs:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v11}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v11

    const/16 v12, 0xf

    aput-object v11, v10, v12

    invoke-static {v10}, Lcom/google/common/primitives/Ints;->concat([[I)[I

    move-result-object v9

    sget-object v10, Lcom/dolby/dax/dap/DapParameter;->DAP1_AONB:Lcom/dolby/dax/dap/DapParameter;

    array-length v11, v8

    invoke-virtual {p1, v10, v11}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;I)V

    sget-object v10, Lcom/dolby/dax/dap/DapParameter;->DAP1_AOBF:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v10, v8}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    sget-object v10, Lcom/dolby/dax/dap/DapParameter;->DAP1_AOBG:Lcom/dolby/dax/dap/DapParameter;

    invoke-virtual {p1, v10, v9}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[I)V

    sget-object v10, Lcom/dolby/dax/dap/DapParameter;->DAP1_AOCC:Lcom/dolby/dax/dap/DapParameter;

    const/16 v11, 0x8

    invoke-virtual {p1, v10, v11}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;I)V

    invoke-virtual/range {p0 .. p3}, Lcom/dolby/dax/dap/translator/AudioOptimizerTranslator;->dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V

    return-void
.end method

.method public dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 10

    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_frequency:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v2}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    const/16 v2, 0xa

    new-array v2, v2, [[I

    sget-object v3, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_l:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_r:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_c:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aput-object v3, v2, v9

    sget-object v3, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_lfe:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_ls:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    sget-object v3, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_lrs:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rs:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    sget-object v3, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rrs:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    sget-object v3, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_ltm:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    sget-object v3, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rtm:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->concat([[I)[I

    move-result-object v1

    sget-object v2, Lcom/dolby/dax/dap/DapParameter;->DAP2_AOBS:Lcom/dolby/dax/dap/DapParameter;

    new-array v3, v5, [[I

    new-array v4, v9, [I

    array-length v5, v0

    aput v5, v4, v7

    array-length v5, v1

    array-length v6, v0

    div-int/2addr v5, v6

    aput v5, v4, v8

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    invoke-virtual {p1, v2, v3}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[[I)V

    return-void
.end method

.method public srcParams()[Lcom/dolby/dax/model/Parameter;
    .locals 1

    sget-object v0, Lcom/dolby/dax/dap/translator/AudioOptimizerTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    return-object v0
.end method

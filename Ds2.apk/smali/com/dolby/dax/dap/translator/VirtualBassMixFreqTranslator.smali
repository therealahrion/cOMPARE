.class public Lcom/dolby/dax/dap/translator/VirtualBassMixFreqTranslator;
.super Ljava/lang/Object;
.source "VirtualBassMixFreqTranslator.java"

# interfaces
.implements Lcom/dolby/dax/dap/translator/Translator;


# static fields
.field static final srcParams:[Lcom/dolby/dax/model/Parameter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolby/dax/model/Parameter;

    sget-object v1, Lcom/dolby/dax/model/Parameter;->virtual_bass_mix_freq_low:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Parameter;->virtual_bass_mix_freq_high:Lcom/dolby/dax/model/Parameter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/dax/dap/translator/VirtualBassMixFreqTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dap1Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 0

    return-void
.end method

.method public dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/dolby/dax/dap/DapParameter;->DAP2_VBMF:Lcom/dolby/dax/dap/DapParameter;

    const/4 v1, 0x2

    new-array v1, v1, [[I

    sget-object v2, Lcom/dolby/dax/dap/translator/VirtualBassMixFreqTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/dap/translator/VirtualBassMixFreqTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    aget-object v2, v2, v4

    invoke-virtual {p2, v2}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/dap/commands/SetParamCommand;->add(Lcom/dolby/dax/dap/DapParameter;[[I)V

    return-void
.end method

.method public srcParams()[Lcom/dolby/dax/model/Parameter;
    .locals 1

    sget-object v0, Lcom/dolby/dax/dap/translator/VirtualBassMixFreqTranslator;->srcParams:[Lcom/dolby/dax/model/Parameter;

    return-object v0
.end method

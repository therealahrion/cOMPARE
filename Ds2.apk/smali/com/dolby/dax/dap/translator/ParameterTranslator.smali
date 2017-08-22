.class public Lcom/dolby/dax/dap/translator/ParameterTranslator;
.super Ljava/lang/Object;
.source "ParameterTranslator.java"

# interfaces
.implements Lcom/dolby/dax/dap/translator/ParamChangeObserver;


# instance fields
.field final dapVersion:I

.field endpoint:Lcom/dolby/dax/model/Endpoint;

.field parameterValues:Lcom/dolby/dax/model/ParameterValues;

.field final pendingTranslations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/dap/translator/Translator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->dapVersion:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->pendingTranslations:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onParameterChanged(Lcom/dolby/dax/model/Parameter;)V
    .locals 2

    invoke-static {p1}, Lcom/dolby/dax/dap/translator/Translators;->get(Lcom/dolby/dax/model/Parameter;)Lcom/dolby/dax/dap/translator/Translator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->pendingTranslations:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setSource(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->parameterValues:Lcom/dolby/dax/model/ParameterValues;

    iput-object p2, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->endpoint:Lcom/dolby/dax/model/Endpoint;

    return-void
.end method

.method public translateAll(Lcom/dolby/dax/dap/commands/SetParamCommand;)V
    .locals 3

    iget-object v2, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->parameterValues:Lcom/dolby/dax/model/ParameterValues;

    invoke-virtual {v2}, Lcom/dolby/dax/model/ParameterValues;->getValidParams()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p0, v0}, Lcom/dolby/dax/dap/translator/ParameterTranslator;->onParameterChanged(Lcom/dolby/dax/model/Parameter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolby/dax/dap/translator/ParameterTranslator;->translatePending(Lcom/dolby/dax/dap/commands/SetParamCommand;)V

    return-void
.end method

.method public translatePending(Lcom/dolby/dax/dap/commands/SetParamCommand;)V
    .locals 4

    iget-object v2, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->pendingTranslations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/dap/translator/Translator;

    iget v2, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->dapVersion:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->parameterValues:Lcom/dolby/dax/model/ParameterValues;

    iget-object v3, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->endpoint:Lcom/dolby/dax/model/Endpoint;

    invoke-interface {v0, p1, v2, v3}, Lcom/dolby/dax/dap/translator/Translator;->dap1Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->parameterValues:Lcom/dolby/dax/model/ParameterValues;

    iget-object v3, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->endpoint:Lcom/dolby/dax/model/Endpoint;

    invoke-interface {v0, p1, v2, v3}, Lcom/dolby/dax/dap/translator/Translator;->dap2Translate(Lcom/dolby/dax/dap/commands/SetParamCommand;Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/dolby/dax/dap/translator/ParameterTranslator;->pendingTranslations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

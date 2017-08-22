.class public Lcom/dolby/dax/dap/ContentParameters;
.super Lcom/dolby/dax/model/ParameterValues;
.source "ContentParameters.java"


# static fields
.field public static final validParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field geqPreset:Lcom/dolby/dax/model/GeqPreset;

.field ieqPreset:Lcom/dolby/dax/model/IeqPreset;

.field paramChangeObserver:Lcom/dolby/dax/dap/translator/ParamChangeObserver;

.field profile:Lcom/dolby/dax/model/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/dolby/dax/model/Parameter;->geq_frequency:Lcom/dolby/dax/model/Parameter;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/dolby/dax/model/Parameter;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->geq_gain:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->graphic_equalizer_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_amount:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_frequency:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_target:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_dialog_enhancer_steering_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_dv_leveler_steering_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_ieq_steering_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_surround_compressor_steering_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_headphone_reverb_gain:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/dap/ContentParameters;->validParams:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/dolby/dax/dap/translator/ParamChangeObserver;)V
    .locals 1

    invoke-direct {p0}, Lcom/dolby/dax/model/ParameterValues;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/dap/ContentParameters;->paramChangeObserver:Lcom/dolby/dax/dap/translator/ParamChangeObserver;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/dolby/dax/dap/translator/ParamChangeObserver;->setSource(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V

    return-void
.end method


# virtual methods
.method public getValidParams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dolby/dax/dap/ContentParameters;->validParams:Ljava/util/Set;

    return-object v0
.end method

.method public setGeqPreset(Lcom/dolby/dax/model/GeqPreset;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/dax/dap/ContentParameters;->geqPreset:Lcom/dolby/dax/model/GeqPreset;

    invoke-virtual {p0, p1}, Lcom/dolby/dax/dap/ContentParameters;->updateParams(Lcom/dolby/dax/model/ParameterValues;)V

    return-void
.end method

.method public setIeqPreset(Lcom/dolby/dax/model/IeqPreset;)V
    .locals 2

    iput-object p1, p0, Lcom/dolby/dax/dap/ContentParameters;->ieqPreset:Lcom/dolby/dax/model/IeqPreset;

    invoke-virtual {p1}, Lcom/dolby/dax/model/IeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v0

    sget-object v1, Lcom/dolby/dax/model/PresetType;->off:Lcom/dolby/dax/model/PresetType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/dolby/dax/dap/ContentParameters;->updateParams(Lcom/dolby/dax/model/ParameterValues;)V

    :cond_0
    return-void
.end method

.method public setProfile(Lcom/dolby/dax/model/Profile;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/dax/dap/ContentParameters;->profile:Lcom/dolby/dax/model/Profile;

    invoke-virtual {p0, p1}, Lcom/dolby/dax/dap/ContentParameters;->updateParams(Lcom/dolby/dax/model/ParameterValues;)V

    return-void
.end method

.method protected updateParams(Lcom/dolby/dax/model/ParameterValues;)V
    .locals 4

    invoke-virtual {p1}, Lcom/dolby/dax/model/ParameterValues;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolby/dax/model/Parameter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {p0, v2, v3}, Lcom/dolby/dax/dap/ContentParameters;->checkAndUpdate(Lcom/dolby/dax/model/Parameter;[I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolby/dax/dap/ContentParameters;->paramChangeObserver:Lcom/dolby/dax/dap/translator/ParamChangeObserver;

    invoke-interface {v3, v2}, Lcom/dolby/dax/dap/translator/ParamChangeObserver;->onParameterChanged(Lcom/dolby/dax/model/Parameter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

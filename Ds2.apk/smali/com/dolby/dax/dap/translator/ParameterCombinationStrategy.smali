.class public abstract enum Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;
.super Ljava/lang/Enum;
.source "ParameterCombinationStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$1;,
        Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$2;,
        Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$3;,
        Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$4;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

.field public static final enum Null:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

.field public static final enum Profile:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

.field public static final enum ProfileEndpoint:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

.field public static final enum Tuning:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

.field public static final profileAndTuningParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final profileEndpointAndTuningParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$1;

    const-string/jumbo v1, "Null"

    invoke-direct {v0, v1, v4}, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->Null:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    new-instance v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$2;

    const-string/jumbo v1, "Profile"

    invoke-direct {v0, v1, v3}, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->Profile:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    new-instance v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$3;

    const-string/jumbo v1, "ProfileEndpoint"

    invoke-direct {v0, v1, v5}, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->ProfileEndpoint:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    new-instance v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$4;

    const-string/jumbo v1, "Tuning"

    invoke-direct {v0, v1, v6}, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->Tuning:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    new-array v0, v7, [Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    sget-object v1, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->Null:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->Profile:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->ProfileEndpoint:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->Tuning:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->$VALUES:[Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    sget-object v0, Lcom/dolby/dax/model/Parameter;->audio_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/dolby/dax/model/Parameter;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_enhancer_enable:Lcom/dolby/dax/model/Parameter;

    aput-object v2, v1, v4

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_extraction_enable:Lcom/dolby/dax/model/Parameter;

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    aput-object v2, v1, v5

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_enable:Lcom/dolby/dax/model/Parameter;

    aput-object v2, v1, v6

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_speaker_dist_enable:Lcom/dolby/dax/model/Parameter;

    aput-object v2, v1, v7

    sget-object v2, Lcom/dolby/dax/model/Parameter;->surround_decoder_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_modeler_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->profileAndTuningParams:Ljava/util/Set;

    sget-object v0, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    new-array v1, v4, [Lcom/dolby/dax/model/Parameter;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->profileEndpointAndTuningParams:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/dolby/dax/dap/translator/ParameterCombinationStrategy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static isIntermediateProfileEndpointParam(Lcom/dolby/dax/model/Parameter;)Z
    .locals 1

    sget-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->profileEndpointAndTuningParams:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isIntermediateProfileParam(Lcom/dolby/dax/model/Parameter;)Z
    .locals 1

    sget-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->profileAndTuningParams:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;
    .locals 1

    const-class v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    return-object v0
.end method

.method public static values()[Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;
    .locals 1

    sget-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->$VALUES:[Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    return-object v0
.end method


# virtual methods
.method protected abstract getOtherValue(Lcom/dolby/dax/dap/DeviceParameters;Lcom/dolby/dax/model/Parameter;)[I
.end method

.method public getValue(Lcom/dolby/dax/dap/DeviceParameters;Lcom/dolby/dax/model/Parameter;[I)[I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->needsCombining(Lcom/dolby/dax/model/Parameter;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->getOtherValue(Lcom/dolby/dax/dap/DeviceParameters;Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    aget v1, p3, v3

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    aput v1, p3, v3

    new-array v1, v2, [I

    aget v2, p3, v3

    aget v4, v0, v3

    and-int/2addr v2, v4

    aput v2, v1, v3

    return-object v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method protected abstract needsCombining(Lcom/dolby/dax/model/Parameter;)Z
.end method

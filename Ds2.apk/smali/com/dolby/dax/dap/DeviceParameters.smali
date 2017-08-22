.class public Lcom/dolby/dax/dap/DeviceParameters;
.super Lcom/dolby/dax/model/ParameterValues;
.source "DeviceParameters.java"


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
.field paramChangeObserver:Lcom/dolby/dax/dap/translator/ParamChangeObserver;

.field profile:Lcom/dolby/dax/model/Profile;

.field profileEndpoint:Lcom/dolby/dax/model/ProfileEndpoint;

.field profilePort:Lcom/dolby/dax/model/ProfilePort;

.field tuning:Lcom/dolby/dax/model/Tuning;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/dolby/dax/model/Parameter;->audio_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v1, 0x44

    new-array v1, v1, [Lcom/dolby/dax/model/Parameter;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_frequency:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_c:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_l:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_lfe:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_lrs:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_ls:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_ltm:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_r:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rrs:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rs:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rtm:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_enhancer_boost:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_enhancer_cutoff_frequency:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_enhancer_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_enhancer_width:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_extraction_cutoff_frequency:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_extraction_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->calibration_boost:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->dialog_enhancer_amount:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->dialog_enhancer_ducking:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->dialog_enhancer_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->height_filter_mode:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->output_mix_matrix:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_frequency:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_c:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_l:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_lfe:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_lrs:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_ls:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_ltm:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_r:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_rrs:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_rs:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_rtm:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_frequency:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_isolated_band:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_overdrive:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_relaxation_amount:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_speaker_dist_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_threshold_high:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_threshold_low:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_timbre_preservation:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->surround_boost:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->surround_decoder_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_mix_freq_high:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_mix_freq_low:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x30

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_mode:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x31

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_overall_gain:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x32

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_slope_gain:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x33

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_src_freq_high:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x34

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_src_freq_low:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x35

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_subgains:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x36

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x37

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_front_speaker_angle:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x38

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_height_speaker_angle:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x39

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_speaker_angle:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_speaker_start_freq:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_surround_speaker_angle:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volmax_boost:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_leveler_amount:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_leveler_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_leveler_in_target:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x40

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_leveler_out_target:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x41

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_modeler_calibration:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x42

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_modeler_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x43

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/dap/DeviceParameters;->validParams:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/dolby/dax/dap/translator/ParamChangeObserver;)V
    .locals 1

    invoke-direct {p0}, Lcom/dolby/dax/model/ParameterValues;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/dap/DeviceParameters;->paramChangeObserver:Lcom/dolby/dax/dap/translator/ParamChangeObserver;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/dolby/dax/dap/translator/ParamChangeObserver;->setSource(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V

    return-void
.end method


# virtual methods
.method public getProfile()Lcom/dolby/dax/model/Profile;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/DeviceParameters;->profile:Lcom/dolby/dax/model/Profile;

    return-object v0
.end method

.method public getProfileEndpoint()Lcom/dolby/dax/model/ProfileEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/DeviceParameters;->profileEndpoint:Lcom/dolby/dax/model/ProfileEndpoint;

    return-object v0
.end method

.method public getTuning()Lcom/dolby/dax/model/Tuning;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/DeviceParameters;->tuning:Lcom/dolby/dax/model/Tuning;

    return-object v0
.end method

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

    sget-object v0, Lcom/dolby/dax/dap/DeviceParameters;->validParams:Ljava/util/Set;

    return-object v0
.end method

.method public setProfile(Lcom/dolby/dax/model/Profile;)V
    .locals 1

    iput-object p1, p0, Lcom/dolby/dax/dap/DeviceParameters;->profile:Lcom/dolby/dax/model/Profile;

    sget-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->Profile:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/dap/DeviceParameters;->updateParams(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;)V

    return-void
.end method

.method public setProfileEndpoint(Lcom/dolby/dax/model/ProfileEndpoint;)V
    .locals 1

    iput-object p1, p0, Lcom/dolby/dax/dap/DeviceParameters;->profileEndpoint:Lcom/dolby/dax/model/ProfileEndpoint;

    sget-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->ProfileEndpoint:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/dap/DeviceParameters;->updateParams(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;)V

    return-void
.end method

.method public setProfilePort(Lcom/dolby/dax/model/ProfilePort;)V
    .locals 1

    iput-object p1, p0, Lcom/dolby/dax/dap/DeviceParameters;->profilePort:Lcom/dolby/dax/model/ProfilePort;

    sget-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->Null:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/dap/DeviceParameters;->updateParams(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;)V

    return-void
.end method

.method public setTuning(Lcom/dolby/dax/model/Tuning;)V
    .locals 2

    iput-object p1, p0, Lcom/dolby/dax/dap/DeviceParameters;->tuning:Lcom/dolby/dax/model/Tuning;

    iget-object v0, p0, Lcom/dolby/dax/dap/DeviceParameters;->paramChangeObserver:Lcom/dolby/dax/dap/translator/ParamChangeObserver;

    invoke-virtual {p1}, Lcom/dolby/dax/model/Tuning;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/dolby/dax/dap/translator/ParamChangeObserver;->setSource(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Endpoint;)V

    sget-object v0, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->Tuning:Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;

    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/dap/DeviceParameters;->updateParams(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;)V

    return-void
.end method

.method protected updateParams(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;)V
    .locals 5

    invoke-virtual {p1}, Lcom/dolby/dax/model/ParameterValues;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/model/Parameter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-virtual {p2, p0, v3, v4}, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;->getValue(Lcom/dolby/dax/dap/DeviceParameters;Lcom/dolby/dax/model/Parameter;[I)[I

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/dolby/dax/dap/DeviceParameters;->checkAndUpdate(Lcom/dolby/dax/model/Parameter;[I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/dolby/dax/dap/DeviceParameters;->paramChangeObserver:Lcom/dolby/dax/dap/translator/ParamChangeObserver;

    invoke-interface {v4, v3}, Lcom/dolby/dax/dap/translator/ParamChangeObserver;->onParameterChanged(Lcom/dolby/dax/model/Parameter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

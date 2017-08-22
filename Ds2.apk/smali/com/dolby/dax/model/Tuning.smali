.class public Lcom/dolby/dax/model/Tuning;
.super Lcom/dolby/dax/model/ParameterValues;
.source "Tuning.java"

# interfaces
.implements Lcom/dolby/dax/model/Model;


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
.field protected final endpoint:Lcom/dolby/dax/model/Endpoint;

.field protected final id:J

.field protected final mono:Z

.field protected final name:Ljava/lang/String;

.field protected final readonly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/dolby/dax/model/Parameter;->audio_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v1, 0x3a

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

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_extraction_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_extraction_cutoff_frequency:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->height_filter_mode:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->output_mix_matrix:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_frequency:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_c:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_l:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_lfe:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_lrs:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_ls:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_ltm:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_r:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_rrs:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_rs:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_rtm:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_frequency:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_isolated_band:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_overdrive:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_relaxation_amount:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_speaker_dist_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_threshold_high:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_threshold_low:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_timbre_preservation:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->surround_decoder_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_mix_freq_high:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_mix_freq_low:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_mode:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_overall_gain:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_slope_gain:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_src_freq_high:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_src_freq_low:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x30

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_subgains:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x31

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x32

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_front_speaker_angle:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x33

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_height_speaker_angle:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x34

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_speaker_angle:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x35

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_speaker_start_freq:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x36

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_surround_speaker_angle:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x37

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_modeler_calibration:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x38

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_modeler_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x39

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/model/Tuning;->validParams:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/dolby/dax/model/Endpoint;ZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/dolby/dax/model/ParameterValues;-><init>()V

    iput-wide p1, p0, Lcom/dolby/dax/model/Tuning;->id:J

    iput-object p3, p0, Lcom/dolby/dax/model/Tuning;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolby/dax/model/Tuning;->endpoint:Lcom/dolby/dax/model/Endpoint;

    iput-boolean p5, p0, Lcom/dolby/dax/model/Tuning;->mono:Z

    iput-boolean p6, p0, Lcom/dolby/dax/model/Tuning;->readonly:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dolby/dax/model/Endpoint;Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/dolby/dax/model/ParameterValues;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolby/dax/model/Tuning;->id:J

    iput-object p1, p0, Lcom/dolby/dax/model/Tuning;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/dolby/dax/model/Tuning;->endpoint:Lcom/dolby/dax/model/Endpoint;

    iput-boolean p3, p0, Lcom/dolby/dax/model/Tuning;->mono:Z

    iput-boolean v2, p0, Lcom/dolby/dax/model/Tuning;->readonly:Z

    iput-boolean v2, p0, Lcom/dolby/dax/model/Tuning;->dirty:Z

    return-void
.end method


# virtual methods
.method public getEndpoint()Lcom/dolby/dax/model/Endpoint;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/Tuning;->endpoint:Lcom/dolby/dax/model/Endpoint;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/dolby/dax/model/Tuning;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/Tuning;->name:Ljava/lang/String;

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

    sget-object v0, Lcom/dolby/dax/model/Tuning;->validParams:Ljava/util/Set;

    return-object v0
.end method

.method public isMono()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/dax/model/Tuning;->mono:Z

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/dax/model/Tuning;->readonly:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tuning{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dolby/dax/model/Tuning;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/Tuning;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/Tuning;->endpoint:Lcom/dolby/dax/model/Endpoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dolby/dax/model/Tuning;->mono:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", readonly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dolby/dax/model/Tuning;->readonly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/dax/model/Tuning;->valuesToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

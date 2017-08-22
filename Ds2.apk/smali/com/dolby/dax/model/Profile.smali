.class public Lcom/dolby/dax/model/Profile;
.super Lcom/dolby/dax/model/ParameterValues;
.source "Profile.java"

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
.field protected final id:J

.field protected name:Ljava/lang/String;

.field protected selectedGeqPreset:Lcom/dolby/dax/model/PresetType;

.field protected selectedIeqPreset:Lcom/dolby/dax/model/PresetType;

.field protected final type:Lcom/dolby/dax/model/ProfileType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/dolby/dax/model/Parameter;->audio_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/dolby/dax/model/Parameter;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_enhancer_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_extraction_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->graphic_equalizer_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_amount:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_dialog_enhancer_steering_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_dv_leveler_steering_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_ieq_steering_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_surround_compressor_steering_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_speaker_dist_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->surround_decoder_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_headphone_reverb_gain:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_modeler_enable:Lcom/dolby/dax/model/Parameter;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/model/Profile;->validParams:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(JLcom/dolby/dax/model/ProfileType;Ljava/lang/String;Lcom/dolby/dax/model/PresetType;Lcom/dolby/dax/model/PresetType;)V
    .locals 1

    invoke-direct {p0}, Lcom/dolby/dax/model/ParameterValues;-><init>()V

    iput-wide p1, p0, Lcom/dolby/dax/model/Profile;->id:J

    iput-object p3, p0, Lcom/dolby/dax/model/Profile;->type:Lcom/dolby/dax/model/ProfileType;

    iput-object p4, p0, Lcom/dolby/dax/model/Profile;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/dolby/dax/model/Profile;->selectedIeqPreset:Lcom/dolby/dax/model/PresetType;

    iput-object p6, p0, Lcom/dolby/dax/model/Profile;->selectedGeqPreset:Lcom/dolby/dax/model/PresetType;

    return-void
.end method

.method public constructor <init>(Lcom/dolby/dax/model/ProfileType;Ljava/lang/String;Lcom/dolby/dax/model/PresetType;Lcom/dolby/dax/model/PresetType;)V
    .locals 2

    invoke-direct {p0}, Lcom/dolby/dax/model/ParameterValues;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolby/dax/model/Profile;->id:J

    iput-object p1, p0, Lcom/dolby/dax/model/Profile;->type:Lcom/dolby/dax/model/ProfileType;

    iput-object p2, p0, Lcom/dolby/dax/model/Profile;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolby/dax/model/Profile;->selectedIeqPreset:Lcom/dolby/dax/model/PresetType;

    iput-object p4, p0, Lcom/dolby/dax/model/Profile;->selectedGeqPreset:Lcom/dolby/dax/model/PresetType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/dax/model/Profile;->dirty:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Lcom/dolby/dax/model/Profile;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/dax/model/Profile;

    iget-object v2, p0, Lcom/dolby/dax/model/Profile;->selectedGeqPreset:Lcom/dolby/dax/model/PresetType;

    iget-object v3, v0, Lcom/dolby/dax/model/Profile;->selectedGeqPreset:Lcom/dolby/dax/model/PresetType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/dolby/dax/model/Profile;->selectedIeqPreset:Lcom/dolby/dax/model/PresetType;

    iget-object v3, v0, Lcom/dolby/dax/model/Profile;->selectedIeqPreset:Lcom/dolby/dax/model/PresetType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/dolby/dax/model/Profile;->type:Lcom/dolby/dax/model/ProfileType;

    iget-object v3, v0, Lcom/dolby/dax/model/Profile;->type:Lcom/dolby/dax/model/ProfileType;

    if-ne v2, v3, :cond_2

    invoke-super {p0, p1}, Lcom/dolby/dax/model/ParameterValues;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/dolby/dax/model/Profile;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/Profile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedGeqPreset()Lcom/dolby/dax/model/PresetType;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/Profile;->selectedGeqPreset:Lcom/dolby/dax/model/PresetType;

    return-object v0
.end method

.method public getSelectedIeqPreset()Lcom/dolby/dax/model/PresetType;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/Profile;->selectedIeqPreset:Lcom/dolby/dax/model/PresetType;

    return-object v0
.end method

.method public getType()Lcom/dolby/dax/model/ProfileType;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/Profile;->type:Lcom/dolby/dax/model/ProfileType;

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

    sget-object v0, Lcom/dolby/dax/model/Profile;->validParams:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Lcom/dolby/dax/model/ParameterValues;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dolby/dax/model/Profile;->type:Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v2}, Lcom/dolby/dax/model/ProfileType;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dolby/dax/model/Profile;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dolby/dax/model/Profile;->selectedIeqPreset:Lcom/dolby/dax/model/PresetType;

    invoke-virtual {v2}, Lcom/dolby/dax/model/PresetType;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dolby/dax/model/Profile;->selectedGeqPreset:Lcom/dolby/dax/model/PresetType;

    invoke-virtual {v2}, Lcom/dolby/dax/model/PresetType;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/dolby/dax/model/Profile;->name:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/dax/model/Profile;->dirty:Z

    return-void
.end method

.method public setSelectedGeqPreset(Lcom/dolby/dax/model/PresetType;)V
    .locals 1

    iput-object p1, p0, Lcom/dolby/dax/model/Profile;->selectedGeqPreset:Lcom/dolby/dax/model/PresetType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/dax/model/Profile;->dirty:Z

    return-void
.end method

.method public setSelectedIeqPreset(Lcom/dolby/dax/model/PresetType;)V
    .locals 1

    iput-object p1, p0, Lcom/dolby/dax/model/Profile;->selectedIeqPreset:Lcom/dolby/dax/model/PresetType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/dax/model/Profile;->dirty:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Profile{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dolby/dax/model/Profile;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/Profile;->type:Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/Profile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", selectedIeqPreset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/Profile;->selectedIeqPreset:Lcom/dolby/dax/model/PresetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", selectedGeqPreset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/Profile;->selectedGeqPreset:Lcom/dolby/dax/model/PresetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/dax/model/Profile;->valuesToString()Ljava/lang/String;

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

.class public Lcom/dolby/dax/xml/ProfileParser;
.super Ljava/lang/Object;
.source "ProfileParser.java"


# instance fields
.field private final profileEndpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/ProfileEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final profilePorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/ProfilePort;",
            ">;"
        }
    .end annotation
.end field

.field private final profiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final ti:Lcom/dolby/dax/xml/TagIterator;


# direct methods
.method public constructor <init>(Lcom/dolby/dax/xml/TagIterator;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/xml/TagIterator;",
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/Profile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/ProfileEndpoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/ProfilePort;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    iput-object p2, p0, Lcom/dolby/dax/xml/ProfileParser;->profiles:Ljava/util/List;

    iput-object p3, p0, Lcom/dolby/dax/xml/ProfileParser;->profileEndpoints:Ljava/util/List;

    iput-object p4, p0, Lcom/dolby/dax/xml/ProfileParser;->profilePorts:Ljava/util/List;

    return-void
.end method

.method private parseProfileData(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v2}, Lcom/dolby/dax/xml/TagIterator;->next()V

    new-instance v1, Lcom/dolby/dax/model/Profile;

    invoke-direct {v1, p1, v0, v4, v4}, Lcom/dolby/dax/model/Profile;-><init>(Lcom/dolby/dax/model/ProfileType;Ljava/lang/String;Lcom/dolby/dax/model/PresetType;Lcom/dolby/dax/model/PresetType;)V

    iget-object v2, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->graphic_equalizer_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "graphic-equalizer-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "ieq-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_amount:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "ieq-amount"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_dialog_enhancer_steering_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "mi-dialog-enhancer-steering-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_dv_leveler_steering_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "mi-dv-leveler-steering-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_ieq_steering_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "mi-ieq-steering-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->mi_surround_compressor_steering_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "mi-surround-compressor-steering-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_headphone_reverb_gain:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "virtualizer-headphone-reverb-gain"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "intermediate_profile_audio-optimizer-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_enhancer_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "intermediate_profile_bass-enhancer-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->bass_extraction_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "intermediate_profile_bass-extraction-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->process_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "intermediate_profile_process-optimizer-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "intermediate_profile_regulator-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->regulator_speaker_dist_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "intermediate_profile_regulator-speaker-dist-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->surround_decoder_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "intermediate_profile_surround-decoder-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_modeler_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "intermediate_profile_volume-modeler-enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtual_bass_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "intermediate_profile_partial_virtual_bass_enable"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dolby/dax/model/Profile;->set(Lcom/dolby/dax/model/Parameter;[I)V

    invoke-virtual {p0, p1}, Lcom/dolby/dax/xml/ProfileParser;->parseProfileEndpoints(Lcom/dolby/dax/model/ProfileType;)V

    invoke-direct {p0, p1}, Lcom/dolby/dax/xml/ProfileParser;->parseProfileEndpointPorts(Lcom/dolby/dax/model/ProfileType;)V

    iget-object v2, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/ProfileParser;->parseProfilePresets(Lcom/dolby/dax/model/Profile;)V

    return-object v1
.end method

.method private parseProfileEndpointPorts(Lcom/dolby/dax/model/ProfileType;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :goto_0
    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "endpoint_port"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dolby/dax/model/Port;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Port;

    move-result-object v0

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v3}, Lcom/dolby/dax/xml/TagIterator;->next()V

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->profilePorts:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/ProfilePort;

    invoke-virtual {v1}, Lcom/dolby/dax/model/ProfilePort;->getProfileType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v1}, Lcom/dolby/dax/model/ProfilePort;->getPort()Lcom/dolby/dax/model/Port;

    move-result-object v3

    if-ne v3, v0, :cond_0

    new-instance v3, Lcom/dolby/dax/xml/ValidationException;

    iget-object v4, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " contains duplicate endpoint port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v1, Lcom/dolby/dax/model/ProfilePort;

    invoke-direct {v1, p1, v0}, Lcom/dolby/dax/model/ProfilePort;-><init>(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Port;)V

    invoke-virtual {p0, v1}, Lcom/dolby/dax/xml/ProfileParser;->parseProfileEndpointPort(Lcom/dolby/dax/model/ProfilePort;)V

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->profilePorts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "endpoint_port"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private parseProfilePresets(Lcom/dolby/dax/model/Profile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :goto_0
    iget-object v2, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v3, "include"

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v3, "preset"

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v2}, Lcom/dolby/dax/xml/TagIterator;->next()V

    const-string/jumbo v2, "ieq"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-static {v2, v0}, Lcom/dolby/dax/xml/PresetParser;->getIeqPresetType(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)Lcom/dolby/dax/model/PresetType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedIeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IEQ preset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " can not by used for profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedIeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is already present"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1, v1}, Lcom/dolby/dax/model/Profile;->setSelectedIeqPreset(Lcom/dolby/dax/model/PresetType;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v3, "include"

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "geq"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-static {v2, v0}, Lcom/dolby/dax/xml/PresetParser;->getGeqPresetType(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)Lcom/dolby/dax/model/PresetType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedGeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GEQ preset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " can not by used for profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedGeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is already present"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {p1, v1}, Lcom/dolby/dax/model/Profile;->setSelectedGeqPreset(Lcom/dolby/dax/model/PresetType;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public parse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :goto_0
    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "profile"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dolby/dax/model/ProfileType;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->profiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/Profile;

    invoke-virtual {v0}, Lcom/dolby/dax/model/Profile;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v3

    if-ne v3, v2, :cond_0

    new-instance v3, Lcom/dolby/dax/xml/ValidationException;

    iget-object v4, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not unique"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->profiles:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/dolby/dax/xml/ProfileParser;->parseProfileData(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "profile"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method parseProfileEndpointPort(Lcom/dolby/dax/model/ProfilePort;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    sget-object v0, Lcom/dolby/dax/model/Parameter;->volume_leveler_in_target:Lcom/dolby/dax/model/Parameter;

    iget-object v1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "volume-leveler-in-target"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/model/ProfilePort;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v0, Lcom/dolby/dax/model/Parameter;->volume_leveler_out_target:Lcom/dolby/dax/model/Parameter;

    iget-object v1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "volume-leveler-out-target"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/model/ProfilePort;->set(Lcom/dolby/dax/model/Parameter;[I)V

    return-void
.end method

.method parseProfileEndpointType(Lcom/dolby/dax/model/ParameterValues;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    sget-object v0, Lcom/dolby/dax/model/Parameter;->calibration_boost:Lcom/dolby/dax/model/Parameter;

    iget-object v1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "calibration-boost"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v0, Lcom/dolby/dax/model/Parameter;->dialog_enhancer_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "dialog-enhancer-enable"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v0, Lcom/dolby/dax/model/Parameter;->dialog_enhancer_amount:Lcom/dolby/dax/model/Parameter;

    iget-object v1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "dialog-enhancer-amount"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v0, Lcom/dolby/dax/model/Parameter;->dialog_enhancer_ducking:Lcom/dolby/dax/model/Parameter;

    iget-object v1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "dialog-enhancer-ducking"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v0, Lcom/dolby/dax/model/Parameter;->surround_boost:Lcom/dolby/dax/model/Parameter;

    iget-object v1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "surround-boost"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v0, Lcom/dolby/dax/model/Parameter;->volmax_boost:Lcom/dolby/dax/model/Parameter;

    iget-object v1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "volmax-boost"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v0, Lcom/dolby/dax/model/Parameter;->volume_leveler_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "volume-leveler-enable"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v0, Lcom/dolby/dax/model/Parameter;->volume_leveler_amount:Lcom/dolby/dax/model/Parameter;

    iget-object v1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "volume-leveler-amount"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v0, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v1, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "intermediate_profile_partial_virtualizer_enable"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    return-void
.end method

.method parseProfileEndpoints(Lcom/dolby/dax/model/ProfileType;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :goto_0
    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "endpoint_type"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dolby/dax/model/Endpoint;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Endpoint;

    move-result-object v0

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v3}, Lcom/dolby/dax/xml/TagIterator;->next()V

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->profileEndpoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/ProfileEndpoint;

    invoke-virtual {v1}, Lcom/dolby/dax/model/ProfileEndpoint;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v3

    if-ne v3, v0, :cond_0

    invoke-virtual {v1}, Lcom/dolby/dax/model/ProfileEndpoint;->getProfileType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    new-instance v3, Lcom/dolby/dax/xml/ValidationException;

    iget-object v4, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " contains duplicate endpoint type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v1, Lcom/dolby/dax/model/ProfileEndpoint;

    invoke-direct {v1, p1, v0}, Lcom/dolby/dax/model/ProfileEndpoint;-><init>(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;)V

    invoke-virtual {p0, v1}, Lcom/dolby/dax/xml/ProfileParser;->parseProfileEndpointType(Lcom/dolby/dax/model/ParameterValues;)V

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->profileEndpoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/dolby/dax/xml/ProfileParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "endpoint_type"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

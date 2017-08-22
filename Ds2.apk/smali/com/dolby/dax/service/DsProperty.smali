.class public Lcom/dolby/dax/service/DsProperty;
.super Ljava/lang/Object;
.source "DsProperty.java"

# interfaces
.implements Lcom/dolby/dax/state/OnDsContextChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/dax/service/DsProperty$SystemProperties;
    }
.end annotation


# static fields
.field private static final synthetic -com-dolby-dax-model-EndpointSwitchesValues:[I


# instance fields
.field private final systemProperties:Lcom/dolby/dax/service/DsProperty$SystemProperties;


# direct methods
.method private static synthetic -getcom-dolby-dax-model-EndpointSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/dolby/dax/service/DsProperty;->-com-dolby-dax-model-EndpointSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolby/dax/service/DsProperty;->-com-dolby-dax-model-EndpointSwitchesValues:[I

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/dolby/dax/model/Endpoint;->passthrough:Lcom/dolby/dax/model/Endpoint;

    invoke-virtual {v1}, Lcom/dolby/dax/model/Endpoint;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/dolby/dax/model/Endpoint;->speaker:Lcom/dolby/dax/model/Endpoint;

    invoke-virtual {v1}, Lcom/dolby/dax/model/Endpoint;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/dolby/dax/service/DsProperty;->-com-dolby-dax-model-EndpointSwitchesValues:[I

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

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dolby/dax/service/DsProperty$SystemProperties;

    invoke-direct {v0}, Lcom/dolby/dax/service/DsProperty$SystemProperties;-><init>()V

    iput-object v0, p0, Lcom/dolby/dax/service/DsProperty;->systemProperties:Lcom/dolby/dax/service/DsProperty$SystemProperties;

    return-void
.end method

.method private setDialogEnhancerProperty(Lcom/dolby/dax/model/ProfileEndpoint;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolby/dax/service/DsProperty;->systemProperties:Lcom/dolby/dax/service/DsProperty$SystemProperties;

    const-string/jumbo v2, "dolby.ds.dialogenhancer.state"

    sget-object v3, Lcom/dolby/dax/model/Parameter;->dialog_enhancer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p1, v3}, Lcom/dolby/dax/model/ProfileEndpoint;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aget v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v2, v0}, Lcom/dolby/dax/service/DsProperty$SystemProperties;->set(Ljava/lang/String;Z)V

    return-void
.end method

.method private setGeqStateProperty(Lcom/dolby/dax/model/Profile;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolby/dax/service/DsProperty;->systemProperties:Lcom/dolby/dax/service/DsProperty$SystemProperties;

    const-string/jumbo v2, "dolby.ds.graphiceq.state"

    sget-object v3, Lcom/dolby/dax/model/Parameter;->graphic_equalizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p1, v3}, Lcom/dolby/dax/model/Profile;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aget v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v2, v0}, Lcom/dolby/dax/service/DsProperty$SystemProperties;->set(Ljava/lang/String;Z)V

    return-void
.end method

.method private setIeqPresetProperty(Lcom/dolby/dax/model/PresetType;)V
    .locals 4

    iget-object v0, p0, Lcom/dolby/dax/service/DsProperty;->systemProperties:Lcom/dolby/dax/service/DsProperty$SystemProperties;

    const-string/jumbo v1, "dolby.ds.intelligenteq.preset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ieq_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolby/dax/service/DsProperty$SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setIeqStateProperty(Lcom/dolby/dax/model/PresetType;)V
    .locals 3

    iget-object v1, p0, Lcom/dolby/dax/service/DsProperty;->systemProperties:Lcom/dolby/dax/service/DsProperty$SystemProperties;

    const-string/jumbo v2, "dolby.ds.intelligenteq.state"

    sget-object v0, Lcom/dolby/dax/model/PresetType;->off:Lcom/dolby/dax/model/PresetType;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/dolby/dax/service/DsProperty$SystemProperties;->set(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMonoSpeakerProperty(Z)V
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/service/DsProperty;->systemProperties:Lcom/dolby/dax/service/DsProperty$SystemProperties;

    const-string/jumbo v1, "dolby.monospeaker"

    invoke-virtual {v0, v1, p1}, Lcom/dolby/dax/service/DsProperty$SystemProperties;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private setProfileNameProperty(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/service/DsProperty;->systemProperties:Lcom/dolby/dax/service/DsProperty$SystemProperties;

    const-string/jumbo v1, "dolby.ds.profile.name"

    invoke-virtual {v0, v1, p1}, Lcom/dolby/dax/service/DsProperty$SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setProfileProperties(Lcom/dolby/dax/model/Profile;)V
    .locals 1

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolby/dax/service/DsProperty;->setProfileNameProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/dolby/dax/service/DsProperty;->setGeqStateProperty(Lcom/dolby/dax/model/Profile;)V

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedIeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolby/dax/service/DsProperty;->setIeqStateProperty(Lcom/dolby/dax/model/PresetType;)V

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedIeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolby/dax/service/DsProperty;->setIeqPresetProperty(Lcom/dolby/dax/model/PresetType;)V

    return-void
.end method

.method private setVirtualizerProperty(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;Lcom/dolby/dax/model/ProfileEndpoint;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p2, v3}, Lcom/dolby/dax/model/Tuning;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aget v3, v3, v4

    if-eqz v3, :cond_2

    sget-object v3, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p3, v3}, Lcom/dolby/dax/model/ProfileEndpoint;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aget v3, v3, v4

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v1, "off"

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/dolby/dax/service/DsProperty;->-getcom-dolby-dax-model-EndpointSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/dolby/dax/model/Tuning;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolby/dax/model/Endpoint;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dolby.ds.virt."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/dolby/dax/service/DsProperty;->systemProperties:Lcom/dolby/dax/service/DsProperty$SystemProperties;

    invoke-virtual {v3, v0, v1}, Lcom/dolby/dax/service/DsProperty$SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v1, "speaker"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "headphone"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setVolumeLevellerProperty(Lcom/dolby/dax/model/ProfileEndpoint;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolby/dax/service/DsProperty;->systemProperties:Lcom/dolby/dax/service/DsProperty$SystemProperties;

    const-string/jumbo v2, "dolby.ds.volumeleveler.state"

    sget-object v3, Lcom/dolby/dax/model/Parameter;->volume_leveler_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p1, v3}, Lcom/dolby/dax/model/ProfileEndpoint;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aget v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v2, v0}, Lcom/dolby/dax/service/DsProperty$SystemProperties;->set(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onDapOnChanged(Lcom/dolby/dax/state/DsContext;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/dolby/dax/service/DsProperty;->setStateProperty(Z)V

    return-void
.end method

.method public onLoad(Lcom/dolby/dax/state/DsContext;)V
    .locals 2

    sget-object v1, Lcom/dolby/dax/model/Port;->internal_speaker:Lcom/dolby/dax/model/Port;

    invoke-interface {p1, v1}, Lcom/dolby/dax/state/DsContext;->getSelectedTuning(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/Tuning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/dax/model/Tuning;->isMono()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/dolby/dax/service/DsProperty;->setMonoSpeakerProperty(Z)V

    invoke-interface {p1}, Lcom/dolby/dax/state/DsContext;->getDapOn()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/dolby/dax/service/DsProperty;->onDapOnChanged(Lcom/dolby/dax/state/DsContext;Z)V

    invoke-virtual {p0, p1}, Lcom/dolby/dax/service/DsProperty;->onSelectedProfileChanged(Lcom/dolby/dax/state/DsContext;)V

    return-void
.end method

.method public onSelectedProfileChanged(Lcom/dolby/dax/state/DsContext;)V
    .locals 5

    invoke-interface {p1}, Lcom/dolby/dax/state/DsContext;->getSelectedProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/dolby/dax/service/DsProperty;->setProfileProperties(Lcom/dolby/dax/model/Profile;)V

    const/4 v3, 0x1

    sget-object v4, Lcom/dolby/dax/state/DsContext;->SupportedPorts:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/Port;

    invoke-interface {p1, v1}, Lcom/dolby/dax/state/DsContext;->getSelectedProfileEndpoint(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v0

    invoke-interface {p1, v1}, Lcom/dolby/dax/state/DsContext;->getSelectedTuning(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/Tuning;

    move-result-object v4

    invoke-direct {p0, v1, v4, v0}, Lcom/dolby/dax/service/DsProperty;->setVirtualizerProperty(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;Lcom/dolby/dax/model/ProfileEndpoint;)V

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/dolby/dax/service/DsProperty;->setDialogEnhancerProperty(Lcom/dolby/dax/model/ProfileEndpoint;)V

    invoke-direct {p0, v0}, Lcom/dolby/dax/service/DsProperty;->setVolumeLevellerProperty(Lcom/dolby/dax/model/ProfileEndpoint;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSelectedProfileEndpointChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/ProfileEndpoint;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/dolby/dax/service/DsProperty;->setDialogEnhancerProperty(Lcom/dolby/dax/model/ProfileEndpoint;)V

    invoke-direct {p0, p3}, Lcom/dolby/dax/service/DsProperty;->setVolumeLevellerProperty(Lcom/dolby/dax/model/ProfileEndpoint;)V

    invoke-interface {p1, p2}, Lcom/dolby/dax/state/DsContext;->getSelectedTuning(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/Tuning;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/dolby/dax/service/DsProperty;->setVirtualizerProperty(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;Lcom/dolby/dax/model/ProfileEndpoint;)V

    return-void
.end method

.method public onSelectedProfileGeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/GeqPreset;)V
    .locals 0

    return-void
.end method

.method public onSelectedProfileIeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/IeqPreset;)V
    .locals 1

    invoke-virtual {p2}, Lcom/dolby/dax/model/IeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolby/dax/service/DsProperty;->setIeqPresetProperty(Lcom/dolby/dax/model/PresetType;)V

    return-void
.end method

.method public onSelectedProfileNameChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V
    .locals 1

    invoke-virtual {p2}, Lcom/dolby/dax/model/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolby/dax/service/DsProperty;->setProfileNameProperty(Ljava/lang/String;)V

    return-void
.end method

.method public onSelectedProfileParameterChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/dolby/dax/service/DsProperty;->setProfileProperties(Lcom/dolby/dax/model/Profile;)V

    return-void
.end method

.method public onSelectedTuningChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;)V
    .locals 1

    invoke-interface {p1, p2}, Lcom/dolby/dax/state/DsContext;->getSelectedProfileEndpoint(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/dolby/dax/service/DsProperty;->setVirtualizerProperty(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;Lcom/dolby/dax/model/ProfileEndpoint;)V

    return-void
.end method

.method public setStateProperty(Z)V
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/service/DsProperty;->systemProperties:Lcom/dolby/dax/service/DsProperty$SystemProperties;

    const-string/jumbo v1, "dolby.ds.state"

    invoke-virtual {v0, v1, p1}, Lcom/dolby/dax/service/DsProperty$SystemProperties;->set(Ljava/lang/String;Z)V

    return-void
.end method

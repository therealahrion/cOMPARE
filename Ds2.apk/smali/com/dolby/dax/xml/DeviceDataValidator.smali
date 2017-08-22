.class public Lcom/dolby/dax/xml/DeviceDataValidator;
.super Ljava/lang/Object;
.source "DeviceDataValidator.java"


# instance fields
.field final data:Lcom/dolby/dax/xml/model/DeviceData;


# direct methods
.method public constructor <init>(Lcom/dolby/dax/xml/model/DeviceData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/xml/DeviceDataValidator;->data:Lcom/dolby/dax/xml/model/DeviceData;

    return-void
.end method

.method private validateIeqPreset(Lcom/dolby/dax/model/IeqPreset;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_frequency:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p1, v2}, Lcom/dolby/dax/model/IeqPreset;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_target:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p1, v2}, Lcom/dolby/dax/model/IeqPreset;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_0

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IEQ preset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dolby/dax/model/IeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has different "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "number of values for frequencies ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") and targets ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dolby/dax/xml/ValidationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method

.method private validateProfile(Lcom/dolby/dax/model/Profile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v3, Lcom/dolby/dax/model/Parameter;->ieq_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p1, v3}, Lcom/dolby/dax/model/Profile;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    aget v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    sget-object v3, Lcom/dolby/dax/model/PresetType;->off:Lcom/dolby/dax/model/PresetType;

    invoke-virtual {p1, v3}, Lcom/dolby/dax/model/Profile;->setSelectedIeqPreset(Lcom/dolby/dax/model/PresetType;)V

    :cond_1
    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedGeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedIeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v4

    if-eq v3, v4, :cond_2

    const-string/jumbo v3, "DeviceDataValidator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has selected different ieq ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedIeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") and geq ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedGeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") presets. Setting geq to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedIeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getSelectedIeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/dolby/dax/model/Profile;->setSelectedGeqPreset(Lcom/dolby/dax/model/PresetType;)V

    :cond_2
    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    array-length v3, v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/dolby/dax/xml/ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with no values"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/dolby/dax/xml/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    return-void
.end method

.method private validateTuning(Lcom/dolby/dax/model/Tuning;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/dolby/dax/model/Tuning;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/dolby/dax/model/Parameter;->output_mix_matrix:Lcom/dolby/dax/model/Parameter;

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/dolby/dax/model/Tuning;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v2

    sget-object v3, Lcom/dolby/dax/model/Endpoint;->speaker:Lcom/dolby/dax/model/Endpoint;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p1, v2}, Lcom/dolby/dax/model/Tuning;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v2

    aget v2, v2, v4

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v2, v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tuning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dolby/dax/model/Tuning;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with no values"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dolby/dax/xml/ValidationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method


# virtual methods
.method public validate()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    iget-object v10, p0, Lcom/dolby/dax/xml/DeviceDataValidator;->data:Lcom/dolby/dax/xml/model/DeviceData;

    iget-object v10, v10, Lcom/dolby/dax/xml/model/DeviceData;->ieqPresets:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/model/IeqPreset;

    invoke-direct {p0, v3}, Lcom/dolby/dax/xml/DeviceDataValidator;->validateIeqPreset(Lcom/dolby/dax/model/IeqPreset;)V

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/dolby/dax/xml/DeviceDataValidator;->data:Lcom/dolby/dax/xml/model/DeviceData;

    iget-object v10, v10, Lcom/dolby/dax/xml/model/DeviceData;->profiles:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dolby/dax/model/Profile;

    invoke-direct {p0, v5}, Lcom/dolby/dax/xml/DeviceDataValidator;->validateProfile(Lcom/dolby/dax/model/Profile;)V

    goto :goto_1

    :cond_1
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iget-object v10, p0, Lcom/dolby/dax/xml/DeviceDataValidator;->data:Lcom/dolby/dax/xml/model/DeviceData;

    iget-object v10, v10, Lcom/dolby/dax/xml/model/DeviceData;->tunings:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dolby/dax/model/Tuning;

    invoke-direct {p0, v7}, Lcom/dolby/dax/xml/DeviceDataValidator;->validateTuning(Lcom/dolby/dax/model/Tuning;)V

    invoke-virtual {v7}, Lcom/dolby/dax/model/Tuning;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Lcom/dolby/dax/xml/ValidationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Tuning "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/dolby/dax/model/Tuning;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is not unique"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/dolby/dax/xml/ValidationException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v10, p0, Lcom/dolby/dax/xml/DeviceDataValidator;->data:Lcom/dolby/dax/xml/model/DeviceData;

    iget-object v10, v10, Lcom/dolby/dax/xml/model/DeviceData;->deviceTunings:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/DeviceTuning;

    invoke-virtual {v1}, Lcom/dolby/dax/model/DeviceTuning;->getDevice()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    new-instance v10, Lcom/dolby/dax/xml/ValidationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/dolby/dax/model/DeviceTuning;->getDevice()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is not unique."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/dolby/dax/xml/ValidationException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    return-void
.end method

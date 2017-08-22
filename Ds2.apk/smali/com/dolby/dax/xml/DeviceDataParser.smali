.class public Lcom/dolby/dax/xml/DeviceDataParser;
.super Ljava/lang/Object;
.source "DeviceDataParser.java"


# instance fields
.field private final ti:Lcom/dolby/dax/xml/TagIterator;


# direct methods
.method public constructor <init>(Lcom/dolby/dax/xml/TagIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    return-void
.end method

.method private parseAuthorizedTechnologies()Lcom/dolby/dax/xml/model/AuthorizedTechnologies;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "authorized_technologies"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;

    invoke-direct {v0}, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;-><init>()V

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "sku_name"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->skuName:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "device"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->device:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "bundle"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->bundle:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v1}, Lcom/dolby/dax/xml/TagIterator;->next()V

    const-string/jumbo v1, "audio_optimizer"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->audioOptimizer:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "audio_regulator"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->audioRegulator:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "bass_enhancer"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->bassEnhancer:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "bass_extraction"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->bassExtraction:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "calibration_boost"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->calibrationBoost:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "dialog_enhancer"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->dialogEnhancer:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "graphic_equalizer"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->graphicEqualizer:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "height_filter"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->heightFilter:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "intelligent_equalizer"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->intelligentEqualizer:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "media_intelligence"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->mediaIntelligence:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "process_optimizer"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->processOptimizer:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "surround_decoder"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->surroundDecoder:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "surround_virtualizer"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->surroundVirtualizer:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "virtualizer_headphone"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->virtualizerHeadphone:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "virtualizer_speaker"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->virtualizerSpeaker:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "virtual_bass"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->virtualBass:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "volume_leveler"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->volumeLeveler:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "volume_maximizer"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->volumeMaximizer:Lcom/dolby/dax/xml/model/SkuType;

    const-string/jumbo v1, "volume_modeler"

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/DeviceDataParser;->parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;

    move-result-object v1

    iput-object v1, v0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->volumeModeler:Lcom/dolby/dax/xml/model/SkuType;

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "authorized_technologies"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseSku(Ljava/lang/String;)Lcom/dolby/dax/xml/model/SkuType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v1, p1}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/dolby/dax/xml/model/SkuType;

    invoke-direct {v0}, Lcom/dolby/dax/xml/model/SkuType;-><init>()V

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "authorized"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getBoolAttribute(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolby/dax/xml/model/SkuType;->authorized:Z

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "changeable_in_tuning_tool"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getBoolAttribute(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolby/dax/xml/model/SkuType;->changeableInTuningTool:Z

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "enabled"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getBoolAttribute(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolby/dax/xml/model/SkuType;->enabled:Z

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "visible_in_tuning_tool"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getBoolAttribute(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolby/dax/xml/model/SkuType;->visibleInTuningTool:Z

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v1}, Lcom/dolby/dax/xml/TagIterator;->next()V

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v1, p1}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private parseVersion(Ljava/lang/String;)Lcom/dolby/dax/xml/model/Version;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v1, p1}, Lcom/dolby/dax/xml/TagIterator;->requireStartTag(Ljava/lang/String;)V

    new-instance v0, Lcom/dolby/dax/xml/model/Version;

    invoke-direct {v0}, Lcom/dolby/dax/xml/model/Version;-><init>()V

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "major"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolby/dax/xml/model/Version;->major:I

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "minor"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolby/dax/xml/model/Version;->minor:I

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "maintenance"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolby/dax/xml/model/Version;->maintenance:I

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v1}, Lcom/dolby/dax/xml/TagIterator;->next()V

    iget-object v1, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v1, p1}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public parse()Lcom/dolby/dax/xml/model/DeviceData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    iget-object v4, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "device_data"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->start(Ljava/lang/String;)V

    new-instance v0, Lcom/dolby/dax/xml/model/DeviceData;

    invoke-direct {v0}, Lcom/dolby/dax/xml/model/DeviceData;-><init>()V

    const-string/jumbo v4, "format_version"

    invoke-direct {p0, v4}, Lcom/dolby/dax/xml/DeviceDataParser;->parseVersion(Ljava/lang/String;)Lcom/dolby/dax/xml/model/Version;

    move-result-object v4

    iput-object v4, v0, Lcom/dolby/dax/xml/model/DeviceData;->formatVersion:Lcom/dolby/dax/xml/model/Version;

    const-string/jumbo v4, "tool_version"

    invoke-direct {p0, v4}, Lcom/dolby/dax/xml/DeviceDataParser;->parseVersion(Ljava/lang/String;)Lcom/dolby/dax/xml/model/Version;

    move-result-object v4

    iput-object v4, v0, Lcom/dolby/dax/xml/model/DeviceData;->toolVersion:Lcom/dolby/dax/xml/model/Version;

    new-instance v1, Lcom/dolby/dax/xml/PresetParser;

    iget-object v4, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    iget-object v5, v0, Lcom/dolby/dax/xml/model/DeviceData;->ieqPresets:Ljava/util/List;

    iget-object v6, v0, Lcom/dolby/dax/xml/model/DeviceData;->geqPresets:Ljava/util/List;

    invoke-direct {v1, v4, v5, v6}, Lcom/dolby/dax/xml/PresetParser;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/dolby/dax/xml/PresetParser;->parse()V

    new-instance v2, Lcom/dolby/dax/xml/ProfileParser;

    iget-object v4, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    iget-object v5, v0, Lcom/dolby/dax/xml/model/DeviceData;->profiles:Ljava/util/List;

    iget-object v6, v0, Lcom/dolby/dax/xml/model/DeviceData;->profileEndpoints:Ljava/util/List;

    iget-object v7, v0, Lcom/dolby/dax/xml/model/DeviceData;->profilePorts:Ljava/util/List;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/dolby/dax/xml/ProfileParser;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/dolby/dax/xml/ProfileParser;->parse()V

    new-instance v3, Lcom/dolby/dax/xml/TuningParser;

    iget-object v4, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    iget-object v5, v0, Lcom/dolby/dax/xml/model/DeviceData;->tunings:Ljava/util/List;

    iget-object v6, v0, Lcom/dolby/dax/xml/model/DeviceData;->deviceTunings:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6}, Lcom/dolby/dax/xml/TuningParser;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/dolby/dax/xml/TuningParser;->parse()V

    invoke-direct {p0}, Lcom/dolby/dax/xml/DeviceDataParser;->parseAuthorizedTechnologies()Lcom/dolby/dax/xml/model/AuthorizedTechnologies;

    move-result-object v4

    iput-object v4, v0, Lcom/dolby/dax/xml/model/DeviceData;->authorizedTechnologies:Lcom/dolby/dax/xml/model/AuthorizedTechnologies;

    iget-object v4, p0, Lcom/dolby/dax/xml/DeviceDataParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "device_data"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->finish(Ljava/lang/String;)V

    return-object v0
.end method

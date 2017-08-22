.class public Lcom/dolby/dax/xml/model/AuthorizedTechnologies;
.super Ljava/lang/Object;
.source "AuthorizedTechnologies.java"


# instance fields
.field public audioOptimizer:Lcom/dolby/dax/xml/model/SkuType;

.field public audioRegulator:Lcom/dolby/dax/xml/model/SkuType;

.field public bassEnhancer:Lcom/dolby/dax/xml/model/SkuType;

.field public bassExtraction:Lcom/dolby/dax/xml/model/SkuType;

.field public bundle:Ljava/lang/String;

.field public calibrationBoost:Lcom/dolby/dax/xml/model/SkuType;

.field public device:Ljava/lang/String;

.field public dialogEnhancer:Lcom/dolby/dax/xml/model/SkuType;

.field public graphicEqualizer:Lcom/dolby/dax/xml/model/SkuType;

.field public heightFilter:Lcom/dolby/dax/xml/model/SkuType;

.field public intelligentEqualizer:Lcom/dolby/dax/xml/model/SkuType;

.field public mediaIntelligence:Lcom/dolby/dax/xml/model/SkuType;

.field public processOptimizer:Lcom/dolby/dax/xml/model/SkuType;

.field public skuName:Ljava/lang/String;

.field public surroundDecoder:Lcom/dolby/dax/xml/model/SkuType;

.field public surroundVirtualizer:Lcom/dolby/dax/xml/model/SkuType;

.field public virtualBass:Lcom/dolby/dax/xml/model/SkuType;

.field public virtualizerHeadphone:Lcom/dolby/dax/xml/model/SkuType;

.field public virtualizerSpeaker:Lcom/dolby/dax/xml/model/SkuType;

.field public volumeLeveler:Lcom/dolby/dax/xml/model/SkuType;

.field public volumeMaximizer:Lcom/dolby/dax/xml/model/SkuType;

.field public volumeModeler:Lcom/dolby/dax/xml/model/SkuType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AuthorizedTechnologies{\n\tbundle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->bundle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tdevice=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tskuName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->skuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\taudioOptimizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->audioOptimizer:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\taudioRegulator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->audioRegulator:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tbassEnhancer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->bassEnhancer:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tbassExtraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->bassExtraction:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tcalibrationBoost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->calibrationBoost:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tdialogEnhancer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->dialogEnhancer:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tgraphicEqualizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->graphicEqualizer:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\theightFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->heightFilter:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tintelligentEqualizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->intelligentEqualizer:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tmediaIntelligence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->mediaIntelligence:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tprocessOptimizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->processOptimizer:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tsurroundDecoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->surroundDecoder:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tsurroundVirtualizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->surroundVirtualizer:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tvirtualizerHeadphone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->virtualizerHeadphone:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tvirtualizerSpeaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->virtualizerSpeaker:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tvirtualBass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->virtualBass:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tvolumeLeveler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->volumeLeveler:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tvolumeMaximizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->volumeMaximizer:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\tvolumeModeler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/xml/model/AuthorizedTechnologies;->volumeModeler:Lcom/dolby/dax/xml/model/SkuType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

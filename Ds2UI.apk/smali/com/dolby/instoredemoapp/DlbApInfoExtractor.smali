.class public Lcom/dolby/instoredemoapp/DlbApInfoExtractor;
.super Ljava/lang/Object;
.source "DlbApInfoExtractor.java"


# instance fields
.field private mApInfoStream:Ljava/io/InputStream;

.field private mApParser:Lcom/dolby/instoredemoapp/IAPMetadataParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->mApInfoStream:Ljava/io/InputStream;

    new-instance v0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;

    invoke-direct {v0}, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;-><init>()V

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->mApParser:Lcom/dolby/instoredemoapp/IAPMetadataParser;

    const-string/jumbo v0, "DlbApInfoExtractor"

    const-string/jumbo v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAutoPilotMetadata()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolby/instoredemoapp/AutoPilotItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->mApParser:Lcom/dolby/instoredemoapp/IAPMetadataParser;

    invoke-interface {v0}, Lcom/dolby/instoredemoapp/IAPMetadataParser;->getAutoPilotMetadata()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public setApInfoFile(Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->mApInfoStream:Ljava/io/InputStream;

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->mApInfoStream:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->mApParser:Lcom/dolby/instoredemoapp/IAPMetadataParser;

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->mApInfoStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcom/dolby/instoredemoapp/IAPMetadataParser;->parseFile(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

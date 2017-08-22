.class public interface abstract Lcom/dolby/instoredemoapp/IAPMetadataParser;
.super Ljava/lang/Object;
.source "IAPMetadataParser.java"


# virtual methods
.method public abstract getAutoPilotMetadata()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolby/instoredemoapp/AutoPilotItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parseFile(Ljava/io/InputStream;)V
.end method

.class public Lcom/dolby/dax/xml/PresetParser$PresetInfo;
.super Ljava/lang/Object;
.source "PresetParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/xml/PresetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresetInfo"
.end annotation


# instance fields
.field final dataTag:Ljava/lang/String;

.field final frequency:Lcom/dolby/dax/model/Parameter;

.field final rowTag:Ljava/lang/String;

.field final value:Lcom/dolby/dax/model/Parameter;

.field final valueTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolby/dax/model/Parameter;Lcom/dolby/dax/model/Parameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->dataTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->rowTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->valueTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->frequency:Lcom/dolby/dax/model/Parameter;

    iput-object p5, p0, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->value:Lcom/dolby/dax/model/Parameter;

    return-void
.end method

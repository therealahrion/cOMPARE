.class public Lcom/dolby/instoredemoapp/DlbAPMetadataParser;
.super Ljava/lang/Object;
.source "DlbAPMetadataParser.java"

# interfaces
.implements Lcom/dolby/instoredemoapp/IAPMetadataParser;


# instance fields
.field private mAPItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolby/instoredemoapp/AutoPilotItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFormatVersion:Ljava/lang/String;

.field private mTechInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAPItems(Lorg/w3c/dom/Element;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    const-string/jumbo v18, "item"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_a

    new-instance v2, Lcom/dolby/instoredemoapp/AutoPilotItem;

    invoke-direct {v2}, Lcom/dolby/instoredemoapp/AutoPilotItem;-><init>()V

    invoke-interface {v8, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    new-instance v7, Ljava/lang/Integer;

    const-string/jumbo v18, "id"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setId(I)V

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_9

    invoke-interface {v11, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "timestamp"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setTimeStamp(Ljava/lang/String;)V

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "textinfo"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->getTextInfo(Lorg/w3c/dom/Node;)Lcom/dolby/instoredemoapp/TextInfo;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setDisplayText(Lcom/dolby/instoredemoapp/TextInfo;)V

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "master_control"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setMasterControlValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "profile_control"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setProfileControlValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "surround_virtualizer"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setSurroundVirtualizerValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "dialog_enhancer"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setDialogEnhancerValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "volume_leveler"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setVolumeLevelerValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "intelligent_eq"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setIntelligentEqValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v18, "DlbAPMetadataParser"

    invoke-virtual {v2}, Lcom/dolby/instoredemoapp/AutoPilotItem;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private getMetadataVersion(Lorg/w3c/dom/Element;)V
    .locals 4

    const-string/jumbo v2, "format_version"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mFormatVersion:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getTechInfo(Lorg/w3c/dom/Element;)V
    .locals 4

    const-string/jumbo v2, "technology_info"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mTechInfo:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getTextInfo(Lorg/w3c/dom/Node;)Lcom/dolby/instoredemoapp/TextInfo;
    .locals 6

    new-instance v3, Lcom/dolby/instoredemoapp/TextInfo;

    invoke-direct {v3}, Lcom/dolby/instoredemoapp/TextInfo;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dolby/instoredemoapp/TextInfo;->text:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dolby/instoredemoapp/TextInfo;->textColor:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "font"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dolby/instoredemoapp/TextInfo;->textFont:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "position"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dolby/instoredemoapp/TextInfo;->textPos:Ljava/lang/String;

    goto :goto_1

    :cond_4
    return-object v3
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

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parseFile(Ljava/io/InputStream;)V
    .locals 7

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->getTechInfo(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, v4}, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->getMetadataVersion(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, v4}, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->getAPItems(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v5, "DlbAPMetadataParser"

    const-string/jumbo v6, "failed to parse the file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

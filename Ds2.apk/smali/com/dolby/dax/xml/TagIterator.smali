.class public Lcom/dolby/dax/xml/TagIterator;
.super Ljava/lang/Object;
.source "TagIterator.java"


# instance fields
.field xpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/dolby/dax/xml/TagIterator;->init()V

    iget-object v1, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dolby/dax/xml/ValidationException;

    const-string/jumbo v2, "Unable to initialize XML Parser"

    invoke-direct {v1, p0, v2, v0}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method assertAttributePresent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Lcom/dolby/dax/xml/ValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not present."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public atStartTag(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dolby/dax/xml/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error reading event for start tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public consumeBoolValueTag(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dolby/dax/xml/TagIterator;->requireStartTag(Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    invoke-virtual {p0, v1}, Lcom/dolby/dax/xml/TagIterator;->getBoolAttribute(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/dolby/dax/xml/TagIterator;->next()V

    invoke-virtual {p0, p1}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    return v0
.end method

.method public consumeEndTag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dolby/dax/xml/TagIterator;->requireEndTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dolby/dax/xml/TagIterator;->next()V

    return-void
.end method

.method public consumeIntValueTag(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dolby/dax/xml/TagIterator;->requireStartTag(Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    invoke-virtual {p0, v1}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/dolby/dax/xml/TagIterator;->next()V

    invoke-virtual {p0, p1}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    return v0
.end method

.method public consumeStartTag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dolby/dax/xml/TagIterator;->requireStartTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dolby/dax/xml/TagIterator;->next()V

    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dolby/dax/xml/TagIterator;->requireEndTag(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    iget-object v2, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    const-string/jumbo v3, "Unable to read end of document"

    invoke-direct {v2, p0, v3, v0}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    const-string/jumbo v3, "Expected end of document"

    invoke-direct {v2, p0, v3, v1}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public getBoolAttribute(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    iget-object v1, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/xml/TagIterator;->assertAttributePresent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/xml/TagIterator;->parseBoolValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getIntAttribute(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    iget-object v1, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/xml/TagIterator;->assertAttributePresent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/xml/TagIterator;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    iget-object v1, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/xml/TagIterator;->assertAttributePresent(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method

.method public next()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    const-string/jumbo v3, "Unable to read next tag"

    invoke-direct {v2, p0, v3, v0}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    const-string/jumbo v3, "Invalid tag found while parsing"

    invoke-direct {v2, p0, v3, v1}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method parseBoolValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    const-string/jumbo v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "false"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Lcom/dolby/dax/xml/ValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a boolean - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v0
.end method

.method parseIntValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dolby/dax/xml/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not an integer - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v1
.end method

.method public requireEndTag(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to read end tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected end tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public requireStartTag(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to read start tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected start tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public start(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/xml/TagIterator;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/dolby/dax/xml/TagIterator;->next()V

    invoke-virtual {p0, p1}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    const-string/jumbo v3, "Unable to read start of document"

    invoke-direct {v2, p0, v3, v0}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/dolby/dax/xml/ValidationException;

    const-string/jumbo v3, "Expected start of document"

    invoke-direct {v2, p0, v3, v1}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

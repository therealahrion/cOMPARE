.class public Lcom/dolby/dax/xml/ValidationException;
.super Ljava/lang/Exception;
.source "ValidationException.java"


# static fields
.field private static final serialVersionUID:J = 0x595d59f5ccde9c67L


# instance fields
.field private final isXmlException:Z


# direct methods
.method public constructor <init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/dolby/dax/xml/ValidationException;->formatDescription(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/dax/xml/ValidationException;->isXmlException:Z

    return-void
.end method

.method public constructor <init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/dolby/dax/xml/ValidationException;->formatDescription(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/dax/xml/ValidationException;->isXmlException:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/dax/xml/ValidationException;->isXmlException:Z

    return-void
.end method

.method private static formatDescription(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/dax/xml/TagIterator;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isXmlException()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/dax/xml/ValidationException;->isXmlException:Z

    return v0
.end method

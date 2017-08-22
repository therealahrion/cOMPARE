.class public final Lcom/google/common/collect/LinkedHashMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "LinkedHashMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,
        Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,
        Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final VALUE_SET_LOAD_FACTOR:D = 1.0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java serialization not supported"
    .end annotation
.end field


# instance fields
.field private transient multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient valueSetCapacity:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->deleteFromMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->deleteFromValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method private static deleteFromMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getPredecessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getSuccessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method private static deleteFromValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v6, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    const/4 v7, 0x0

    invoke-direct {v6, v8, v8, v7, v8}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    iput-object v6, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v6, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v7, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-static {v6, v7}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    iput v6, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/collect/LinkedHashMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/common/collect/LinkedHashMultimap;->setMap(Ljava/util/Map;)V

    return-void
.end method

.method private static succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->setSuccessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    invoke-virtual {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->setPredecessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method private static succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    invoke-interface {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v4, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->clear()V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method createCollection()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap;)V

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

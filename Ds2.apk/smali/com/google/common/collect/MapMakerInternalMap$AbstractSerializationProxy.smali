.class abstract Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.super Lcom/google/common/collect/ForwardingConcurrentMap;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field final concurrencyLevel:I

.field transient delegate:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field final maximumSize:I

.field final removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$RemovalListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field final valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapMaker$RemovalListener;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$Strength;",
            "Lcom/google/common/collect/MapMakerInternalMap$Strength;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;JJII",
            "Lcom/google/common/collect/MapMaker$RemovalListener",
            "<-TK;-TV;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingConcurrentMap;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iput-wide p5, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    iput-wide p7, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    iput p9, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->maximumSize:I

    iput p10, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->concurrencyLevel:I

    iput-object p11, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    iput-object p12, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method protected delegate()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method readEntries(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method readMapMaker(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    new-instance v2, Lcom/google/common/collect/MapMaker;

    invoke-direct {v2}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MapMaker;->initialCapacity(I)Lcom/google/common/collect/MapMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MapMaker;->setKeyStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MapMaker;->setValueStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MapMaker;->keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;

    move-result-object v2

    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->concurrencyLevel:I

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MapMaker;->concurrencyLevel(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/MapMaker;->removalListener(Lcom/google/common/collect/MapMaker$RemovalListener;)Lcom/google/common/collect/GenericMapMaker;

    iget-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/common/collect/MapMaker;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    :cond_0
    iget-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/common/collect/MapMaker;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    :cond_1
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->maximumSize:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->maximumSize:I

    invoke-virtual {v0, v2}, Lcom/google/common/collect/MapMaker;->maximumSize(I)Lcom/google/common/collect/MapMaker;

    :cond_2
    return-object v0
.end method

.method writeMapTo(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

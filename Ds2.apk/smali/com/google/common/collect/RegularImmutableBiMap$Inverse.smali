.class final Lcom/google/common/collect/RegularImmutableBiMap$Inverse;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$Inverse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;)V

    return-void
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;-><init>(Lcom/google/common/collect/RegularImmutableBiMap$Inverse;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v3}, Lcom/google/common/collect/RegularImmutableBiMap;->-get2(Lcom/google/common/collect/RegularImmutableBiMap;)I

    move-result v3

    and-int v0, v2, v3

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->-get3(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    aget-object v1, v2, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;-><init>(Lcom/google/common/collect/ImmutableBiMap;)V

    return-object v0
.end method

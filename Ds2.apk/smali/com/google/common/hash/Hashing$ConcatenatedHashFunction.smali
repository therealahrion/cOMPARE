.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    instance-of v2, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    if-eqz v2, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    iget v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    iget v3, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    iget-object v3, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    return v2

    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 6

    iget v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 7

    iget v4, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v4, v4, 0x8

    new-array v0, v4, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, p1, v4

    invoke-interface {v1}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v0, v2, v6}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v4

    return-object v4
.end method

.class Lcom/google/common/primitives/Ints$IntArrayAsList;
.super Ljava/util/AbstractList;
.source "Ints.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Ints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[I

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([III)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iput p2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iput p3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Ints;->-wrap0([IIII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p1, p0, :cond_0

    return v7

    :cond_0
    instance-of v3, p1, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v3, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v3

    if-eq v3, v1, :cond_1

    return v6

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v4, v0

    aget v3, v3, v4

    iget-object v4, v2, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v5, v2, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v5, v0

    aget v4, v4, v5

    if-eq v3, v4, :cond_2

    return v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v7

    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Ints$IntArrayAsList;->get(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/common/primitives/Ints;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Ints;->-wrap0([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Ints;->-wrap1([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public set(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v2, p1

    aget v0, v1, v2

    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int v3, v1, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Ints$IntArrayAsList;->set(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/primitives/Ints$IntArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    return-object v1
.end method

.method toIntArray()[I
    .locals 5

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    new-array v0, v1, [I

    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

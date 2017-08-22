.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;
    }
.end annotation


# static fields
.field private static final asciiDigits:[B


# direct methods
.method static synthetic -wrap0([IIII)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([IIII)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x30

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs concat([[I)[I
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x0

    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    array-length v7, v0

    add-int/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v3, v1, [I

    const/4 v2, 0x0

    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    array-length v7, v0

    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v0

    add-int/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public static hashCode(I)I
    .locals 0

    return p0
.end method

.method private static indexOf([IIII)I
    .locals 2

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private static lastIndexOf([IIII)I
    .locals 2

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static varargs min([I)I
    .locals 4

    const/4 v3, 0x0

    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    aget v1, p0, v3

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget v2, p0, v0

    if-ge v2, v1, :cond_0

    aget v1, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static saturatedCast(J)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 v0, -0x80000000

    return v0

    :cond_1
    long-to-int v0, p0

    return v0
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    instance-of v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v4, :cond_0

    check-cast p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->toIntArray()[I

    move-result-object v4

    return-object v4

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v3, v1

    new-array v0, v3, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

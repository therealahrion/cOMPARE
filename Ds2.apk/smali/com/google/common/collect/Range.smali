.class public final Lcom/google/common/collect/Range;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Range$1;,
        Lcom/google/common/collect/Range$2;,
        Lcom/google/common/collect/Range$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -com-google-common-collect-BoundTypeSwitchesValues:[I

.field private static final ALL:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOWER_BOUND_FN:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Range;",
            "Lcom/google/common/collect/Cut;",
            ">;"
        }
    .end annotation
.end field

.field static final RANGE_LEX_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<",
            "Lcom/google/common/collect/Range",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final UPPER_BOUND_FN:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Range;",
            "Lcom/google/common/collect/Cut;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final lowerBound:Lcom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation
.end field

.field final upperBound:Lcom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-google-common-collect-BoundTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/google/common/collect/Range;->-com-google-common-collect-BoundTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/collect/Range;->-com-google-common-collect-BoundTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/BoundType;->values()[Lcom/google/common/collect/BoundType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-virtual {v1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-virtual {v1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/google/common/collect/Range;->-com-google-common-collect-BoundTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/Range$1;

    invoke-direct {v0}, Lcom/google/common/collect/Range$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range;->LOWER_BOUND_FN:Lcom/google/common/base/Function;

    new-instance v0, Lcom/google/common/collect/Range$2;

    invoke-direct {v0}, Lcom/google/common/collect/Range$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range;->UPPER_BOUND_FN:Lcom/google/common/base/Function;

    new-instance v0, Lcom/google/common/collect/Range$3;

    invoke-direct {v0}, Lcom/google/common/collect/Range$3;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range;->RANGE_LEX_ORDERING:Lcom/google/common/collect/Ordering;

    new-instance v0, Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    sput-object v0, Lcom/google/common/collect/Range;->ALL:Lcom/google/common/collect/Range;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Cut",
            "<TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->toString(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    if-eq p2, v0, :cond_0

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Cut;

    iput-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Cut;

    iput-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    return-void
.end method

.method public static all()Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/Range;->ALL:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method public static atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method static compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Cut",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Range;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    return-object v0
.end method

.method public static downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Range;->-getcom-google-common-collect-BoundTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {p0}, Lcom/google/common/collect/Range;->greaterThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/google/common/collect/Range;->atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greaterThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static lessThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            "TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne p1, v2, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne p3, v2, :cond_1

    invoke-static {p2}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    goto :goto_1
.end method

.method private static toString(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<*>;",
            "Lcom/google/common/collect/Cut",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Cut;->describeAsLowerBound(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x2025

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Cut;->describeAsUpperBound(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Range;->-getcom-google-common-collect-BoundTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {p0}, Lcom/google/common/collect/Range;->lessThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/google/common/collect/Range;->atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public apply(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->apply(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/common/collect/Range;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v2, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v3, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v2, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hasLowerBound()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpperBound()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0}, Lcom/google/common/collect/Cut;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1}, Lcom/google/common/collect/Cut;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    iget-object v4, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    iget-object v4, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v3

    if-ltz v0, :cond_0

    if-gtz v3, :cond_0

    return-object p0

    :cond_0
    if-gtz v0, :cond_1

    if-ltz v3, :cond_1

    return-object p1

    :cond_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    :goto_0
    if-gtz v3, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    :goto_1
    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v4

    return-object v4

    :cond_2
    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    goto :goto_1
.end method

.method public isConnected(Lcom/google/common/collect/Range;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v2, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v2, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public lowerEndpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0}, Lcom/google/common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/Range;->ALL:Lcom/google/common/collect/Range;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->toString(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upperEndpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0}, Lcom/google/common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

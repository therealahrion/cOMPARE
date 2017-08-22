.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$EntrySet;,
        Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient entries:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient table:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method constructor <init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    const-wide v8, 0x3ff3333333333333L    # 1.2

    invoke-static {p1, v8, v9}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v0, p2, v1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v7

    iget v8, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int v5, v7, v8

    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v2, v7, v5

    if-nez v2, :cond_0

    move-object v4, v0

    :goto_1
    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    aput-object v4, v7, v5

    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    aput-object v4, v7, v1

    invoke-direct {p0, v3, v4, v2}, Lcom/google/common/collect/RegularImmutableMap;->checkNoConflictInBucket(Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;

    invoke-direct {v4, v0, v2}, Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;-><init>(Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    array-length v5, p1

    invoke-direct {p0, v5}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v9

    iput-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    const-wide v10, 0x3ff3333333333333L    # 1.2

    invoke-static {v5, v10, v11}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v9

    iput-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    add-int/lit8 v9, v7, -0x1

    iput v9, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, p1, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v9

    iget v10, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int v6, v9, v10

    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v2, v9, v6

    if-nez v2, :cond_0

    new-instance v4, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v4, v3, v8}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    aput-object v4, v9, v6

    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    aput-object v4, v9, v1

    invoke-direct {p0, v3, v4, v2}, Lcom/google/common/collect/RegularImmutableMap;->checkNoConflictInBucket(Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;

    invoke-direct {v4, v3, v8, v2}, Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private checkNoConflictInBucket(Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    const-string/jumbo v1, "key"

    invoke-static {v0, v1, p2, p3}, Lcom/google/common/collect/RegularImmutableMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    new-array v0, p1, [Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;Lcom/google/common/collect/RegularImmutableMap$EntrySet;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v3

    iget v4, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int v2, v3, v4

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v1, v3, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    array-length v0, v0

    return v0
.end method

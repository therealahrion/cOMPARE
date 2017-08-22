.class Lcom/google/common/collect/RegularImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableBiMap$Inverse;,
        Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;,
        Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TK;TV;>;"
    }
.end annotation


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

.field private final transient hashCode:I

.field private transient inverse:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private final transient keyTable:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient valueTable:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method static synthetic -get1(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method static synthetic -get2(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    return v0
.end method

.method static synthetic -get3(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method constructor <init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<**>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    const-wide v22, 0x3ff3333333333333L    # 1.2

    move/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v16

    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    invoke-static/range {v16 .. v16}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v12

    invoke-static/range {v16 .. v16}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    move/from16 v0, p1

    if-ge v7, v0, :cond_5

    aget-object v5, p2, v7

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static {v11}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v23, v0

    and-int v9, v22, v23

    invoke-static/range {v20 .. v20}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v23, v0

    and-int v18, v22, v23

    aget-object v14, v12, v9

    move-object v10, v14

    :goto_1
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    const/16 v22, 0x0

    :goto_2
    const-string/jumbo v23, "key"

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5, v10}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v10

    goto :goto_1

    :cond_0
    const/16 v22, 0x1

    goto :goto_2

    :cond_1
    aget-object v15, v21, v18

    move-object/from16 v19, v15

    :goto_3
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v22, 0x0

    :goto_4
    const-string/jumbo v23, "value"

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    invoke-virtual/range {v19 .. v19}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v19

    goto :goto_3

    :cond_2
    const/16 v22, 0x1

    goto :goto_4

    :cond_3
    if-nez v14, :cond_4

    if-nez v15, :cond_4

    move-object v13, v5

    :goto_5
    aput-object v13, v12, v9

    aput-object v13, v21, v18

    aput-object v13, v4, v7

    xor-int v22, v11, v20

    add-int v6, v6, v22

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v13, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    invoke-direct {v13, v5, v14, v15}, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    goto :goto_5

    :cond_5
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return-void
.end method

.method private static createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    new-array v0, p0, [Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
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
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$1;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;)V

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
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v2

    iget v3, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int v0, v2, v3

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v1, v2, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$Inverse;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    :cond_0
    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    array-length v0, v0

    return v0
.end method

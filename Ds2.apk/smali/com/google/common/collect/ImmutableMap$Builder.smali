.class public Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    array-length v0, v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableMap;-><init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    aput-object v0, v1, v2

    return-object p0
.end method

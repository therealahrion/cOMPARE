.class abstract Lcom/google/common/collect/HashBiMap$Itr;
.super Ljava/lang/Object;
.source "HashBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field next:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextBucket:I

.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;

.field toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->-get1(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->-get1(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$Itr;->checkForConcurrentModification()V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    if-eqz v0, :cond_1

    return v3

    :cond_0
    iget v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    :cond_1
    iget v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->-get0(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->-get0(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->-get0(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    return v3

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$Itr;->checkForConcurrentModification()V

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Itr;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/HashBiMap$Itr;->output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method abstract output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)TT;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$Itr;->checkForConcurrentModification()V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v0, v1}, Lcom/google/common/collect/HashBiMap;->-wrap4(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->-get1(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    iput-object v2, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

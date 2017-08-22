.class final Lcom/google/common/collect/ByFunctionOrdering;
.super Lcom/google/common/collect/Ordering;
.source "ByFunctionOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering",
        "<TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final function:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<TF;+TT;>;"
        }
    .end annotation
.end field

.field final ordering:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Function;Lcom/google/common/collect/Ordering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function",
            "<TF;+TT;>;",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/Function;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Ordering;

    iput-object v0, p0, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/Ordering;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/Ordering;

    iget-object v1, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/Function;

    invoke-interface {v1, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/Function;

    invoke-interface {v2, p2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Lcom/google/common/collect/ByFunctionOrdering;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ByFunctionOrdering;

    iget-object v2, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/Function;

    iget-object v3, v0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/Function;

    invoke-interface {v2, v3}, Lcom/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/Ordering;

    iget-object v2, v0, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Ordering;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/Function;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/Ordering;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

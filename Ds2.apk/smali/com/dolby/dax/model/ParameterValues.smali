.class public abstract Lcom/dolby/dax/model/ParameterValues;
.super Ljava/lang/Object;
.source "ParameterValues.java"


# instance fields
.field protected dirty:Z

.field protected final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/dolby/dax/model/Parameter;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/dolby/dax/model/ParameterValues;->values:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/dax/model/ParameterValues;->dirty:Z

    return-void
.end method


# virtual methods
.method protected checkAndUpdate(Lcom/dolby/dax/model/Parameter;[I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/dolby/dax/model/ParameterValues;->getValidParams()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            "[I>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dolby/dax/model/ParameterValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    instance-of v5, p1, Lcom/dolby/dax/model/ParameterValues;

    if-nez v5, :cond_1

    return v8

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/dax/model/ParameterValues;

    iget-object v5, p0, Lcom/dolby/dax/model/ParameterValues;->values:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    iget-object v6, v0, Lcom/dolby/dax/model/ParameterValues;->values:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    return v8

    :cond_2
    iget-object v5, p0, Lcom/dolby/dax/model/ParameterValues;->values:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v5, v0, Lcom/dolby/dax/model/ParameterValues;->values:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_4
    return v8

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-ne v5, v6, :cond_6

    move v5, v7

    :goto_0
    return v5

    :cond_6
    move v5, v8

    goto :goto_0
.end method

.method public get(Lcom/dolby/dax/model/Parameter;)[I
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/ParameterValues;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public abstract getValidParams()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            ">;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/ParameterValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/dax/model/ParameterValues;->dirty:Z

    return v0
.end method

.method public set(Lcom/dolby/dax/model/Parameter;[I)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/ParameterValues;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/dax/model/ParameterValues;->dirty:Z

    return-void
.end method

.method public setDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/dax/model/ParameterValues;->dirty:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ParameterValues{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/dax/model/ParameterValues;->valuesToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected valuesToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/dolby/dax/model/ParameterValues$1;

    invoke-direct {v0, p0}, Lcom/dolby/dax/model/ParameterValues$1;-><init>(Lcom/dolby/dax/model/ParameterValues;)V

    const-string/jumbo v1, ", "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolby/dax/model/ParameterValues;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

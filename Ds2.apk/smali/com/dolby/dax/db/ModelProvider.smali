.class public abstract Lcom/dolby/dax/db/ModelProvider;
.super Ljava/lang/Object;
.source "ModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/dax/db/ModelProvider$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelImpl::",
        "Lcom/dolby/dax/model/Model;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final toIntFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dolby/dax/db/ModelProvider$1;

    invoke-direct {v0}, Lcom/dolby/dax/db/ModelProvider$1;-><init>()V

    sput-object v0, Lcom/dolby/dax/db/ModelProvider;->toIntFunction:Lcom/google/common/base/Function;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/db/ModelProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method static varargs defineColumns(Ljava/util/Set;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/common/base/Functions;->toStringFunction()Lcom/google/common/base/Function;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method static readParamValues(Lcom/dolby/dax/model/ParameterValues;Landroid/database/Cursor;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/dolby/dax/model/ParameterValues;->getValidParams()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v0, p2

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolby/dax/model/Parameter;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dolby/dax/db/ModelProvider;->stringToValues(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static stringToValues(Ljava/lang/String;)[I
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2

    :cond_0
    const-string/jumbo v2, ", "

    invoke-static {v2}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    sget-object v2, Lcom/dolby/dax/db/ModelProvider;->toIntFunction:Lcom/google/common/base/Function;

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v2

    return-object v2
.end method

.method static valuesToString([I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static varargs whereEquals([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " = ? AND "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static writeParamValues(Lcom/dolby/dax/model/ParameterValues;Landroid/content/ContentValues;)V
    .locals 4

    invoke-virtual {p0}, Lcom/dolby/dax/model/ParameterValues;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolby/dax/model/Parameter;

    invoke-virtual {v2}, Lcom/dolby/dax/model/Parameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2}, Lcom/dolby/dax/db/ModelProvider;->valuesToString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public create(Lcom/dolby/dax/model/Model;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelImpl;)V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/dolby/dax/db/ModelProvider;->write(Lcom/dolby/dax/model/Model;Z)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v2, p0, Lcom/dolby/dax/db/ModelProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProvider;->getTable()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method protected abstract getColumns()[Ljava/lang/String;
.end method

.method protected abstract getTable()Ljava/lang/String;
.end method

.method protected varargs load(Ljava/lang/String;[Ljava/lang/String;)Lcom/dolby/dax/model/Model;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TModelImpl;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProvider;->getTable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/dolby/dax/db/ModelProvider;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/dolby/dax/db/ModelProvider;->read(Landroid/database/Cursor;)Lcom/dolby/dax/model/Model;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/dolby/dax/model/Model;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method protected varargs query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/dolby/dax/db/ModelProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProvider;->getColumns()[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method protected varargs queryIter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<TModelImpl;>;"
        }
    .end annotation

    new-instance v0, Lcom/dolby/dax/db/QueryIterator;

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProvider;->getTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/dolby/dax/db/ModelProvider;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolby/dax/db/QueryIterator;-><init>(Lcom/dolby/dax/db/ModelProvider;Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected abstract read(Landroid/database/Cursor;)Lcom/dolby/dax/model/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TModelImpl;"
        }
    .end annotation
.end method

.method public save(Lcom/dolby/dax/model/Model;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelImpl;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/dolby/dax/model/Model;->isDirty()Z

    move-result v6

    if-nez v6, :cond_0

    return v4

    :cond_0
    invoke-interface {p1, v5}, Lcom/dolby/dax/model/Model;->setDirty(Z)V

    new-array v6, v4, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    aput-object v7, v6, v5

    invoke-static {v6}, Lcom/dolby/dax/db/ModelProvider;->whereEquals([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {p1}, Lcom/dolby/dax/model/Model;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-virtual {p0, p1, v5}, Lcom/dolby/dax/db/ModelProvider;->write(Lcom/dolby/dax/model/Model;Z)Landroid/content/ContentValues;

    move-result-object v1

    iget-object v6, p0, Lcom/dolby/dax/db/ModelProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProvider;->getTable()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_1

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method protected abstract write(Lcom/dolby/dax/model/Model;Z)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelImpl;Z)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

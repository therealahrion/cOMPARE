.class public abstract Lcom/dolby/dax/db/ModelProviderWithDefault;
.super Lcom/dolby/dax/db/ModelProvider;
.source "ModelProviderWithDefault.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelImpl::",
        "Lcom/dolby/dax/model/Model;",
        ">",
        "Lcom/dolby/dax/db/ModelProvider",
        "<TModelImpl;>;"
    }
.end annotation


# static fields
.field static final cacheKeyJoiner:Lcom/google/common/base/Joiner;


# instance fields
.field protected final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TModelImpl;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/db/ModelProviderWithDefault;->cacheKeyJoiner:Lcom/google/common/base/Joiner;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/dolby/dax/db/ModelProvider;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolby/dax/db/ModelProviderWithDefault;->cache:Ljava/util/Map;

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

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/dolby/dax/db/ModelProviderWithDefault;->write(Lcom/dolby/dax/model/Model;Z)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v2, p0, Lcom/dolby/dax/db/ModelProviderWithDefault;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProviderWithDefault;->getDefaultTable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProviderWithDefault;->getTable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method protected abstract getDefaultTable()Ljava/lang/String;
.end method

.method protected varargs loadDefault(Ljava/lang/String;[Ljava/lang/String;)Lcom/dolby/dax/model/Model;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TModelImpl;"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/dolby/dax/db/ModelProviderWithDefault;->cacheKeyJoiner:Lcom/google/common/base/Joiner;

    invoke-virtual {v4, p2}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/dolby/dax/db/ModelProviderWithDefault;->cache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolby/dax/model/Model;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProviderWithDefault;->getDefaultTable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p2}, Lcom/dolby/dax/db/ModelProviderWithDefault;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/dolby/dax/db/ModelProviderWithDefault;->read(Landroid/database/Cursor;)Lcom/dolby/dax/model/Model;

    move-result-object v2

    iget-object v3, p0, Lcom/dolby/dax/db/ModelProviderWithDefault;->cache:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method protected varargs queryIterDefault(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Iterator;
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

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProviderWithDefault;->getDefaultTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/dolby/dax/db/ModelProviderWithDefault;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolby/dax/db/QueryIterator;-><init>(Lcom/dolby/dax/db/ModelProvider;Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected varargs reset(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const/16 v3, 0x2c

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProviderWithDefault;->getColumns()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "INSERT OR REPLACE INTO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProviderWithDefault;->getTable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dolby/dax/db/ModelProviderWithDefault;->getDefaultTable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/dolby/dax/db/ModelProviderWithDefault;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    return-void
.end method

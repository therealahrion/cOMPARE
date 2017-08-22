.class public Lcom/dolby/dax/db/ConfigProvider;
.super Ljava/lang/Object;
.source "ConfigProvider.java"


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/db/ConfigProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolby/dax/db/ConfigProvider;->cache:Ljava/util/Map;

    return-void
.end method

.method private dbGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v9, p2

    iget-object v0, p0, Lcom/dolby/dax/db/ConfigProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "configuration"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "value"

    aput-object v3, v2, v6

    const-string/jumbo v3, "key = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v9

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private dbSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/dolby/dax/db/ConfigProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "configuration"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method private get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/dolby/dax/db/ConfigProvider;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/dolby/dax/db/ConfigProvider;->dbGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/dolby/dax/db/ConfigProvider;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/dolby/dax/db/ConfigProvider;->dbSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/db/ConfigProvider;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultXmlSignature()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "xml_signature"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/dolby/dax/db/ConfigProvider;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedProfile()Lcom/dolby/dax/model/ProfileType;
    .locals 2

    const-string/jumbo v0, "selected_profile"

    sget-object v1, Lcom/dolby/dax/model/ProfileType;->movie:Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v1}, Lcom/dolby/dax/model/ProfileType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolby/dax/db/ConfigProvider;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolby/dax/model/ProfileType;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/ProfileType;

    move-result-object v0

    return-object v0
.end method

.method public isDapOn()Z
    .locals 2

    const-string/jumbo v0, "is_dap_on"

    const-string/jumbo v1, "true"

    invoke-direct {p0, v0, v1}, Lcom/dolby/dax/db/ConfigProvider;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setDapOn(Z)V
    .locals 2

    const-string/jumbo v0, "is_dap_on"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolby/dax/db/ConfigProvider;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultXmlSignature(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "xml_signature"

    invoke-direct {p0, v0, p1}, Lcom/dolby/dax/db/ConfigProvider;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedProfile(Lcom/dolby/dax/model/ProfileType;)V
    .locals 2

    const-string/jumbo v0, "selected_profile"

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfileType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolby/dax/db/ConfigProvider;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

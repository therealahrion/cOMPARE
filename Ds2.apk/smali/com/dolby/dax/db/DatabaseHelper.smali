.class public Lcom/dolby/dax/db/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "dax.sqlite3"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private boolColumn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "%1$s INTEGER CHECK (%1$s = 0 OR %1$s = 1)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs columns([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static varargs constraints([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private foreignKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " NOT NULL REFERENCES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stringColumn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " STRING NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private table(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v2, ",\n"

    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " INTEGER PRIMARY KEY AUTOINCREMENT,\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p4}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " STRING NOT NULL,\n"

    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " STRING NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p5, :cond_1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p5}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private table2(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/dolby/dax/db/DatabaseHelper;->table(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/dolby/dax/db/DatabaseHelper;->table(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static varargs unique([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNIQUE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method createAvailableTuningsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE VIEW available_tunings AS  SELECT device_tunings._id AS _id,device_tunings.device AS device,device_tunings.port AS port,tunings.name AS tuning FROM device_tunings JOIN tunings ON device_tunings.tuning_id = tunings._id WHERE device_tunings.device NOT IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', \'"

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-static {}, Lcom/dolby/dax/model/Port;->values()[Lcom/dolby/dax/model/Port;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v2, "configuration"

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "key"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "value"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->columns([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-array v0, v8, [Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v3, "key"

    aput-object v3, v1, v7

    invoke-static {v1}, Lcom/dolby/dax/db/DatabaseHelper;->unique([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->constraints([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolby/dax/db/DatabaseHelper;->table(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    const-string/jumbo v2, "ieq_presets"

    sget-object v3, Lcom/dolby/dax/model/IeqPreset;->validParams:Ljava/util/Set;

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "preset_type"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->columns([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-array v0, v8, [Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v5, "preset_type"

    aput-object v5, v1, v7

    invoke-static {v1}, Lcom/dolby/dax/db/DatabaseHelper;->unique([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->constraints([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolby/dax/db/DatabaseHelper;->table(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    const-string/jumbo v2, "default_profiles"

    const-string/jumbo v3, "profiles"

    sget-object v4, Lcom/dolby/dax/model/Profile;->validParams:Ljava/util/Set;

    new-array v0, v11, [Ljava/lang/String;

    const-string/jumbo v1, "profile_type"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "name"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string/jumbo v1, "selected_ieq_preset_type"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string/jumbo v1, "selected_geq_preset_type"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->columns([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-array v0, v8, [Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v6, "profile_type"

    aput-object v6, v1, v7

    invoke-static {v1}, Lcom/dolby/dax/db/DatabaseHelper;->unique([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->constraints([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/dolby/dax/db/DatabaseHelper;->table2(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    const-string/jumbo v2, "default_geq_presets"

    const-string/jumbo v3, "geq_presets"

    sget-object v4, Lcom/dolby/dax/model/GeqPreset;->validParams:Ljava/util/Set;

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "preset_type"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "profile_type"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->columns([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-array v0, v8, [Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v6, "preset_type"

    aput-object v6, v1, v7

    const-string/jumbo v6, "profile_type"

    aput-object v6, v1, v8

    invoke-static {v1}, Lcom/dolby/dax/db/DatabaseHelper;->unique([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->constraints([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/dolby/dax/db/DatabaseHelper;->table2(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    const-string/jumbo v2, "default_profile_endpoints"

    const-string/jumbo v3, "profile_endpoints"

    sget-object v4, Lcom/dolby/dax/model/ProfileEndpoint;->validParams:Ljava/util/Set;

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "profile_type"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "endpoint"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->columns([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-array v0, v8, [Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v6, "profile_type"

    aput-object v6, v1, v7

    const-string/jumbo v6, "endpoint"

    aput-object v6, v1, v8

    invoke-static {v1}, Lcom/dolby/dax/db/DatabaseHelper;->unique([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->constraints([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/dolby/dax/db/DatabaseHelper;->table2(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    const-string/jumbo v2, "default_profile_ports"

    const-string/jumbo v3, "profile_ports"

    sget-object v4, Lcom/dolby/dax/model/ProfilePort;->validParams:Ljava/util/Set;

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "profile_type"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "port"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->columns([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-array v0, v8, [Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v6, "profile_type"

    aput-object v6, v1, v7

    const-string/jumbo v6, "port"

    aput-object v6, v1, v8

    invoke-static {v1}, Lcom/dolby/dax/db/DatabaseHelper;->unique([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->constraints([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/dolby/dax/db/DatabaseHelper;->table2(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    const-string/jumbo v2, "tunings"

    sget-object v3, Lcom/dolby/dax/model/Tuning;->validParams:Ljava/util/Set;

    new-array v0, v11, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "endpoint"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string/jumbo v1, "is_mono"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->boolColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string/jumbo v1, "is_readonly"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->boolColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->columns([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-array v0, v8, [Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v5, "name"

    aput-object v5, v1, v7

    invoke-static {v1}, Lcom/dolby/dax/db/DatabaseHelper;->unique([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->constraints([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolby/dax/db/DatabaseHelper;->table(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    const-string/jumbo v2, "device_tunings"

    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v1, "device"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "port"

    invoke-direct {p0, v1}, Lcom/dolby/dax/db/DatabaseHelper;->stringColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string/jumbo v1, "tuning_id"

    const-string/jumbo v3, "tunings"

    invoke-direct {p0, v1, v3}, Lcom/dolby/dax/db/DatabaseHelper;->foreignKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->columns([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-array v0, v8, [Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v3, "device"

    aput-object v3, v1, v7

    invoke-static {v1}, Lcom/dolby/dax/db/DatabaseHelper;->unique([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/dolby/dax/db/DatabaseHelper;->constraints([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolby/dax/db/DatabaseHelper;->table(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/dolby/dax/db/DatabaseHelper;->createAvailableTuningsView(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolby/dax/db/DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string/jumbo v0, "DROP TABLE IF EXISTS configuration"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS default_profile_endpoints"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS profile_endpoints"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS default_profile_ports"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS profile_ports"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS default_profiles"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS profiles"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS ieq_presets"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS default_geq_presets"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS geq_presets"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS device_tunings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS tunings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP VIEW IF EXISTS available_tunings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/dolby/dax/db/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

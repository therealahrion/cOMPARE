.class public Lcom/dolby/dax/db/DeviceTuningProvider;
.super Ljava/lang/Object;
.source "DeviceTuningProvider.java"


# instance fields
.field final dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/db/DeviceTuningProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public create(Lcom/dolby/dax/model/DeviceTuning;)Z
    .locals 8

    const/4 v3, 0x1

    const-string/jumbo v1, "INSERT INTO device_tunings(device,port,tuning_id) VALUES (?, ?, (SELECT _id FROM tunings WHERE name = ?));"

    iget-object v4, p0, Lcom/dolby/dax/db/DeviceTuningProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dolby/dax/model/DeviceTuning;->getDevice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/dolby/dax/model/DeviceTuning;->getPort()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/dolby/dax/model/DeviceTuning;->getTuning()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)Lcom/dolby/dax/model/DeviceTuning;
    .locals 6

    const-string/jumbo v4, "SELECT device_tunings._id,device_tunings.device,device_tunings.port,tunings.name FROM device_tunings JOIN tunings ON (tunings._id = device_tunings.tuning_id) WHERE device_tunings.device = ?;"

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    iget-object v5, p0, Lcom/dolby/dax/db/DeviceTuningProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v1}, Lcom/dolby/dax/db/DeviceTuningProvider;->read(Landroid/database/Cursor;)Lcom/dolby/dax/model/DeviceTuning;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v3

    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method protected read(Landroid/database/Cursor;)Lcom/dolby/dax/model/DeviceTuning;
    .locals 7

    new-instance v1, Lcom/dolby/dax/model/DeviceTuning;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/dolby/dax/model/DeviceTuning;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

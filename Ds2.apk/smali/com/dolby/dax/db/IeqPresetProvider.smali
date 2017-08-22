.class public Lcom/dolby/dax/db/IeqPresetProvider;
.super Lcom/dolby/dax/db/ModelProvider;
.source "IeqPresetProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolby/dax/db/ModelProvider",
        "<",
        "Lcom/dolby/dax/model/IeqPreset;",
        ">;"
    }
.end annotation


# static fields
.field private static final columns:[Ljava/lang/String;


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dolby/dax/model/PresetType;",
            "Lcom/dolby/dax/model/IeqPreset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/dolby/dax/model/IeqPreset;->validParams:Ljava/util/Set;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "preset_type"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/dolby/dax/db/IeqPresetProvider;->defineColumns(Ljava/util/Set;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/db/IeqPresetProvider;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/dolby/dax/db/ModelProvider;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/dolby/dax/model/PresetType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/dolby/dax/db/IeqPresetProvider;->cache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected getColumns()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dolby/dax/db/IeqPresetProvider;->columns:[Ljava/lang/String;

    return-object v0
.end method

.method protected getTable()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ieq_presets"

    return-object v0
.end method

.method public load(Lcom/dolby/dax/model/PresetType;)Lcom/dolby/dax/model/IeqPreset;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/dolby/dax/db/IeqPresetProvider;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/IeqPreset;

    if-nez v0, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "preset_type"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/dolby/dax/db/IeqPresetProvider;->whereEquals([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dolby/dax/model/PresetType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/dolby/dax/db/IeqPresetProvider;->load(Ljava/lang/String;[Ljava/lang/String;)Lcom/dolby/dax/model/Model;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/IeqPreset;

    iget-object v1, p0, Lcom/dolby/dax/db/IeqPresetProvider;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected read(Landroid/database/Cursor;)Lcom/dolby/dax/model/IeqPreset;
    .locals 5

    new-instance v1, Lcom/dolby/dax/model/IeqPreset;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dolby/dax/model/PresetType;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/PresetType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/dolby/dax/model/IeqPreset;-><init>(JLcom/dolby/dax/model/PresetType;)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/dolby/dax/db/IeqPresetProvider;->readParamValues(Lcom/dolby/dax/model/ParameterValues;Landroid/database/Cursor;I)V

    return-object v1
.end method

.method protected bridge synthetic read(Landroid/database/Cursor;)Lcom/dolby/dax/model/Model;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/db/IeqPresetProvider;->read(Landroid/database/Cursor;)Lcom/dolby/dax/model/IeqPreset;

    move-result-object v0

    return-object v0
.end method

.method protected write(Lcom/dolby/dax/model/IeqPreset;Z)Landroid/content/ContentValues;
    .locals 3

    iget-object v1, p0, Lcom/dolby/dax/db/IeqPresetProvider;->cache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/dolby/dax/model/IeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    const-string/jumbo v1, "preset_type"

    invoke-virtual {p1}, Lcom/dolby/dax/model/IeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolby/dax/model/PresetType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v0}, Lcom/dolby/dax/db/IeqPresetProvider;->writeParamValues(Lcom/dolby/dax/model/ParameterValues;Landroid/content/ContentValues;)V

    return-object v0
.end method

.method protected bridge synthetic write(Lcom/dolby/dax/model/Model;Z)Landroid/content/ContentValues;
    .locals 1

    check-cast p1, Lcom/dolby/dax/model/IeqPreset;

    invoke-virtual {p0, p1, p2}, Lcom/dolby/dax/db/IeqPresetProvider;->write(Lcom/dolby/dax/model/IeqPreset;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/dolby/dax/db/GeqPresetProvider;
.super Lcom/dolby/dax/db/ModelProviderWithDefault;
.source "GeqPresetProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolby/dax/db/ModelProviderWithDefault",
        "<",
        "Lcom/dolby/dax/model/GeqPreset;",
        ">;"
    }
.end annotation


# static fields
.field private static final columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/dolby/dax/model/GeqPreset;->validParams:Ljava/util/Set;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "preset_type"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "profile_type"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/dolby/dax/db/GeqPresetProvider;->defineColumns(Ljava/util/Set;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/db/GeqPresetProvider;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dolby/dax/db/ModelProviderWithDefault;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method


# virtual methods
.method protected getColumns()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dolby/dax/db/GeqPresetProvider;->columns:[Ljava/lang/String;

    return-object v0
.end method

.method protected getDefaultTable()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "default_geq_presets"

    return-object v0
.end method

.method protected getTable()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "geq_presets"

    return-object v0
.end method

.method public load(Lcom/dolby/dax/model/PresetType;Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/GeqPreset;
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "preset_type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "profile_type"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/dolby/dax/db/GeqPresetProvider;->whereEquals([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dolby/dax/model/PresetType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/dolby/dax/model/ProfileType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/dolby/dax/db/GeqPresetProvider;->load(Ljava/lang/String;[Ljava/lang/String;)Lcom/dolby/dax/model/Model;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/GeqPreset;

    return-object v0
.end method

.method public load(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/GeqPreset;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "profile_type"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/dolby/dax/db/GeqPresetProvider;->whereEquals([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfileType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/dolby/dax/db/GeqPresetProvider;->queryIter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public loadDefault(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/GeqPreset;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "profile_type"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/dolby/dax/db/GeqPresetProvider;->whereEquals([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfileType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/dolby/dax/db/GeqPresetProvider;->queryIterDefault(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected read(Landroid/database/Cursor;)Lcom/dolby/dax/model/GeqPreset;
    .locals 6

    new-instance v1, Lcom/dolby/dax/model/GeqPreset;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dolby/dax/model/PresetType;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/PresetType;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dolby/dax/model/ProfileType;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/ProfileType;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dolby/dax/model/GeqPreset;-><init>(JLcom/dolby/dax/model/PresetType;Lcom/dolby/dax/model/ProfileType;)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/dolby/dax/db/GeqPresetProvider;->readParamValues(Lcom/dolby/dax/model/ParameterValues;Landroid/database/Cursor;I)V

    return-object v1
.end method

.method protected bridge synthetic read(Landroid/database/Cursor;)Lcom/dolby/dax/model/Model;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/db/GeqPresetProvider;->read(Landroid/database/Cursor;)Lcom/dolby/dax/model/GeqPreset;

    move-result-object v0

    return-object v0
.end method

.method public reset(Lcom/dolby/dax/model/PresetType;Lcom/dolby/dax/model/ProfileType;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "preset_type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "profile_type"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/dolby/dax/db/GeqPresetProvider;->whereEquals([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dolby/dax/model/PresetType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/dolby/dax/model/ProfileType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/dolby/dax/db/GeqPresetProvider;->reset(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected write(Lcom/dolby/dax/model/GeqPreset;Z)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    const-string/jumbo v1, "preset_type"

    invoke-virtual {p1}, Lcom/dolby/dax/model/GeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolby/dax/model/PresetType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "profile_type"

    invoke-virtual {p1}, Lcom/dolby/dax/model/GeqPreset;->getProfile()Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolby/dax/model/ProfileType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v0}, Lcom/dolby/dax/db/GeqPresetProvider;->writeParamValues(Lcom/dolby/dax/model/ParameterValues;Landroid/content/ContentValues;)V

    return-object v0
.end method

.method protected bridge synthetic write(Lcom/dolby/dax/model/Model;Z)Landroid/content/ContentValues;
    .locals 1

    check-cast p1, Lcom/dolby/dax/model/GeqPreset;

    invoke-virtual {p0, p1, p2}, Lcom/dolby/dax/db/GeqPresetProvider;->write(Lcom/dolby/dax/model/GeqPreset;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

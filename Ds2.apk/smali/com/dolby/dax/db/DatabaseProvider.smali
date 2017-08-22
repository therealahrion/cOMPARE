.class public Lcom/dolby/dax/db/DatabaseProvider;
.super Ljava/lang/Object;
.source "DatabaseProvider.java"

# interfaces
.implements Lcom/dolby/dax/db/Provider;


# instance fields
.field private final configProvider:Lcom/dolby/dax/db/ConfigProvider;

.field private final context:Landroid/content/Context;

.field private final dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

.field private final deviceTuningProvider:Lcom/dolby/dax/db/DeviceTuningProvider;

.field private final geqPresetProvider:Lcom/dolby/dax/db/GeqPresetProvider;

.field private final ieqPresetProvider:Lcom/dolby/dax/db/IeqPresetProvider;

.field private final profileEndpointProvider:Lcom/dolby/dax/db/ProfileEndpointProvider;

.field private final profilePortProvider:Lcom/dolby/dax/db/ProfilePortProvider;

.field private final profileProvider:Lcom/dolby/dax/db/ProfileProvider;

.field private final tuningProvider:Lcom/dolby/dax/db/TuningProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/db/DatabaseProvider;->context:Landroid/content/Context;

    new-instance v0, Lcom/dolby/dax/db/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/dolby/dax/db/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    new-instance v0, Lcom/dolby/dax/db/ConfigProvider;

    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/dolby/dax/db/ConfigProvider;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->configProvider:Lcom/dolby/dax/db/ConfigProvider;

    new-instance v0, Lcom/dolby/dax/db/IeqPresetProvider;

    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/dolby/dax/db/IeqPresetProvider;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->ieqPresetProvider:Lcom/dolby/dax/db/IeqPresetProvider;

    new-instance v0, Lcom/dolby/dax/db/GeqPresetProvider;

    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/dolby/dax/db/GeqPresetProvider;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->geqPresetProvider:Lcom/dolby/dax/db/GeqPresetProvider;

    new-instance v0, Lcom/dolby/dax/db/ProfileProvider;

    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/dolby/dax/db/ProfileProvider;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileProvider:Lcom/dolby/dax/db/ProfileProvider;

    new-instance v0, Lcom/dolby/dax/db/ProfileEndpointProvider;

    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/dolby/dax/db/ProfileEndpointProvider;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileEndpointProvider:Lcom/dolby/dax/db/ProfileEndpointProvider;

    new-instance v0, Lcom/dolby/dax/db/ProfilePortProvider;

    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/dolby/dax/db/ProfilePortProvider;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profilePortProvider:Lcom/dolby/dax/db/ProfilePortProvider;

    new-instance v0, Lcom/dolby/dax/db/TuningProvider;

    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/dolby/dax/db/TuningProvider;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->tuningProvider:Lcom/dolby/dax/db/TuningProvider;

    new-instance v0, Lcom/dolby/dax/db/DeviceTuningProvider;

    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/dolby/dax/db/DeviceTuningProvider;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->deviceTuningProvider:Lcom/dolby/dax/db/DeviceTuningProvider;

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/dolby/dax/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/dolby/dax/db/DatabaseHelper;->close()V

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/dolby/dax/db/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method public commitTransaction()V
    .locals 2

    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/dolby/dax/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public create(Lcom/dolby/dax/model/DeviceTuning;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->deviceTuningProvider:Lcom/dolby/dax/db/DeviceTuningProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/DeviceTuningProvider;->create(Lcom/dolby/dax/model/DeviceTuning;)Z

    return-void
.end method

.method public create(Lcom/dolby/dax/model/GeqPreset;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->geqPresetProvider:Lcom/dolby/dax/db/GeqPresetProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/GeqPresetProvider;->create(Lcom/dolby/dax/model/Model;)V

    return-void
.end method

.method public create(Lcom/dolby/dax/model/IeqPreset;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->ieqPresetProvider:Lcom/dolby/dax/db/IeqPresetProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/IeqPresetProvider;->create(Lcom/dolby/dax/model/Model;)V

    return-void
.end method

.method public create(Lcom/dolby/dax/model/Profile;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileProvider:Lcom/dolby/dax/db/ProfileProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfileProvider;->create(Lcom/dolby/dax/model/Model;)V

    return-void
.end method

.method public create(Lcom/dolby/dax/model/ProfileEndpoint;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileEndpointProvider:Lcom/dolby/dax/db/ProfileEndpointProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfileEndpointProvider;->create(Lcom/dolby/dax/model/Model;)V

    return-void
.end method

.method public create(Lcom/dolby/dax/model/ProfilePort;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profilePortProvider:Lcom/dolby/dax/db/ProfilePortProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfilePortProvider;->create(Lcom/dolby/dax/model/Model;)V

    return-void
.end method

.method public create(Lcom/dolby/dax/model/Tuning;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->tuningProvider:Lcom/dolby/dax/db/TuningProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/TuningProvider;->create(Lcom/dolby/dax/model/Model;)V

    return-void
.end method

.method public getDefaultXmlSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->configProvider:Lcom/dolby/dax/db/ConfigProvider;

    invoke-virtual {v0}, Lcom/dolby/dax/db/ConfigProvider;->getDefaultXmlSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->dbHelper:Lcom/dolby/dax/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/dolby/dax/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedProfile()Lcom/dolby/dax/model/ProfileType;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->configProvider:Lcom/dolby/dax/db/ConfigProvider;

    invoke-virtual {v0}, Lcom/dolby/dax/db/ConfigProvider;->getSelectedProfile()Lcom/dolby/dax/model/ProfileType;

    move-result-object v0

    return-object v0
.end method

.method public isDapOn()Z
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->configProvider:Lcom/dolby/dax/db/ConfigProvider;

    invoke-virtual {v0}, Lcom/dolby/dax/db/ConfigProvider;->isDapOn()Z

    move-result v0

    return v0
.end method

.method public loadDefaultGeqPresets(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .locals 1
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

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->geqPresetProvider:Lcom/dolby/dax/db/GeqPresetProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/GeqPresetProvider;->loadDefault(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public loadDefaultProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileProvider:Lcom/dolby/dax/db/ProfileProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfileProvider;->loadDefault(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;

    move-result-object v0

    return-object v0
.end method

.method public loadDefaultProfileEndpoints(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/ProfileEndpoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileEndpointProvider:Lcom/dolby/dax/db/ProfileEndpointProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfileEndpointProvider;->loadDefault(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public loadDefaultProfilePorts(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/ProfilePort;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profilePortProvider:Lcom/dolby/dax/db/ProfilePortProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfilePortProvider;->loadDefault(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public loadGeqPresets(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .locals 1
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

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->geqPresetProvider:Lcom/dolby/dax/db/GeqPresetProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/GeqPresetProvider;->load(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public loadIeqPreset(Lcom/dolby/dax/model/PresetType;)Lcom/dolby/dax/model/IeqPreset;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->ieqPresetProvider:Lcom/dolby/dax/db/IeqPresetProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/IeqPresetProvider;->load(Lcom/dolby/dax/model/PresetType;)Lcom/dolby/dax/model/IeqPreset;

    move-result-object v0

    return-object v0
.end method

.method public loadProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileProvider:Lcom/dolby/dax/db/ProfileProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfileProvider;->load(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;

    move-result-object v0

    return-object v0
.end method

.method public loadProfileEndpoint(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileEndpointProvider:Lcom/dolby/dax/db/ProfileEndpointProvider;

    invoke-virtual {v0, p1, p2}, Lcom/dolby/dax/db/ProfileEndpointProvider;->load(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public loadProfileEndpoints(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/ProfileEndpoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileEndpointProvider:Lcom/dolby/dax/db/ProfileEndpointProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfileEndpointProvider;->load(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public loadProfilePort(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfilePort;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profilePortProvider:Lcom/dolby/dax/db/ProfilePortProvider;

    invoke-virtual {v0, p1, p2}, Lcom/dolby/dax/db/ProfilePortProvider;->load(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfilePort;

    move-result-object v0

    return-object v0
.end method

.method public loadProfilePorts(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/ProfilePort;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profilePortProvider:Lcom/dolby/dax/db/ProfilePortProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfilePortProvider;->load(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public loadTuningForDevice(Ljava/lang/String;)Lcom/dolby/dax/model/Tuning;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->deviceTuningProvider:Lcom/dolby/dax/db/DeviceTuningProvider;

    invoke-virtual {v1, p1}, Lcom/dolby/dax/db/DeviceTuningProvider;->load(Ljava/lang/String;)Lcom/dolby/dax/model/DeviceTuning;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/dolby/dax/db/DatabaseProvider;->tuningProvider:Lcom/dolby/dax/db/TuningProvider;

    invoke-virtual {v0}, Lcom/dolby/dax/model/DeviceTuning;->getTuning()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolby/dax/db/TuningProvider;->load(Ljava/lang/String;)Lcom/dolby/dax/model/Tuning;

    move-result-object v1

    return-object v1
.end method

.method public reset(Lcom/dolby/dax/model/GeqPreset;)Lcom/dolby/dax/model/GeqPreset;
    .locals 3

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->geqPresetProvider:Lcom/dolby/dax/db/GeqPresetProvider;

    invoke-virtual {p1}, Lcom/dolby/dax/model/GeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolby/dax/model/GeqPreset;->getProfile()Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolby/dax/db/GeqPresetProvider;->reset(Lcom/dolby/dax/model/PresetType;Lcom/dolby/dax/model/ProfileType;)V

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->geqPresetProvider:Lcom/dolby/dax/db/GeqPresetProvider;

    invoke-virtual {p1}, Lcom/dolby/dax/model/GeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolby/dax/model/GeqPreset;->getProfile()Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolby/dax/db/GeqPresetProvider;->load(Lcom/dolby/dax/model/PresetType;Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/GeqPreset;

    move-result-object v0

    return-object v0
.end method

.method public reset(Lcom/dolby/dax/model/Profile;)Lcom/dolby/dax/model/Profile;
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileProvider:Lcom/dolby/dax/db/ProfileProvider;

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolby/dax/db/ProfileProvider;->reset(Lcom/dolby/dax/model/ProfileType;)V

    invoke-virtual {p1}, Lcom/dolby/dax/model/Profile;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolby/dax/db/DatabaseProvider;->loadProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;

    move-result-object v0

    return-object v0
.end method

.method public reset(Lcom/dolby/dax/model/ProfileEndpoint;)Lcom/dolby/dax/model/ProfileEndpoint;
    .locals 3

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileEndpointProvider:Lcom/dolby/dax/db/ProfileEndpointProvider;

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfileEndpoint;->getProfileType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfileEndpoint;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolby/dax/db/ProfileEndpointProvider;->reset(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;)V

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfileEndpoint;->getProfileType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfileEndpoint;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dolby/dax/db/DatabaseProvider;->loadProfileEndpoint(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public reset(Lcom/dolby/dax/model/ProfilePort;)Lcom/dolby/dax/model/ProfilePort;
    .locals 3

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profilePortProvider:Lcom/dolby/dax/db/ProfilePortProvider;

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfilePort;->getProfileType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfilePort;->getPort()Lcom/dolby/dax/model/Port;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolby/dax/db/ProfilePortProvider;->reset(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Port;)V

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfilePort;->getProfileType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfilePort;->getPort()Lcom/dolby/dax/model/Port;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dolby/dax/db/DatabaseProvider;->loadProfilePort(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfilePort;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcom/dolby/dax/model/GeqPreset;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->geqPresetProvider:Lcom/dolby/dax/db/GeqPresetProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/GeqPresetProvider;->save(Lcom/dolby/dax/model/Model;)Z

    return-void
.end method

.method public save(Lcom/dolby/dax/model/Profile;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileProvider:Lcom/dolby/dax/db/ProfileProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfileProvider;->save(Lcom/dolby/dax/model/Model;)Z

    return-void
.end method

.method public save(Lcom/dolby/dax/model/ProfileEndpoint;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profileEndpointProvider:Lcom/dolby/dax/db/ProfileEndpointProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfileEndpointProvider;->save(Lcom/dolby/dax/model/Model;)Z

    return-void
.end method

.method public save(Lcom/dolby/dax/model/ProfilePort;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->profilePortProvider:Lcom/dolby/dax/db/ProfilePortProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ProfilePortProvider;->save(Lcom/dolby/dax/model/Model;)Z

    return-void
.end method

.method public setDapOn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->configProvider:Lcom/dolby/dax/db/ConfigProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ConfigProvider;->setDapOn(Z)V

    return-void
.end method

.method public setDefaultXmlSignature(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->configProvider:Lcom/dolby/dax/db/ConfigProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ConfigProvider;->setDefaultXmlSignature(Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedProfile(Lcom/dolby/dax/model/ProfileType;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/DatabaseProvider;->configProvider:Lcom/dolby/dax/db/ConfigProvider;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/db/ConfigProvider;->setSelectedProfile(Lcom/dolby/dax/model/ProfileType;)V

    return-void
.end method

.class public Lcom/dolby/dax/db/TuningProvider;
.super Lcom/dolby/dax/db/ModelProvider;
.source "TuningProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolby/dax/db/ModelProvider",
        "<",
        "Lcom/dolby/dax/model/Tuning;",
        ">;"
    }
.end annotation


# static fields
.field private static final columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/dolby/dax/model/Tuning;->validParams:Ljava/util/Set;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "name"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "endpoint"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "is_mono"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "is_readonly"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/dolby/dax/db/TuningProvider;->defineColumns(Ljava/util/Set;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/db/TuningProvider;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dolby/dax/db/ModelProvider;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method


# virtual methods
.method protected getColumns()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dolby/dax/db/TuningProvider;->columns:[Ljava/lang/String;

    return-object v0
.end method

.method protected getTable()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tunings"

    return-object v0
.end method

.method public load(Ljava/lang/String;)Lcom/dolby/dax/model/Tuning;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/dolby/dax/db/TuningProvider;->whereEquals([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/dolby/dax/db/TuningProvider;->load(Ljava/lang/String;[Ljava/lang/String;)Lcom/dolby/dax/model/Model;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/Tuning;

    return-object v0
.end method

.method protected bridge synthetic read(Landroid/database/Cursor;)Lcom/dolby/dax/model/Model;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/db/TuningProvider;->read(Landroid/database/Cursor;)Lcom/dolby/dax/model/Tuning;

    move-result-object v0

    return-object v0
.end method

.method protected read(Landroid/database/Cursor;)Lcom/dolby/dax/model/Tuning;
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v1, Lcom/dolby/dax/model/Tuning;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dolby/dax/model/Endpoint;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Endpoint;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_1

    :goto_1
    invoke-direct/range {v1 .. v7}, Lcom/dolby/dax/model/Tuning;-><init>(JLjava/lang/String;Lcom/dolby/dax/model/Endpoint;ZZ)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/dolby/dax/db/TuningProvider;->readParamValues(Lcom/dolby/dax/model/ParameterValues;Landroid/database/Cursor;I)V

    return-object v1

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1
.end method

.method protected bridge synthetic write(Lcom/dolby/dax/model/Model;Z)Landroid/content/ContentValues;
    .locals 1

    check-cast p1, Lcom/dolby/dax/model/Tuning;

    invoke-virtual {p0, p1, p2}, Lcom/dolby/dax/db/TuningProvider;->write(Lcom/dolby/dax/model/Tuning;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected write(Lcom/dolby/dax/model/Tuning;Z)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    const-string/jumbo v1, "name"

    invoke-virtual {p1}, Lcom/dolby/dax/model/Tuning;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "is_readonly"

    invoke-virtual {p1}, Lcom/dolby/dax/model/Tuning;->isReadonly()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    const-string/jumbo v1, "endpoint"

    invoke-virtual {p1}, Lcom/dolby/dax/model/Tuning;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolby/dax/model/Endpoint;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "is_mono"

    invoke-virtual {p1}, Lcom/dolby/dax/model/Tuning;->isMono()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p1, v0}, Lcom/dolby/dax/db/TuningProvider;->writeParamValues(Lcom/dolby/dax/model/ParameterValues;Landroid/content/ContentValues;)V

    return-object v0
.end method

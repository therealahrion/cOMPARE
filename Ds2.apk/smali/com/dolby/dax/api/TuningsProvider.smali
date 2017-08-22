.class public Lcom/dolby/dax/api/TuningsProvider;
.super Landroid/content/ContentProvider;
.source "TuningsProvider.java"


# static fields
.field private static final API_URIS:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/dolby/dax/api/TuningsProvider;->API_URIS:Landroid/content/UriMatcher;

    sget-object v0, Lcom/dolby/dax/api/TuningsProvider;->API_URIS:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.dolby.dax.api.Tunings"

    const-string/jumbo v2, "AvailableTunings"

    const/4 v3, 0x1

    throw v0

    sget-object v0, Lcom/dolby/dax/api/TuningsProvider;->API_URIS:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.dolby.dax.api.Tunings"

    const-string/jumbo v2, "AvailableTunings/#"

    const/4 v3, 0x2

    throw v0

    sget-object v0, Lcom/dolby/dax/api/TuningsProvider;->API_URIS:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.dolby.dax.api.Tunings"

    const-string/jumbo v2, "AvailableTunings/dev/*"

    const/4 v3, 0x3

    throw v0

    sget-object v0, Lcom/dolby/dax/api/TuningsProvider;->API_URIS:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.dolby.dax.api.Tunings"

    const-string/jumbo v2, "AvailableTunings/port/*"

    const/4 v3, 0x4

    throw v0

    sget-object v0, Lcom/dolby/dax/api/TuningsProvider;->API_URIS:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.dolby.dax.api.Tunings"

    const-string/jumbo v2, "SelectedTunings"

    const/4 v3, 0x5

    throw v0

    sget-object v0, Lcom/dolby/dax/api/TuningsProvider;->API_URIS:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.dolby.dax.api.Tunings"

    const-string/jumbo v2, "SelectedTunings/port/*"

    const/4 v3, 0x6

    throw v0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getDsContext()Lcom/dolby/dax/state/DsContext;
    .locals 1

    invoke-virtual {p0}, Lcom/dolby/dax/api/TuningsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolby/dax/state/DsContextFactory;->getInstance(Landroid/content/Context;)Lcom/dolby/dax/state/DsContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/dolby/dax/api/TuningsProvider;->API_URIS:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unknown URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string/jumbo v1, "vnd.android.cursor.dir/vnd.com.dolby.dax.api.Tunings.AvailableTunings"

    return-object v1

    :pswitch_1
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.dolby.dax.api.Tunings.AvailableTunings"

    return-object v1

    :pswitch_2
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.dolby.dax.api.Tunings.AvailableTunings"

    return-object v1

    :pswitch_3
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.dolby.dax.api.Tunings.AvailableTunings"

    return-object v1

    :pswitch_4
    const-string/jumbo v1, "vnd.android.cursor.dir/vnd.com.dolby.dax.api.Tunings.SelectedTunings"

    return-object v1

    :pswitch_5
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.dolby.dax.api.Tunings.SelectedTunings"

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-object v2, Lcom/dolby/dax/api/TuningsProvider;->API_URIS:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unknown URI"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-virtual {p0, p2, p5, p3, p4}, Lcom/dolby/dax/api/TuningsProvider;->queryAvailableTunings([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    :pswitch_1
    const-string/jumbo v2, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, p2, p5, v2, v3}, Lcom/dolby/dax/api/TuningsProvider;->queryAvailableTunings([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    :pswitch_2
    const-string/jumbo v2, "device = ?"

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, p2, p5, v2, v3}, Lcom/dolby/dax/api/TuningsProvider;->queryAvailableTunings([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    :pswitch_3
    const-string/jumbo v2, "port = ?"

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, p2, p5, v2, v3}, Lcom/dolby/dax/api/TuningsProvider;->queryAvailableTunings([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    :pswitch_4
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/dolby/dax/api/TuningsProvider;->querySelectedTunings([Ljava/lang/String;Lcom/dolby/dax/model/Port;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    :pswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dolby/dax/model/Port;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Port;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/dolby/dax/api/TuningsProvider;->querySelectedTunings([Ljava/lang/String;Lcom/dolby/dax/model/Port;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected varargs queryAvailableTunings([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/dolby/dax/api/TuningsProvider;->getDsContext()Lcom/dolby/dax/state/DsContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolby/dax/state/DsContext;->getProvider()Lcom/dolby/dax/db/Provider;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolby/dax/db/Provider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "available_tunings"

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method protected querySelectedTunings([Ljava/lang/String;Lcom/dolby/dax/model/Port;)Landroid/database/Cursor;
    .locals 9

    invoke-direct {p0}, Lcom/dolby/dax/api/TuningsProvider;->getDsContext()Lcom/dolby/dax/state/DsContext;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "port"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "device"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string/jumbo v7, "tuning"

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v6, Lcom/dolby/dax/state/DsContext;->SupportedPorts:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/model/Port;

    if-eqz p2, :cond_1

    if-ne v3, p2, :cond_0

    :cond_1
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/dolby/dax/model/Port;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-interface {v0, v3}, Lcom/dolby/dax/state/DsContext;->getSelectedTuningDevice(Lcom/dolby/dax/model/Port;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3}, Lcom/dolby/dax/state/DsContext;->getDefaultTuningDevice(Lcom/dolby/dax/model/Port;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v2, ""

    :cond_2
    invoke-virtual {v5, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-interface {v0, v3}, Lcom/dolby/dax/state/DsContext;->getSelectedTuning(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/Tuning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolby/dax/model/Tuning;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method protected setSelectedTuning(Lcom/dolby/dax/model/Port;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/dolby/dax/api/TuningsProvider;->getDsContext()Lcom/dolby/dax/state/DsContext;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/dolby/dax/state/DsContext;->selectDefaultTuning(Lcom/dolby/dax/model/Port;)V

    return v2

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/dolby/dax/state/DsContext;->setSelectedTuning(Lcom/dolby/dax/model/Port;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    sget-object v1, Lcom/dolby/dax/api/TuningsProvider;->API_URIS:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unknown URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Not yet implemented"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Not yet implemented"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Not yet implemented"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Not yet implemented"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    const-string/jumbo v1, "port"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolby/dax/model/Port;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Port;

    move-result-object v1

    const-string/jumbo v2, "device"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/dolby/dax/api/TuningsProvider;->setSelectedTuning(Lcom/dolby/dax/model/Port;Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolby/dax/model/Port;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Port;

    move-result-object v1

    const-string/jumbo v2, "device"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/dolby/dax/api/TuningsProvider;->setSelectedTuning(Lcom/dolby/dax/model/Port;Ljava/lang/String;)I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

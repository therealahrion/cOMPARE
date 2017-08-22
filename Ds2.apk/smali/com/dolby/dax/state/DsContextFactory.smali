.class public Lcom/dolby/dax/state/DsContextFactory;
.super Ljava/lang/Object;
.source "DsContextFactory.java"


# static fields
.field private static dsContext:Lcom/dolby/dax/state/DsContext;

.field private static final lock:Ljava/lang/Object;

.field private static final vendorDefaultXml:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/vendor/etc/dolby/dax-default.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dolby/dax/state/DsContextFactory;->vendorDefaultXml:Ljava/io/File;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolby/dax/state/DsContextFactory;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getChangedSignature(Ljava/io/File;Lcom/dolby/dax/db/Provider;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/dolby/dax/state/DsContextFactory;->getSignature(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/dolby/dax/db/Provider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "DsContextFactory"

    const-string/jumbo v4, "Database integrity check failed. Reloading tuning XML."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-interface {p1}, Lcom/dolby/dax/db/Provider;->getDefaultXmlSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "DsContextFactory"

    const-string/jumbo v4, "Tuning XML file changed. Reloading tuning XML."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/dolby/dax/state/DsContext;
    .locals 7

    sget-object v5, Lcom/dolby/dax/state/DsContextFactory;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/dolby/dax/state/DsContextFactory;->dsContext:Lcom/dolby/dax/state/DsContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :try_start_1
    new-instance v3, Lcom/dolby/dax/db/DatabaseProvider;

    invoke-direct {v3, p0}, Lcom/dolby/dax/db/DatabaseProvider;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/dolby/dax/state/DsContextFactory;->vendorDefaultXml:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/dolby/dax/state/DsContextFactory;->initDatabase(Lcom/dolby/dax/db/Provider;Ljava/io/File;)V

    new-instance v2, Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-direct {v2}, Lcom/dolby/dax/state/DsContextChangeObservable;-><init>()V

    new-instance v4, Lcom/dolby/dax/state/DsContextImpl;

    invoke-direct {v4, v3, v2}, Lcom/dolby/dax/state/DsContextImpl;-><init>(Lcom/dolby/dax/db/Provider;Lcom/dolby/dax/state/DsContextChangeObservable;)V

    sput-object v4, Lcom/dolby/dax/state/DsContextFactory;->dsContext:Lcom/dolby/dax/state/DsContext;

    sget-object v4, Lcom/dolby/dax/state/DsContextFactory;->dsContext:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v4}, Lcom/dolby/dax/state/DsContext;->load()V
    :try_end_1
    .catch Lcom/dolby/dax/xml/ValidationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    sget-object v4, Lcom/dolby/dax/state/DsContextFactory;->dsContext:Lcom/dolby/dax/state/DsContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v4

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lcom/dolby/dax/xml/ValidationException;->isXmlException()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can not parse tuning xml file: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/dolby/dax/state/DsContextFactory;->vendorDefaultXml:Ljava/io/File;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v4, "DsContextFactory"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Tuning data is not valid in xml file: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/dolby/dax/state/DsContextFactory;->vendorDefaultXml:Ljava/io/File;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    goto :goto_0
.end method

.method private static getSignature(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/google/common/hash/Hashing;->md5()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/common/io/Files;->hash(Ljava/io/File;Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "DsContextFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " can not be read!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string/jumbo v4, ""

    return-object v4

    :catch_1
    move-exception v0

    const-string/jumbo v4, "DsContextFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not present"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static initDatabase(Lcom/dolby/dax/db/Provider;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Please use tuning tool to generate default tuning file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "DsContextFactory"

    invoke-static {v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {p1, p0}, Lcom/dolby/dax/state/DsContextFactory;->loadXmlIfChanged(Ljava/io/File;Lcom/dolby/dax/db/Provider;)Lcom/dolby/dax/xml/model/DeviceData;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/dolby/dax/xml/DeviceDataValidator;

    invoke-direct {v2, v0}, Lcom/dolby/dax/xml/DeviceDataValidator;-><init>(Lcom/dolby/dax/xml/model/DeviceData;)V

    invoke-virtual {v2}, Lcom/dolby/dax/xml/DeviceDataValidator;->validate()V

    invoke-static {v0, p0}, Lcom/dolby/dax/state/DsContextFactory;->populateDatabase(Lcom/dolby/dax/xml/model/DeviceData;Lcom/dolby/dax/db/Provider;)V

    :cond_1
    return-void
.end method

.method static loadXmlIfChanged(Ljava/io/File;Lcom/dolby/dax/db/Provider;)Lcom/dolby/dax/xml/model/DeviceData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {p0, p1}, Lcom/dolby/dax/state/DsContextFactory;->getChangedSignature(Ljava/io/File;Lcom/dolby/dax/db/Provider;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v5, Lcom/dolby/dax/xml/TagIterator;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Lcom/dolby/dax/xml/TagIterator;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Lcom/dolby/dax/xml/DeviceDataParser;

    invoke-direct {v3, v5}, Lcom/dolby/dax/xml/DeviceDataParser;-><init>(Lcom/dolby/dax/xml/TagIterator;)V

    invoke-virtual {v3}, Lcom/dolby/dax/xml/DeviceDataParser;->parse()Lcom/dolby/dax/xml/model/DeviceData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/dolby/dax/xml/model/DeviceData;->setSignature(Ljava/lang/String;)V

    const-string/jumbo v6, "DsContextFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Successfully parsed tuning XML file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "DsContextFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " can not be read."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v9

    :catch_1
    move-exception v2

    const-string/jumbo v6, "DsContextFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not a valid XML file."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v9

    :cond_0
    const-string/jumbo v6, "DsContextFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Tuning XML file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " has not changed since last time."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method static populateDatabase(Lcom/dolby/dax/xml/model/DeviceData;Lcom/dolby/dax/db/Provider;)V
    .locals 17

    invoke-interface/range {p1 .. p1}, Lcom/dolby/dax/db/Provider;->clear()V

    invoke-interface/range {p1 .. p1}, Lcom/dolby/dax/db/Provider;->beginTransaction()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/dax/xml/model/DeviceData;->ieqPresets:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dolby/dax/model/IeqPreset;

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/dolby/dax/db/Provider;->create(Lcom/dolby/dax/model/IeqPreset;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/dax/xml/model/DeviceData;->geqPresets:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/model/GeqPreset;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/dolby/dax/db/Provider;->create(Lcom/dolby/dax/model/GeqPreset;)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/dax/xml/model/DeviceData;->profiles:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dolby/dax/model/Profile;

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/dolby/dax/db/Provider;->create(Lcom/dolby/dax/model/Profile;)V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/dax/xml/model/DeviceData;->profileEndpoints:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dolby/dax/model/ProfileEndpoint;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/dolby/dax/db/Provider;->create(Lcom/dolby/dax/model/ProfileEndpoint;)V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/dax/xml/model/DeviceData;->profilePorts:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/dolby/dax/model/ProfilePort;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcom/dolby/dax/db/Provider;->create(Lcom/dolby/dax/model/ProfilePort;)V

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/dax/xml/model/DeviceData;->tunings:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/dolby/dax/model/Tuning;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/dolby/dax/db/Provider;->create(Lcom/dolby/dax/model/Tuning;)V

    goto :goto_5

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/dax/xml/model/DeviceData;->deviceTunings:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/DeviceTuning;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/dolby/dax/db/Provider;->create(Lcom/dolby/dax/model/DeviceTuning;)V

    goto :goto_6

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/dolby/dax/xml/model/DeviceData;->getSignature()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/dolby/dax/db/Provider;->setDefaultXmlSignature(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/dolby/dax/db/Provider;->commitTransaction()V

    const-string/jumbo v15, "DsContextFactory"

    const-string/jumbo v16, "Data from tuning XML file successfully loaded into database."

    invoke-static/range {v15 .. v16}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/dolby/dax/service/DsAccessRightManager;
.super Ljava/lang/Object;
.source "DsAccessRightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;
    }
.end annotation


# static fields
.field private static dsVersionMap_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final lock_:Ljava/lang/Object;


# instance fields
.field private audioManagerIsAppInFocus_:Ljava/lang/reflect/Method;

.field private cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

.field private dsAccessRightLookupMap_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dsConnectedAppInfoMap_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dsManager_:Lcom/dolby/dax/service/DsManager;

.field private forceAbandonHandle_:I

.field private globalAccessHandle_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/dolby/dax/service/DsManager;Lcom/dolby/dax/service/DsCallbackManager;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    iput-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    const-string/jumbo v1, "DsAccessRightManager"

    const-string/jumbo v2, "DsAccessRightManager.DsAccessRightManager"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object p1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    iput-object p2, p0, Lcom/dolby/dax/service/DsAccessRightManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->globalAccessHandle_:I

    const-class v1, Landroid/media/AudioManager;

    const-string/jumbo v3, "isAppInFocus"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->audioManagerIsAppInFocus_:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private clearDsAccessRight(II)V
    .locals 4

    iget-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;

    iget v1, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    not-int v2, p2

    and-int/2addr v1, v2

    iput v1, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    sget-object v2, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private findDsConnectedApp(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;

    iget-object v5, v1, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    :cond_1
    return v0
.end method

.method private queryDsAccessRight(Ljava/lang/String;I)I
    .locals 13

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    const/4 v0, 0x1

    if-ne v12, v0, :cond_4

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    const/16 v1, 0x9

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v9, -0x4

    :cond_1
    return v9

    :cond_2
    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsManager;->restoreCurrentProfiles()V

    :goto_1
    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;

    iget v0, v7, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    not-int v1, v12

    and-int/2addr v0, v1

    iput v0, v7, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    :cond_3
    iput v2, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I

    sget-object v0, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    const/4 v0, 0x2

    if-ne v12, v0, :cond_5

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsManager;->saveDsStateAndSettings()V

    :cond_5
    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setDsAccessRight(II)V
    .locals 5

    iget-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;

    iget v1, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    sget-object v2, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public abandonAccessRight(IILandroid/media/AudioManager;)I
    .locals 11

    const-string/jumbo v0, "DsAccessRightManager"

    const-string/jumbo v1, "DsAccessRightManager.abandonAccessRight"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v10

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit v10

    return v0

    :pswitch_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/dolby/dax/service/DsAccessRightManager;->clearDsAccessRight(II)V

    iget v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    iget v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    iget v2, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->audioManagerIsAppInFocus_:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v7, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsManager;->restoreCurrentProfiles()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public addDsConnectedApp(ILjava/lang/String;I)V
    .locals 4

    const-string/jumbo v1, "DsAccessRightManager"

    const-string/jumbo v2, "DsAccessRightManager.addDsConnectedApp"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;-><init>(Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;)V

    iput-object p2, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appPackageName:Ljava/lang/String;

    iget v1, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->connectionBridge:I

    or-int/2addr v1, p3

    iput v1, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->connectionBridge:I

    iget-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public checkAccessRight(II)I
    .locals 4

    const-string/jumbo v1, "DsAccessRightManager"

    const-string/jumbo v2, "DsAccessRightManager.checkAccessRight"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v1, 0x2

    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public doAccessForAudioFocusChange(Ljava/lang/String;I)V
    .locals 13

    const/4 v4, -0x1

    const/4 v7, 0x1

    const-string/jumbo v0, "DsAccessRightManager"

    const-string/jumbo v1, "DsAccessRightManager.doAccessForAudioFocusChange."

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    invoke-direct {p0, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->findDsConnectedApp(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_3

    if-eq p2, v7, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;

    iget v3, v11, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    and-int/lit8 v0, v3, 0x1

    if-ne v0, v7, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/dolby/dax/service/DsAccessRightManager;->clearDsAccessRight(II)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    if-ne p2, v7, :cond_1

    iput v2, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I

    :cond_1
    sget-object v0, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsManager;->restoreCurrentProfiles()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v12

    return-void

    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/dolby/dax/service/DsAccessRightManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    const/16 v5, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v6, v2

    invoke-virtual/range {v4 .. v10}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public doAccessForLegacyClient(IZ)Z
    .locals 14

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/dolby/dax/service/DsAccessRightManager;->queryDsVersion(I)I

    move-result v7

    const/4 v0, 0x1

    if-ne v7, v0, :cond_2

    if-eqz p2, :cond_3

    sget-object v13, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x2

    if-ne v10, v0, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    const/16 v1, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/dolby/dax/service/DsAccessRightManager;->clearDsAccessRight(II)V

    const/4 v9, 0x1

    iput v2, p0, Lcom/dolby/dax/service/DsAccessRightManager;->globalAccessHandle_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v13

    :cond_2
    :goto_0
    return v9

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    :cond_3
    iget v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->globalAccessHandle_:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/dolby/dax/service/DsAccessRightManager;->setDsAccessRight(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->globalAccessHandle_:I

    goto :goto_0
.end method

.method public isAppAccessPermitted(I)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string/jumbo v3, "DsAccessRightManager"

    const-string/jumbo v4, "DsAccessRightManager.isAppAccessPermitted."

    invoke-static {v3, v4}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v4, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_3

    iget-object v3, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit v4

    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-ne v2, v7, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;

    iget v3, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    and-int/lit8 v3, v3, 0x1

    if-eq v3, v6, :cond_4

    iget v3, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isDsFocusGranted()Z
    .locals 6

    const/4 v5, 0x1

    sget-object v4, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v5, :cond_0

    monitor-exit v4

    return v5

    :cond_1
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isGlobalSettings(I)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v4, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v4, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;

    iget v0, v1, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    and-int/lit8 v4, v0, 0x2

    if-ne v4, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public queryDsVersion(I)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method public registerDsVersion(II)V
    .locals 3

    sget-object v0, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public release()V
    .locals 2

    sget-object v1, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsManager_:Lcom/dolby/dax/service/DsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeDsConnectedApp(I)V
    .locals 9

    const/4 v2, -0x1

    const-string/jumbo v0, "DsAccessRightManager"

    const-string/jumbo v1, "DsAccessRightManager.removeDsConnectedApp"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;

    iget v0, v7, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->connectionBridge:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsManager_:Lcom/dolby/dax/service/DsManager;

    invoke-virtual {v0}, Lcom/dolby/dax/service/DsManager;->restoreCurrentProfiles()V

    :cond_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    iget v1, v7, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    iget v1, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->cbkManager_:Lcom/dolby/dax/service/DsCallbackManager;

    iget v2, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/dolby/dax/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolby/dax/service/DsAccessRightManager;->forceAbandonHandle_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public requestAccessRight(IILandroid/media/AudioManager;)I
    .locals 11

    const/4 v8, 0x1

    const/4 v10, -0x2

    const-string/jumbo v5, "DsAccessRightManager"

    const-string/jumbo v6, "DsAccessRightManager.requestAccessRight"

    invoke-static {v5, v6}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x6

    sget-object v6, Lcom/dolby/dax/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v5, -0x1

    monitor-exit v6

    return v5

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/dolby/dax/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;

    iget v5, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->connectionBridge:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v5, p2

    if-eq v5, p2, :cond_1

    monitor-exit v6

    return v10

    :cond_1
    if-ne p2, v8, :cond_2

    :try_start_2
    iget-object v5, p0, Lcom/dolby/dax/service/DsAccessRightManager;->audioManagerIsAppInFocus_:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appPackageName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    const/4 v5, -0x3

    monitor-exit v6

    return v5

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return v10

    :cond_2
    packed-switch p2, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    monitor-exit v6

    return v2

    :pswitch_1
    :try_start_4
    iget-object v5, v0, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;->appPackageName:Ljava/lang/String;

    invoke-direct {p0, v5, p2}, Lcom/dolby/dax/service/DsAccessRightManager;->queryDsAccessRight(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/dolby/dax/service/DsAccessRightManager;->setDsAccessRight(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public unRegisterDsVersion(I)V
    .locals 2

    sget-object v0, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolby/dax/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.class public Lcom/dolby/dax/service/DsManager;
.super Ljava/lang/Object;
.source "DsManager.java"


# static fields
.field private static final getDapVersionCommand_:Lcom/dolby/dax/dap/commands/GetDapVersionCommand;

.field private static final getVisualizerDataCommand_:Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;

.field private static final getVisualizerEnableCommand_:Lcom/dolby/dax/dap/commands/GetVisualizerEnableCommand;

.field public static final mapPresetIdx:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dolby/dax/model/PresetType;",
            ">;"
        }
    .end annotation
.end field

.field public static final mapProfileIdx:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dolby/dax/model/ProfileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final setVisualizerEnableCommand_:Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;


# instance fields
.field private audioSessionId_:I

.field private dapController_:Lcom/dolby/dax/dap/DapController;

.field private dapEffect_:Lcom/dolby/dax/dap/Dap;

.field private dsContext_:Lcom/dolby/dax/state/DsContext;

.field private dsProperty_:Lcom/dolby/dax/service/DsProperty;

.field private isDsSuspended_:Z

.field private mContext_:Landroid/content/Context;

.field private parameterAdapter_:Lcom/dolby/dax/service/adapter/ParameterAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v5

    sput-object v5, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v5

    sput-object v5, Lcom/dolby/dax/service/DsManager;->mapPresetIdx:Lcom/google/common/collect/BiMap;

    new-instance v5, Lcom/dolby/dax/dap/commands/GetVisualizerEnableCommand;

    invoke-direct {v5}, Lcom/dolby/dax/dap/commands/GetVisualizerEnableCommand;-><init>()V

    sput-object v5, Lcom/dolby/dax/service/DsManager;->getVisualizerEnableCommand_:Lcom/dolby/dax/dap/commands/GetVisualizerEnableCommand;

    new-instance v5, Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;

    invoke-direct {v5}, Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;-><init>()V

    sput-object v5, Lcom/dolby/dax/service/DsManager;->setVisualizerEnableCommand_:Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;

    new-instance v5, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;

    invoke-direct {v5}, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;-><init>()V

    sput-object v5, Lcom/dolby/dax/service/DsManager;->getVisualizerDataCommand_:Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;

    new-instance v5, Lcom/dolby/dax/dap/commands/GetDapVersionCommand;

    invoke-direct {v5}, Lcom/dolby/dax/dap/commands/GetDapVersionCommand;-><init>()V

    sput-object v5, Lcom/dolby/dax/service/DsManager;->getDapVersionCommand_:Lcom/dolby/dax/dap/commands/GetDapVersionCommand;

    const/4 v0, 0x0

    sget-object v5, Lcom/dolby/dax/state/DsContextImpl;->SupportedProfiles:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/model/ProfileType;

    sget-object v5, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/dolby/dax/model/PresetType;->values()[Lcom/dolby/dax/model/PresetType;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    move v1, v0

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v2, v6, v5

    sget-object v8, Lcom/dolby/dax/service/DsManager;->mapPresetIdx:Lcom/google/common/collect/BiMap;

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/dolby/dax/service/DsManager;->isDsSuspended_:Z

    invoke-static {p1}, Lcom/dolby/dax/state/DsContextFactory;->getInstance(Landroid/content/Context;)Lcom/dolby/dax/state/DsContext;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    new-instance v2, Lcom/dolby/dax/service/DsProperty;

    invoke-direct {v2}, Lcom/dolby/dax/service/DsProperty;-><init>()V

    iput-object v2, p0, Lcom/dolby/dax/service/DsManager;->dsProperty_:Lcom/dolby/dax/service/DsProperty;

    invoke-direct {p0, v3}, Lcom/dolby/dax/service/DsManager;->createDapEffect(I)Lcom/dolby/dax/dap/Dap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    :try_start_0
    sget-object v2, Lcom/dolby/dax/service/DsManager;->getDapVersionCommand_:Lcom/dolby/dax/dap/commands/GetDapVersionCommand;

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    invoke-virtual {v2, v3}, Lcom/dolby/dax/dap/commands/GetDapVersionCommand;->execute(Lcom/dolby/dax/dap/Dap;)I

    sget-object v2, Lcom/dolby/dax/service/DsManager;->getDapVersionCommand_:Lcom/dolby/dax/dap/commands/GetDapVersionCommand;

    invoke-virtual {v2}, Lcom/dolby/dax/dap/commands/GetDapVersionCommand;->getDapVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "DsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Created DAP effect version ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string/jumbo v2, "DsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Created DAP effect version ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "DAP1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "DsManager"

    const-string/jumbo v3, "Instantiating DAP1 Controller"

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/dolby/dax/dap/DapController;

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/dolby/dax/dap/DapController;-><init>(ILcom/dolby/dax/dap/Dap;)V

    iput-object v2, p0, Lcom/dolby/dax/service/DsManager;->dapController_:Lcom/dolby/dax/dap/DapController;

    :goto_0
    iget-object v2, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dsProperty_:Lcom/dolby/dax/service/DsProperty;

    invoke-interface {v2, v3}, Lcom/dolby/dax/state/DsContext;->registerObserver(Lcom/dolby/dax/state/OnDsContextChange;)V

    iget-object v2, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dapController_:Lcom/dolby/dax/dap/DapController;

    invoke-interface {v2, v3}, Lcom/dolby/dax/state/DsContext;->registerObserver(Lcom/dolby/dax/state/OnDsContextChange;)V

    new-instance v2, Lcom/dolby/dax/service/adapter/ParameterAdapter;

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-direct {v2, v3}, Lcom/dolby/dax/service/adapter/ParameterAdapter;-><init>(Lcom/dolby/dax/state/DsContext;)V

    iput-object v2, p0, Lcom/dolby/dax/service/DsManager;->parameterAdapter_:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    iput-object p1, p0, Lcom/dolby/dax/service/DsManager;->mContext_:Landroid/content/Context;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "DsManager"

    const-string/jumbo v3, "Instantiating DAP2 Controller"

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/dolby/dax/dap/DapController;

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/dolby/dax/dap/DapController;-><init>(ILcom/dolby/dax/dap/Dap;)V

    iput-object v2, p0, Lcom/dolby/dax/service/DsManager;->dapController_:Lcom/dolby/dax/dap/DapController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DsManager"

    const-string/jumbo v3, "DsManager() FAILED! Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private createDapEffect(I)Lcom/dolby/dax/dap/Dap;
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v4, "DsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Creating DAP effect on audioSessionId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_0

    const-string/jumbo v4, "DsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DAP effect with specified session Id ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") is less than zero"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad session Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/dolby/dax/service/DsManager;->audioSessionId_:I

    new-instance v1, Lcom/dolby/dax/dap/DapEffect;

    invoke-direct {v1, p1}, Lcom/dolby/dax/dap/DapEffect;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "DsManager"

    const-string/jumbo v5, "createDsEffect() FAILED! Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v4, "DsManager"

    const-string/jumbo v5, "createDsEffect() FAILED! IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isProfileNameModified(I)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->mContext_:Landroid/content/Context;

    const-string/jumbo v4, "profile_default_name"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v1, ""

    if-ne p1, v6, :cond_2

    const-string/jumbo v0, "Custom 1"

    :goto_0
    if-ne p1, v6, :cond_3

    const-string/jumbo v3, "Custom1DisplayName"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Custom1DefaultName"

    const-string/jumbo v4, "Custom 1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    return v5

    :cond_2
    const-string/jumbo v0, "Custom 2"

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    const-string/jumbo v3, "Custom2DisplayName"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Custom2DefaultName"

    const-string/jumbo v4, "Custom 2"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    return v3
.end method

.method private recreateDsEffect()Z
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "DsManager"

    const-string/jumbo v3, "recreateDsEffect"

    invoke-static {v2, v3}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    invoke-interface {v2}, Lcom/dolby/dax/dap/Dap;->release()V

    :cond_0
    iget v2, p0, Lcom/dolby/dax/service/DsManager;->audioSessionId_:I

    invoke-direct {p0, v2}, Lcom/dolby/dax/service/DsManager;->createDapEffect(I)Lcom/dolby/dax/dap/Dap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    iget-object v2, p0, Lcom/dolby/dax/service/DsManager;->dapController_:Lcom/dolby/dax/dap/DapController;

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    iget-object v4, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-virtual {v2, v3, v4}, Lcom/dolby/dax/dap/DapController;->setDapEffect(Lcom/dolby/dax/dap/Dap;Lcom/dolby/dax/state/DsContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DsManager"

    const-string/jumbo v3, "Exception in recreateDsEffect."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCustomProfileName(ILcom/dolby/api/DsProfileName;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    sget-object v3, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/ProfileType;

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->mContext_:Landroid/content/Context;

    const-string/jumbo v4, "profile_default_name"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-ne p1, v6, :cond_4

    const-string/jumbo v3, "Custom1DefaultName"

    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getDefaultName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-ne p1, v6, :cond_5

    const-string/jumbo v3, "Custom1DisplayName"

    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/dolby/dax/state/DsContext;->setProfileName(Lcom/dolby/dax/model/ProfileType;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-ne p1, v7, :cond_0

    const-string/jumbo v3, "Custom2DefaultName"

    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getDefaultName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    if-ne p1, v7, :cond_2

    const-string/jumbo v3, "Custom2DisplayName"

    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public getDapVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dolby/dax/service/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/dolby/dax/service/DsManager;->getDapVersionCommand_:Lcom/dolby/dax/dap/commands/GetDapVersionCommand;

    iget-object v1, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    invoke-virtual {v0, v1}, Lcom/dolby/dax/dap/commands/GetDapVersionCommand;->execute(Lcom/dolby/dax/dap/Dap;)I

    sget-object v0, Lcom/dolby/dax/service/DsManager;->getDapVersionCommand_:Lcom/dolby/dax/dap/commands/GetDapVersionCommand;

    invoke-virtual {v0}, Lcom/dolby/dax/dap/commands/GetDapVersionCommand;->getDapVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDsOn()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dolby/dax/service/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/dolby/dax/service/DsManager;->isDsSuspended_:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DsManager"

    const-string/jumbo v1, "DS effect is now suspended"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v0}, Lcom/dolby/dax/state/DsContext;->getDapOn()Z

    move-result v0

    return v0
.end method

.method public getDsSuspended()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dolby/dax/service/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/dolby/dax/service/DsManager;->isDsSuspended_:Z

    return v0
.end method

.method public getDsVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "DAX2.3.1.30_r1"

    return-object v0
.end method

.method public getIeqPreset(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v2, -0x1

    sget-object v3, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/ProfileType;

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v3, v1}, Lcom/dolby/dax/state/DsContext;->getProfileIeq(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/IeqPreset;

    move-result-object v0

    sget-object v3, Lcom/dolby/dax/service/DsManager;->mapPresetIdx:Lcom/google/common/collect/BiMap;

    invoke-interface {v3}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolby/dax/model/IeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    return v2
.end method

.method public getOffType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getParamLength(I)I
    .locals 2

    invoke-static {p1}, Lcom/dolby/api/DsParams;->FromInt(I)Lcom/dolby/api/DsParams;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/dolby/dax/service/DsManager;->parameterAdapter_:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-virtual {v1, v0}, Lcom/dolby/dax/service/adapter/ParameterAdapter;->getParameterLength(Lcom/dolby/api/DsParams;)I

    move-result v1

    return v1
.end method

.method public getParameter(II)[I
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/ProfileType;

    iget-object v2, p0, Lcom/dolby/dax/service/DsManager;->parameterAdapter_:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-virtual {v2, v0, p2}, Lcom/dolby/dax/service/adapter/ParameterAdapter;->getParameter(Lcom/dolby/dax/model/ProfileType;I)[I

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getProfileCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getProfileEndpointParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p3}, Lcom/dolby/dax/service/adapter/ConvertEnum;->parameter(Ljava/lang/String;)Lcom/dolby/dax/model/Parameter;

    move-result-object v0

    invoke-static {p2}, Lcom/dolby/dax/service/adapter/ConvertEnum;->endpoint(Ljava/lang/String;)Lcom/dolby/dax/model/Endpoint;

    move-result-object v1

    invoke-static {p1}, Lcom/dolby/dax/service/adapter/ConvertEnum;->supportedProfile(Ljava/lang/String;)Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v3, v2, v1, v0}, Lcom/dolby/dax/state/DsContext;->getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    return-object v3

    :cond_0
    return-object v3
.end method

.method public getProfileName(I)Lcom/dolby/api/DsProfileName;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x4

    new-instance v1, Lcom/dolby/api/DsProfileName;

    invoke-direct {v1}, Lcom/dolby/api/DsProfileName;-><init>()V

    sget-object v4, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolby/dax/model/ProfileType;

    if-lt p1, v7, :cond_4

    const/4 v4, 0x6

    if-ge p1, v4, :cond_4

    iget-object v4, p0, Lcom/dolby/dax/service/DsManager;->mContext_:Landroid/content/Context;

    const-string/jumbo v5, "profile_default_name"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-ne p1, v7, :cond_2

    const-string/jumbo v4, "Custom1DisplayName"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Custom1DefaultName"

    const-string/jumbo v5, "Custom 1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/dolby/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v4, "Custom1DefaultName"

    const-string/jumbo v5, "Custom 1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/dolby/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/dolby/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    const-string/jumbo v4, "Custom2DisplayName"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "Custom2DefaultName"

    const-string/jumbo v5, "Custom 2"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/dolby/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v4, "Custom2DefaultName"

    const-string/jumbo v5, "Custom 2"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/dolby/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Lcom/dolby/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v4, v2}, Lcom/dolby/dax/state/DsContext;->getProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolby/dax/model/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/dolby/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v4, v2}, Lcom/dolby/dax/state/DsContext;->getDefaultProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolby/dax/model/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/dolby/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "DsManager"

    const-string/jumbo v5, "getProfileName: Invalid profile input"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method public getProfileParameter(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 3

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/dolby/dax/service/adapter/ConvertEnum;->parameter(Ljava/lang/String;)Lcom/dolby/dax/model/Parameter;

    move-result-object v0

    invoke-static {p1}, Lcom/dolby/dax/service/adapter/ConvertEnum;->supportedProfile(Ljava/lang/String;)Lcom/dolby/dax/model/ProfileType;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v2, v1, v0}, Lcom/dolby/dax/state/DsContext;->getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v2

    return-object v2

    :cond_0
    return-object v2
.end method

.method public getProfilePortParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p3}, Lcom/dolby/dax/service/adapter/ConvertEnum;->parameter(Ljava/lang/String;)Lcom/dolby/dax/model/Parameter;

    move-result-object v0

    invoke-static {p1}, Lcom/dolby/dax/service/adapter/ConvertEnum;->supportedProfile(Ljava/lang/String;)Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    invoke-static {p2}, Lcom/dolby/dax/service/adapter/ConvertEnum;->port(Ljava/lang/String;)Lcom/dolby/dax/model/Port;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v3, v2, v1, v0}, Lcom/dolby/dax/state/DsContext;->getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v3

    return-object v3

    :cond_0
    return-object v3
.end method

.method public getSelectedProfile()I
    .locals 3

    iget-object v1, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v1}, Lcom/dolby/dax/state/DsContext;->getSelectedProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v0

    sget-object v1, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolby/dax/model/Profile;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getTuningParameter(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 3

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/dolby/dax/service/adapter/ConvertEnum;->parameter(Ljava/lang/String;)Lcom/dolby/dax/model/Parameter;

    move-result-object v0

    invoke-static {p1}, Lcom/dolby/dax/service/adapter/ConvertEnum;->port(Ljava/lang/String;)Lcom/dolby/dax/model/Port;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v2, v1, v0}, Lcom/dolby/dax/state/DsContext;->getSelectedTuningParameter(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v2

    return-object v2

    :cond_0
    return-object v2
.end method

.method public getVisualizerData([F[F)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/dolby/dax/service/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/dolby/dax/service/DsManager;->getVisualizerDataCommand_:Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;

    iget-object v1, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    invoke-virtual {v0, v1}, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->execute(Lcom/dolby/dax/dap/Dap;)I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/dolby/dax/service/DsManager;->getVisualizerDataCommand_:Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;

    invoke-virtual {v0}, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->getGains()[F

    move-result-object v0

    array-length v1, p1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    sget-object v0, Lcom/dolby/dax/service/DsManager;->getVisualizerDataCommand_:Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;

    invoke-virtual {v0}, Lcom/dolby/dax/dap/commands/GetVisualizerDataCommand;->getExcitations()[F

    move-result-object v0

    array-length v1, p2

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    return v0
.end method

.method public isMonoInternalSpeaker()Z
    .locals 3

    iget-object v1, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    sget-object v2, Lcom/dolby/dax/model/Port;->internal_speaker:Lcom/dolby/dax/model/Port;

    invoke-interface {v1, v2}, Lcom/dolby/dax/state/DsContext;->getSelectedTuning(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/Tuning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/dax/model/Tuning;->isMono()Z

    move-result v1

    return v1
.end method

.method public isProfileModified(I)Z
    .locals 4

    sget-object v2, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/ProfileType;

    const/4 v0, 0x0

    const/4 v2, 0x4

    if-lt p1, v2, :cond_0

    const/4 v2, 0x6

    if-ge p1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/dolby/dax/service/DsManager;->isProfileNameModified(I)Z

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v2, v1}, Lcom/dolby/dax/state/DsContext;->isProfileModified(Lcom/dolby/dax/model/ProfileType;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public resetProfile(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/dolby/dax/service/DsManager;->validateDsEffect()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/os/DeadObjectException;

    invoke-direct {v3}, Landroid/os/DeadObjectException;-><init>()V

    throw v3

    :cond_0
    sget-object v3, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/ProfileType;

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v3, v1}, Lcom/dolby/dax/state/DsContext;->resetProfile(Lcom/dolby/dax/model/ProfileType;)V

    if-lt p1, v6, :cond_2

    const/4 v3, 0x6

    if-ge p1, v3, :cond_2

    iget-object v3, p0, Lcom/dolby/dax/service/DsManager;->mContext_:Landroid/content/Context;

    const-string/jumbo v4, "profile_default_name"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-ne p1, v6, :cond_3

    const-string/jumbo v3, "Custom1DisplayName"

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    const/4 v3, 0x1

    return v3

    :cond_3
    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    const-string/jumbo v3, "Custom2DisplayName"

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    return v5
.end method

.method public restoreCurrentProfiles()V
    .locals 2

    const-string/jumbo v0, "DsManager"

    const-string/jumbo v1, "Ds restoreCurrentProfiles"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v0}, Lcom/dolby/dax/state/DsContext;->reloadAllProfile()V

    return-void
.end method

.method public saveDsProfileSettings()V
    .locals 2

    const-string/jumbo v0, "DsManager"

    const-string/jumbo v1, "saveDsProfileSettings"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v0}, Lcom/dolby/dax/state/DsContext;->saveDsProfileSettings()V

    return-void
.end method

.method public saveDsState()V
    .locals 2

    const-string/jumbo v0, "DsManager"

    const-string/jumbo v1, "saveDsState"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v0}, Lcom/dolby/dax/state/DsContext;->saveDsState()V

    return-void
.end method

.method public saveDsStateAndSettings()V
    .locals 2

    const-string/jumbo v0, "DsManager"

    const-string/jumbo v1, "saveDsStateAndSettings"

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v0}, Lcom/dolby/dax/state/DsContext;->save()V

    return-void
.end method

.method public setDsOn(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    const-string/jumbo v0, "DsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDsOn: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dolby/dax/service/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    const-string/jumbo v0, "DsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ds.setDsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "dolby_power=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v0, p1}, Lcom/dolby/dax/state/DsContext;->setDapOn(Z)V

    return-void

    :cond_2
    if-nez p1, :cond_1

    const-string/jumbo v0, "dolby_power=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDsSuspended(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    const-string/jumbo v0, "DsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDsSuspended("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dolby/dax/service/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/dolby/dax/service/DsManager;->isDsSuspended_:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/dolby/dax/service/DsManager;->isDsSuspended_:Z

    iget-object v0, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v0}, Lcom/dolby/dax/state/DsContext;->getDapOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dolby/dax/service/DsManager;->dsProperty_:Lcom/dolby/dax/service/DsProperty;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dolby/dax/service/DsProperty;->setStateProperty(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIeqPreset(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dolby/dax/service/DsManager;->validateDsEffect()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2

    :cond_0
    sget-object v2, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/dolby/dax/service/DsManager;->mapPresetIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/ProfileType;

    sget-object v2, Lcom/dolby/dax/service/DsManager;->mapPresetIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/PresetType;

    iget-object v2, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v2, v1, v0}, Lcom/dolby/dax/state/DsContext;->setProfileIeq(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/PresetType;)V

    iget-object v2, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    invoke-interface {v2, v1, v0}, Lcom/dolby/dax/state/DsContext;->setProfileGeq(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/PresetType;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public setParameter(II[I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dolby/dax/service/DsManager;->validateDsEffect()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :cond_0
    sget-object v1, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/ProfileType;

    iget-object v1, p0, Lcom/dolby/dax/service/DsManager;->parameterAdapter_:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-virtual {v1, v0, p2, p3}, Lcom/dolby/dax/service/adapter/ParameterAdapter;->setParameter(Lcom/dolby/dax/model/ProfileType;I[I)V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public setProfileName(ILcom/dolby/api/DsProfileName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v3, 0x14

    const/4 v0, 0x0

    sget-object v1, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_0

    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "DsManager"

    const-string/jumbo v2, "setProfileName: Invalid profile default name length input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_2

    invoke-virtual {p2}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "DsManager"

    const-string/jumbo v2, "setProfileName: Invalid profile current name length input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_3
    const/4 v1, 0x4

    if-lt p1, v1, :cond_5

    const/4 v1, 0x6

    if-ge p1, v1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/dolby/dax/service/DsManager;->setCustomProfileName(ILcom/dolby/api/DsProfileName;)V

    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    const-string/jumbo v1, "DsManager"

    const-string/jumbo v2, "setProfileName: Name of this profile is not settable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_6
    const-string/jumbo v1, "DsManager"

    const-string/jumbo v2, "setProfileName: Invalid profile input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setSelectedProfile(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dolby/dax/service/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dolby/dax/service/DsManager;->dsContext_:Lcom/dolby/dax/state/DsContext;

    sget-object v0, Lcom/dolby/dax/service/DsManager;->mapProfileIdx:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/ProfileType;

    invoke-interface {v1, v0}, Lcom/dolby/dax/state/DsContext;->setSelectedProfile(Lcom/dolby/dax/model/ProfileType;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setVisualizerOn(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    sget-object v0, Lcom/dolby/dax/service/DsManager;->setVisualizerEnableCommand_:Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;->setEnabled(Z)V

    sget-object v0, Lcom/dolby/dax/service/DsManager;->setVisualizerEnableCommand_:Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;

    iget-object v1, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    invoke-virtual {v0, v1}, Lcom/dolby/dax/dap/commands/SetVisualizerEnableCommand;->execute(Lcom/dolby/dax/dap/Dap;)I

    move-result v0

    return v0
.end method

.method public validateDsEffect()Z
    .locals 3

    iget-object v1, p0, Lcom/dolby/dax/service/DsManager;->dapEffect_:Lcom/dolby/dax/dap/Dap;

    invoke-interface {v1}, Lcom/dolby/dax/dap/Dap;->hasControl()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "DsManager"

    const-string/jumbo v2, "Cannot control the DsEffect, trying to recreate..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/dolby/dax/service/DsManager;->recreateDsEffect()Z

    move-result v0

    :cond_0
    return v0
.end method

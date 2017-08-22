.class public Lcom/dolby/dax/dap/DapController;
.super Ljava/lang/Object;
.source "DapController.java"

# interfaces
.implements Lcom/dolby/dax/state/OnDsContextChange;


# instance fields
.field dapContext:Lcom/dolby/dax/dap/DapContext;

.field dapEffect:Lcom/dolby/dax/dap/Dap;

.field final dapVersion:I

.field final paramTranslators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dolby/dax/dap/AndroidDevice;",
            "Lcom/dolby/dax/dap/translator/ParameterTranslator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/dolby/dax/dap/Dap;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dolby/dax/dap/DapController;->dapVersion:I

    iput-object p2, p0, Lcom/dolby/dax/dap/DapController;->dapEffect:Lcom/dolby/dax/dap/Dap;

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/dolby/dax/dap/AndroidDevice;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/dolby/dax/dap/DapController;->paramTranslators:Ljava/util/Map;

    sget-object v2, Lcom/dolby/dax/dap/DapContext;->kDapDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/dap/AndroidDevice;

    iget-object v2, p0, Lcom/dolby/dax/dap/DapController;->paramTranslators:Ljava/util/Map;

    new-instance v3, Lcom/dolby/dax/dap/translator/ParameterTranslator;

    invoke-direct {v3, p1}, Lcom/dolby/dax/dap/translator/ParameterTranslator;-><init>(I)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/dolby/dax/dap/DapContext;

    iget-object v3, p0, Lcom/dolby/dax/dap/DapController;->paramTranslators:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/dolby/dax/dap/DapContext;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    return-void
.end method


# virtual methods
.method public onDapOnChanged(Lcom/dolby/dax/state/DsContext;Z)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/DapController;->dapEffect:Lcom/dolby/dax/dap/Dap;

    invoke-interface {v0, p2}, Lcom/dolby/dax/dap/Dap;->setEnabled(Z)I

    return-void
.end method

.method public onLoad(Lcom/dolby/dax/state/DsContext;)V
    .locals 8

    const-string/jumbo v5, "DapController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onLoad("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-interface {p1}, Lcom/dolby/dax/state/DsContext;->getSelectedProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dolby/dax/dap/DapContext;->setProfile(Lcom/dolby/dax/model/Profile;)V

    iget-object v5, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-interface {p1}, Lcom/dolby/dax/state/DsContext;->getSelectedProfileIeq()Lcom/dolby/dax/model/IeqPreset;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dolby/dax/dap/DapContext;->setIeqPreset(Lcom/dolby/dax/model/IeqPreset;)V

    iget-object v5, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-interface {p1}, Lcom/dolby/dax/state/DsContext;->getSelectedProfileGeq()Lcom/dolby/dax/model/GeqPreset;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dolby/dax/dap/DapContext;->setGeqPreset(Lcom/dolby/dax/model/GeqPreset;)V

    sget-object v5, Lcom/dolby/dax/dap/DapContext;->kDeviceForPort:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/Port;

    invoke-interface {p1, v0}, Lcom/dolby/dax/state/DsContext;->getSelectedProfileEndpoint(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-virtual {v5, v0, v2}, Lcom/dolby/dax/dap/DapContext;->setProfileEndpoint(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/ProfileEndpoint;)V

    :goto_1
    invoke-interface {p1, v0}, Lcom/dolby/dax/state/DsContext;->getSelectedProfilePort(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfilePort;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-virtual {v5, v3}, Lcom/dolby/dax/dap/DapContext;->setProfilePort(Lcom/dolby/dax/model/ProfilePort;)V

    :goto_2
    invoke-interface {p1, v0}, Lcom/dolby/dax/state/DsContext;->getSelectedTuning(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/Tuning;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-virtual {v5, v0, v4}, Lcom/dolby/dax/dap/DapContext;->setTuning(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "DapController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No profile endpoint found for port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "DapController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No profile port found for port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string/jumbo v5, "DapController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No tuning found for port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {p0, v5}, Lcom/dolby/dax/dap/DapController;->sendParameters(Lcom/dolby/dax/dap/AndroidDevice;)V

    iget-object v5, p0, Lcom/dolby/dax/dap/DapController;->dapEffect:Lcom/dolby/dax/dap/Dap;

    invoke-interface {p1}, Lcom/dolby/dax/state/DsContext;->getDapOn()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/dolby/dax/dap/Dap;->setEnabled(Z)I

    return-void
.end method

.method public onSelectedProfileChanged(Lcom/dolby/dax/state/DsContext;)V
    .locals 7

    const-string/jumbo v4, "DapController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Profile Changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/dolby/dax/state/DsContext;->getSelectedProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolby/dax/model/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-interface {p1}, Lcom/dolby/dax/state/DsContext;->getSelectedProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dolby/dax/dap/DapContext;->setProfile(Lcom/dolby/dax/model/Profile;)V

    iget-object v4, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-interface {p1}, Lcom/dolby/dax/state/DsContext;->getSelectedProfileIeq()Lcom/dolby/dax/model/IeqPreset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dolby/dax/dap/DapContext;->setIeqPreset(Lcom/dolby/dax/model/IeqPreset;)V

    iget-object v4, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-interface {p1}, Lcom/dolby/dax/state/DsContext;->getSelectedProfileGeq()Lcom/dolby/dax/model/GeqPreset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dolby/dax/dap/DapContext;->setGeqPreset(Lcom/dolby/dax/model/GeqPreset;)V

    sget-object v4, Lcom/dolby/dax/dap/DapContext;->kDeviceForPort:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/Port;

    invoke-interface {p1, v0}, Lcom/dolby/dax/state/DsContext;->getSelectedProfileEndpoint(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-virtual {v4, v0, v2}, Lcom/dolby/dax/dap/DapContext;->setProfileEndpoint(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/ProfileEndpoint;)V

    :cond_1
    invoke-interface {p1, v0}, Lcom/dolby/dax/state/DsContext;->getSelectedProfilePort(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfilePort;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-virtual {v4, v3}, Lcom/dolby/dax/dap/DapContext;->setProfilePort(Lcom/dolby/dax/model/ProfilePort;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {p0, v4}, Lcom/dolby/dax/dap/DapController;->sendParameters(Lcom/dolby/dax/dap/AndroidDevice;)V

    return-void
.end method

.method public onSelectedProfileEndpointChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/ProfileEndpoint;)V
    .locals 3

    const-string/jumbo v0, "DapController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSelectedProfileEndpointChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-virtual {v0, p2, p3}, Lcom/dolby/dax/dap/DapContext;->setProfileEndpoint(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/ProfileEndpoint;)V

    sget-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {p0, v0}, Lcom/dolby/dax/dap/DapController;->sendParameters(Lcom/dolby/dax/dap/AndroidDevice;)V

    return-void
.end method

.method public onSelectedProfileGeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/GeqPreset;)V
    .locals 3

    const-string/jumbo v0, "DapController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSelectedProfileGeqChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-virtual {v0, p2}, Lcom/dolby/dax/dap/DapContext;->setGeqPreset(Lcom/dolby/dax/model/GeqPreset;)V

    sget-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {p0, v0}, Lcom/dolby/dax/dap/DapController;->sendParameters(Lcom/dolby/dax/dap/AndroidDevice;)V

    return-void
.end method

.method public onSelectedProfileIeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/IeqPreset;)V
    .locals 3

    const-string/jumbo v0, "DapController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSelectedProfileIeqChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-virtual {v0, p2}, Lcom/dolby/dax/dap/DapContext;->setIeqPreset(Lcom/dolby/dax/model/IeqPreset;)V

    sget-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {p0, v0}, Lcom/dolby/dax/dap/DapController;->sendParameters(Lcom/dolby/dax/dap/AndroidDevice;)V

    return-void
.end method

.method public onSelectedProfileNameChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V
    .locals 3

    const-string/jumbo v0, "DapController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSelectedProfileNameChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectedProfileParameterChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V
    .locals 3

    const-string/jumbo v0, "DapController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSelectedProfileParameterChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-virtual {v0, p2}, Lcom/dolby/dax/dap/DapContext;->setProfile(Lcom/dolby/dax/model/Profile;)V

    sget-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {p0, v0}, Lcom/dolby/dax/dap/DapController;->sendParameters(Lcom/dolby/dax/dap/AndroidDevice;)V

    return-void
.end method

.method public onSelectedTuningChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;)V
    .locals 3

    const-string/jumbo v0, "DapController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSelectedTuningChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/dax/dap/DapController;->dapContext:Lcom/dolby/dax/dap/DapContext;

    invoke-virtual {v0, p2, p3}, Lcom/dolby/dax/dap/DapContext;->setTuning(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;)V

    sget-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {p0, v0}, Lcom/dolby/dax/dap/DapController;->sendParameters(Lcom/dolby/dax/dap/AndroidDevice;)V

    return-void
.end method

.method protected sendParameters(Lcom/dolby/dax/dap/AndroidDevice;)V
    .locals 4

    new-instance v2, Lcom/dolby/dax/dap/commands/SetParamCommand;

    invoke-virtual {p1}, Lcom/dolby/dax/dap/AndroidDevice;->getNativeDeviceId()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/dolby/dax/dap/commands/SetParamCommand;-><init>(I)V

    iget-object v3, p0, Lcom/dolby/dax/dap/DapController;->paramTranslators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {v3}, Lcom/dolby/dax/dap/AndroidDevice;->getNativeDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dolby/dax/dap/commands/SetParamCommand;->setDeviceId(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/dap/translator/ParameterTranslator;

    invoke-virtual {v3, v2}, Lcom/dolby/dax/dap/translator/ParameterTranslator;->translatePending(Lcom/dolby/dax/dap/commands/SetParamCommand;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/dolby/dax/dap/DapController;->dapEffect:Lcom/dolby/dax/dap/Dap;

    invoke-virtual {v2, v3}, Lcom/dolby/dax/dap/commands/SetParamCommand;->execute(Lcom/dolby/dax/dap/Dap;)I

    return-void
.end method

.method public setDapEffect(Lcom/dolby/dax/dap/Dap;Lcom/dolby/dax/state/DsContext;)V
    .locals 4

    iput-object p1, p0, Lcom/dolby/dax/dap/DapController;->dapEffect:Lcom/dolby/dax/dap/Dap;

    new-instance v2, Lcom/dolby/dax/dap/commands/SetParamCommand;

    sget-object v3, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {v3}, Lcom/dolby/dax/dap/AndroidDevice;->getNativeDeviceId()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/dolby/dax/dap/commands/SetParamCommand;-><init>(I)V

    iget-object v3, p0, Lcom/dolby/dax/dap/DapController;->paramTranslators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {v3}, Lcom/dolby/dax/dap/AndroidDevice;->getNativeDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dolby/dax/dap/commands/SetParamCommand;->setDeviceId(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/dap/translator/ParameterTranslator;

    invoke-virtual {v3, v2}, Lcom/dolby/dax/dap/translator/ParameterTranslator;->translateAll(Lcom/dolby/dax/dap/commands/SetParamCommand;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Lcom/dolby/dax/dap/commands/SetParamCommand;->execute(Lcom/dolby/dax/dap/Dap;)I

    invoke-interface {p2}, Lcom/dolby/dax/state/DsContext;->getDapOn()Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/dolby/dax/dap/Dap;->setEnabled(Z)I

    return-void
.end method

.class public Lcom/dolby/dax/state/DsContextImpl;
.super Ljava/lang/Object;
.source "DsContextImpl.java"

# interfaces
.implements Lcom/dolby/dax/state/DsContext;


# instance fields
.field final devices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dolby/dax/model/Port;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isDapOn:Z

.field final observable:Lcom/dolby/dax/state/DsContextChangeObservable;

.field final profiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/state/ProfileContext;",
            ">;"
        }
    .end annotation
.end field

.field final provider:Lcom/dolby/dax/db/Provider;

.field selectedContext:Lcom/dolby/dax/state/ProfileContext;

.field final tunings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dolby/dax/model/Port;",
            "Lcom/dolby/dax/model/Tuning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolby/dax/db/Provider;Lcom/dolby/dax/state/DsContextChangeObservable;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    iput-object p2, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->profiles:Ljava/util/List;

    sget-object v3, Lcom/dolby/dax/state/DsContextImpl;->SupportedProfiles:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/ProfileType;

    new-instance v0, Lcom/dolby/dax/state/ProfileContext;

    invoke-direct {v0, p1, v1}, Lcom/dolby/dax/state/ProfileContext;-><init>(Lcom/dolby/dax/db/Provider;Lcom/dolby/dax/model/ProfileType;)V

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->profiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lcom/dolby/dax/model/Port;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->devices:Ljava/util/Map;

    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lcom/dolby/dax/model/Port;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->tunings:Ljava/util/Map;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    return-void
.end method


# virtual methods
.method getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->isSelected(Lcom/dolby/dax/model/ProfileType;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->profiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    if-ne v2, p1, :cond_1

    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public getDapOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/dax/state/DsContextImpl;->isDapOn:Z

    return v0
.end method

.method public getDefaultProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v0, p1}, Lcom/dolby/dax/db/Provider;->loadDefaultProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTuningDevice(Lcom/dolby/dax/model/Port;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/dolby/dax/model/Port;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->getProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v0

    return-object v0
.end method

.method public getProfileEndpoint(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolby/dax/state/ProfileContext;->getProfileEndpoint(Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public getProfileGeqParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;)[I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/state/ProfileContext;->getSelectedGeqPreset()Lcom/dolby/dax/model/GeqPreset;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolby/dax/model/GeqPreset;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    return-object v1
.end method

.method public getProfileIeq(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/IeqPreset;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->getSelectedIeqPreset()Lcom/dolby/dax/model/IeqPreset;

    move-result-object v0

    return-object v0
.end method

.method public getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;Lcom/dolby/dax/model/Parameter;)[I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolby/dax/state/ProfileContext;->getProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/dax/model/Profile;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/dolby/dax/state/ProfileContext;->getProfileEndpoint(Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/dolby/dax/model/ProfileEndpoint;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v2

    return-object v2
.end method

.method public getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;)[I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/state/ProfileContext;->getProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolby/dax/model/Profile;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    return-object v1
.end method

.method public getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Parameter;)[I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolby/dax/state/ProfileContext;->getProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/dax/model/Profile;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/dolby/dax/state/ProfileContext;->getProfilePort(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfilePort;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/dolby/dax/model/ProfilePort;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v2

    return-object v2
.end method

.method public getProvider()Lcom/dolby/dax/db/Provider;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    return-object v0
.end method

.method public getSelectedProfile()Lcom/dolby/dax/model/Profile;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->getProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedProfileEndpoint(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfileEndpoint;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getSelectedTuning(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/Tuning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/model/Tuning;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v1, v0}, Lcom/dolby/dax/state/ProfileContext;->getProfileEndpoint(Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedProfileGeq()Lcom/dolby/dax/model/GeqPreset;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->getSelectedGeqPreset()Lcom/dolby/dax/model/GeqPreset;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedProfileIeq()Lcom/dolby/dax/model/IeqPreset;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->getSelectedIeqPreset()Lcom/dolby/dax/model/IeqPreset;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedProfilePort(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfilePort;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/state/ProfileContext;->getProfilePort(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfilePort;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTuning(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/Tuning;
    .locals 2

    iget-object v1, p0, Lcom/dolby/dax/state/DsContextImpl;->tunings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/Tuning;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method public getSelectedTuningDevice(Lcom/dolby/dax/model/Port;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->devices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedTuningParameter(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Parameter;)[I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getSelectedTuning(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/Tuning;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolby/dax/model/Tuning;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    return-object v1
.end method

.method public isProfileModified(Lcom/dolby/dax/model/ProfileType;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->isModified()Z

    move-result v0

    return v0
.end method

.method isSelected(Lcom/dolby/dax/model/ProfileType;)Z
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 8

    iget-object v6, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v6}, Lcom/dolby/dax/db/Provider;->getDefaultXmlSignature()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v6}, Lcom/dolby/dax/db/Provider;->getSelectedProfile()Lcom/dolby/dax/model/ProfileType;

    move-result-object v5

    iget-object v6, p0, Lcom/dolby/dax/state/DsContextImpl;->profiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v3}, Lcom/dolby/dax/state/ProfileContext;->load()V

    invoke-virtual {v3}, Lcom/dolby/dax/state/ProfileContext;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v6

    if-ne v6, v5, :cond_1

    iput-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/dolby/dax/state/DsContextImpl;->SupportedPorts:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/Port;

    invoke-virtual {p0, v1}, Lcom/dolby/dax/state/DsContextImpl;->getDefaultTuningDevice(Lcom/dolby/dax/model/Port;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/dolby/dax/state/DsContextImpl;->devices:Ljava/util/Map;

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/dolby/dax/state/DsContextImpl;->tunings:Ljava/util/Map;

    iget-object v7, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v7, v0}, Lcom/dolby/dax/db/Provider;->loadTuningForDevice(Ljava/lang/String;)Lcom/dolby/dax/model/Tuning;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v6}, Lcom/dolby/dax/db/Provider;->isDapOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/dolby/dax/state/DsContextImpl;->isDapOn:Z

    iget-object v6, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-virtual {v6, p0}, Lcom/dolby/dax/state/DsContextChangeObservable;->onLoad(Lcom/dolby/dax/state/DsContext;)V

    iget-boolean v6, p0, Lcom/dolby/dax/state/DsContextImpl;->isDapOn:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "dolby_init=true"

    invoke-static {v6}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    const-string/jumbo v6, "dolby_init=false"

    invoke-static {v6}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2
.end method

.method public registerObserver(Lcom/dolby/dax/state/OnDsContextChange;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/state/DsContextChangeObservable;->registerObserver(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/dolby/dax/state/OnDsContextChange;->onLoad(Lcom/dolby/dax/state/DsContext;)V

    return-void
.end method

.method public reloadAllProfile()V
    .locals 5

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v3}, Lcom/dolby/dax/db/Provider;->getSelectedProfile()Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->profiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->load()V

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v3

    if-ne v3, v2, :cond_0

    iput-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-virtual {v3, p0}, Lcom/dolby/dax/state/DsContextChangeObservable;->onSelectedProfileChanged(Lcom/dolby/dax/state/DsContext;)V

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v3}, Lcom/dolby/dax/db/Provider;->isDapOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/dolby/dax/state/DsContextImpl;->isDapOn:Z

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    iget-boolean v4, p0, Lcom/dolby/dax/state/DsContextImpl;->isDapOn:Z

    invoke-virtual {v3, p0, v4}, Lcom/dolby/dax/state/DsContextChangeObservable;->onDapOnChanged(Lcom/dolby/dax/state/DsContext;Z)V

    return-void
.end method

.method public resetProfile(Lcom/dolby/dax/model/ProfileType;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->reset()V

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->isSelected(Lcom/dolby/dax/model/ProfileType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-virtual {v0, p0}, Lcom/dolby/dax/state/DsContextChangeObservable;->onSelectedProfileChanged(Lcom/dolby/dax/state/DsContext;)V

    :cond_0
    return-void
.end method

.method public save()V
    .locals 4

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v2}, Lcom/dolby/dax/db/Provider;->beginTransaction()V

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->profiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->save()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v3}, Lcom/dolby/dax/state/ProfileContext;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/dolby/dax/db/Provider;->setSelectedProfile(Lcom/dolby/dax/model/ProfileType;)V

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    iget-boolean v3, p0, Lcom/dolby/dax/state/DsContextImpl;->isDapOn:Z

    invoke-interface {v2, v3}, Lcom/dolby/dax/db/Provider;->setDapOn(Z)V

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v2}, Lcom/dolby/dax/db/Provider;->commitTransaction()V

    return-void
.end method

.method public saveDsProfileSettings()V
    .locals 4

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v2}, Lcom/dolby/dax/db/Provider;->beginTransaction()V

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->profiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->save()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v3}, Lcom/dolby/dax/state/ProfileContext;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/dolby/dax/db/Provider;->setSelectedProfile(Lcom/dolby/dax/model/ProfileType;)V

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v2}, Lcom/dolby/dax/db/Provider;->commitTransaction()V

    return-void
.end method

.method public saveDsState()V
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v0}, Lcom/dolby/dax/db/Provider;->beginTransaction()V

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    iget-boolean v1, p0, Lcom/dolby/dax/state/DsContextImpl;->isDapOn:Z

    invoke-interface {v0, v1}, Lcom/dolby/dax/db/Provider;->setDapOn(Z)V

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v0}, Lcom/dolby/dax/db/Provider;->commitTransaction()V

    return-void
.end method

.method public selectDefaultTuning(Lcom/dolby/dax/model/Port;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getDefaultTuningDevice(Lcom/dolby/dax/model/Port;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/state/DsContextImpl;->setSelectedTuning(Lcom/dolby/dax/model/Port;Ljava/lang/String;)Z

    return-void
.end method

.method public setDapOn(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/dax/state/DsContextImpl;->isDapOn:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/dolby/dax/state/DsContextImpl;->isDapOn:Z

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-virtual {v0, p0, p1}, Lcom/dolby/dax/state/DsContextChangeObservable;->onDapOnChanged(Lcom/dolby/dax/state/DsContext;Z)V

    :cond_0
    return-void
.end method

.method setParameter(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Parameter;[I)Z
    .locals 1

    invoke-virtual {p1, p2}, Lcom/dolby/dax/model/ParameterValues;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setProfileGeq(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/PresetType;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/state/ProfileContext;->getProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/dax/model/Profile;->getSelectedGeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v1

    if-eq v1, p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/dolby/dax/model/Profile;->setSelectedGeqPreset(Lcom/dolby/dax/model/PresetType;)V

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->isSelected(Lcom/dolby/dax/model/ProfileType;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v2}, Lcom/dolby/dax/state/ProfileContext;->getSelectedGeqPreset()Lcom/dolby/dax/model/GeqPreset;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/dolby/dax/state/DsContextChangeObservable;->onSelectedProfileGeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/GeqPreset;)V

    :cond_0
    return-void
.end method

.method public setProfileGeqParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;[I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/state/ProfileContext;->getSelectedGeqPreset()Lcom/dolby/dax/model/GeqPreset;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/dolby/dax/state/DsContextImpl;->setParameter(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Parameter;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->isSelected(Lcom/dolby/dax/model/ProfileType;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-virtual {v1, p0, v0}, Lcom/dolby/dax/state/DsContextChangeObservable;->onSelectedProfileGeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/GeqPreset;)V

    :cond_0
    return-void
.end method

.method public setProfileIeq(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/PresetType;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/state/ProfileContext;->getProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/dax/model/Profile;->getSelectedIeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v1

    if-eq v1, p2, :cond_0

    sget-object v1, Lcom/dolby/dax/model/PresetType;->off:Lcom/dolby/dax/model/PresetType;

    if-ne p2, v1, :cond_1

    sget-object v1, Lcom/dolby/dax/model/Parameter;->ieq_enable:Lcom/dolby/dax/model/Parameter;

    new-array v2, v4, [I

    aput v3, v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/dolby/dax/state/DsContextImpl;->setProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;[I)V

    :goto_0
    invoke-virtual {v0, p2}, Lcom/dolby/dax/model/Profile;->setSelectedIeqPreset(Lcom/dolby/dax/model/PresetType;)V

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->isSelected(Lcom/dolby/dax/model/ProfileType;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v2}, Lcom/dolby/dax/state/ProfileContext;->getSelectedIeqPreset()Lcom/dolby/dax/model/IeqPreset;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/dolby/dax/state/DsContextChangeObservable;->onSelectedProfileIeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/IeqPreset;)V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/dolby/dax/model/Parameter;->ieq_enable:Lcom/dolby/dax/model/Parameter;

    new-array v2, v4, [I

    aput v4, v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/dolby/dax/state/DsContextImpl;->setProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;[I)V

    goto :goto_0
.end method

.method public setProfileName(Lcom/dolby/dax/model/ProfileType;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/state/ProfileContext;->getProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolby/dax/model/Profile;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->isSelected(Lcom/dolby/dax/model/ProfileType;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-virtual {v1, p0, v0}, Lcom/dolby/dax/state/DsContextChangeObservable;->onSelectedProfileNameChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V

    :cond_0
    return-void
.end method

.method public setProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;Lcom/dolby/dax/model/Parameter;[I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/dolby/dax/state/ProfileContext;->getProfileEndpoint(Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/dolby/dax/state/DsContextImpl;->setParameter(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Parameter;[I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->isSelected(Lcom/dolby/dax/model/ProfileType;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextImpl;->tunings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/model/Tuning;

    invoke-virtual {v3}, Lcom/dolby/dax/model/Tuning;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v3

    if-ne v3, p2, :cond_0

    iget-object v4, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/model/Port;

    invoke-virtual {v4, p0, v3, v0}, Lcom/dolby/dax/state/DsContextChangeObservable;->onSelectedProfileEndpointChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/ProfileEndpoint;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;[I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/dax/state/ProfileContext;->getProfile()Lcom/dolby/dax/model/Profile;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/dolby/dax/state/DsContextImpl;->setParameter(Lcom/dolby/dax/model/ParameterValues;Lcom/dolby/dax/model/Parameter;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->isSelected(Lcom/dolby/dax/model/ProfileType;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-virtual {v1, p0, v0}, Lcom/dolby/dax/state/DsContextChangeObservable;->onSelectedProfileParameterChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V

    :cond_0
    return-void
.end method

.method public setSelectedProfile(Lcom/dolby/dax/model/ProfileType;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    invoke-virtual {v0}, Lcom/dolby/dax/state/ProfileContext;->getType()Lcom/dolby/dax/model/ProfileType;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/dolby/dax/state/DsContextImpl;->getContext(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/state/ProfileContext;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->selectedContext:Lcom/dolby/dax/state/ProfileContext;

    iget-object v0, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-virtual {v0, p0}, Lcom/dolby/dax/state/DsContextChangeObservable;->onSelectedProfileChanged(Lcom/dolby/dax/state/DsContext;)V

    :cond_0
    return-void
.end method

.method public setSelectedTuning(Lcom/dolby/dax/model/Port;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->devices:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v2, p2}, Lcom/dolby/dax/db/Provider;->loadTuningForDevice(Ljava/lang/String;)Lcom/dolby/dax/model/Tuning;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->devices:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->tunings:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/Tuning;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dolby/dax/model/Tuning;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dolby/dax/model/Tuning;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextImpl;->observable:Lcom/dolby/dax/state/DsContextChangeObservable;

    invoke-virtual {v2, p0, p1, v1}, Lcom/dolby/dax/state/DsContextChangeObservable;->onSelectedTuningChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

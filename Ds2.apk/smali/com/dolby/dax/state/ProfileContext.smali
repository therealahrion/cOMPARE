.class public Lcom/dolby/dax/state/ProfileContext;
.super Ljava/lang/Object;
.source "ProfileContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/dax/state/ProfileContext$Defaults;
    }
.end annotation


# instance fields
.field private defaults:Lcom/dolby/dax/state/ProfileContext$Defaults;

.field endpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/ProfileEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field ports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/ProfilePort;",
            ">;"
        }
    .end annotation
.end field

.field presets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/GeqPreset;",
            ">;"
        }
    .end annotation
.end field

.field profile:Lcom/dolby/dax/model/Profile;

.field final profileType:Lcom/dolby/dax/model/ProfileType;

.field final provider:Lcom/dolby/dax/db/Provider;


# direct methods
.method public constructor <init>(Lcom/dolby/dax/db/Provider;Lcom/dolby/dax/model/ProfileType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iput-object p2, p0, Lcom/dolby/dax/state/ProfileContext;->profileType:Lcom/dolby/dax/model/ProfileType;

    return-void
.end method


# virtual methods
.method getGeqPreset(Lcom/dolby/dax/model/PresetType;)Lcom/dolby/dax/model/GeqPreset;
    .locals 3

    iget-object v2, p0, Lcom/dolby/dax/state/ProfileContext;->presets:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/GeqPreset;

    invoke-virtual {v0}, Lcom/dolby/dax/model/GeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getProfile()Lcom/dolby/dax/model/Profile;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->profile:Lcom/dolby/dax/model/Profile;

    return-object v0
.end method

.method public getProfileEndpoint(Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;
    .locals 3

    iget-object v2, p0, Lcom/dolby/dax/state/ProfileContext;->endpoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/ProfileEndpoint;

    invoke-virtual {v0}, Lcom/dolby/dax/model/ProfileEndpoint;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getProfilePort(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfilePort;
    .locals 3

    iget-object v2, p0, Lcom/dolby/dax/state/ProfileContext;->ports:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/ProfilePort;

    invoke-virtual {v0}, Lcom/dolby/dax/model/ProfilePort;->getPort()Lcom/dolby/dax/model/Port;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSelectedGeqPreset()Lcom/dolby/dax/model/GeqPreset;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->profile:Lcom/dolby/dax/model/Profile;

    invoke-virtual {v0}, Lcom/dolby/dax/model/Profile;->getSelectedGeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolby/dax/state/ProfileContext;->getGeqPreset(Lcom/dolby/dax/model/PresetType;)Lcom/dolby/dax/model/GeqPreset;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIeqPreset()Lcom/dolby/dax/model/IeqPreset;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->profile:Lcom/dolby/dax/model/Profile;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {v1, v2}, Lcom/dolby/dax/model/Profile;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v2, p0, Lcom/dolby/dax/state/ProfileContext;->profile:Lcom/dolby/dax/model/Profile;

    invoke-virtual {v2}, Lcom/dolby/dax/model/Profile;->getSelectedIeqPreset()Lcom/dolby/dax/model/PresetType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/dolby/dax/db/Provider;->loadIeqPreset(Lcom/dolby/dax/model/PresetType;)Lcom/dolby/dax/model/IeqPreset;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Lcom/dolby/dax/model/IeqPreset;

    sget-object v2, Lcom/dolby/dax/model/PresetType;->off:Lcom/dolby/dax/model/PresetType;

    invoke-direct {v1, v2}, Lcom/dolby/dax/model/IeqPreset;-><init>(Lcom/dolby/dax/model/PresetType;)V

    return-object v1
.end method

.method getType()Lcom/dolby/dax/model/ProfileType;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->profileType:Lcom/dolby/dax/model/ProfileType;

    return-object v0
.end method

.method isModified()Z
    .locals 10

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/dolby/dax/state/ProfileContext;->profile:Lcom/dolby/dax/model/Profile;

    iget-object v8, p0, Lcom/dolby/dax/state/ProfileContext;->defaults:Lcom/dolby/dax/state/ProfileContext$Defaults;

    iget-object v8, v8, Lcom/dolby/dax/state/ProfileContext$Defaults;->profile:Lcom/dolby/dax/model/Profile;

    invoke-virtual {v7, v8}, Lcom/dolby/dax/model/Profile;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    return v9

    :cond_0
    iget-object v7, p0, Lcom/dolby/dax/state/ProfileContext;->defaults:Lcom/dolby/dax/state/ProfileContext$Defaults;

    iget-object v7, v7, Lcom/dolby/dax/state/ProfileContext$Defaults;->endpoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dolby/dax/model/ProfileEndpoint;

    invoke-virtual {v4}, Lcom/dolby/dax/model/ProfileEndpoint;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/dolby/dax/state/ProfileContext;->getProfileEndpoint(Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/dolby/dax/model/ProfileEndpoint;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    return v9

    :cond_2
    iget-object v7, p0, Lcom/dolby/dax/state/ProfileContext;->defaults:Lcom/dolby/dax/state/ProfileContext$Defaults;

    iget-object v7, v7, Lcom/dolby/dax/state/ProfileContext$Defaults;->ports:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dolby/dax/model/ProfilePort;

    invoke-virtual {v5}, Lcom/dolby/dax/model/ProfilePort;->getPort()Lcom/dolby/dax/model/Port;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/dolby/dax/state/ProfileContext;->getProfilePort(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfilePort;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/dolby/dax/model/ProfilePort;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v9

    :cond_4
    iget-object v7, p0, Lcom/dolby/dax/state/ProfileContext;->defaults:Lcom/dolby/dax/state/ProfileContext$Defaults;

    iget-object v7, v7, Lcom/dolby/dax/state/ProfileContext$Defaults;->presets:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/model/GeqPreset;

    invoke-virtual {v3}, Lcom/dolby/dax/model/GeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/dolby/dax/state/ProfileContext;->getGeqPreset(Lcom/dolby/dax/model/PresetType;)Lcom/dolby/dax/model/GeqPreset;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dolby/dax/model/GeqPreset;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    return v9

    :cond_6
    const/4 v7, 0x0

    return v7
.end method

.method load()V
    .locals 3

    iget-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->profileType:Lcom/dolby/dax/model/ProfileType;

    invoke-interface {v0, v1}, Lcom/dolby/dax/db/Provider;->loadProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->profile:Lcom/dolby/dax/model/Profile;

    iget-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->profileType:Lcom/dolby/dax/model/ProfileType;

    invoke-interface {v0, v1}, Lcom/dolby/dax/db/Provider;->loadProfileEndpoints(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->endpoints:Ljava/util/List;

    iget-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->profileType:Lcom/dolby/dax/model/ProfileType;

    invoke-interface {v0, v1}, Lcom/dolby/dax/db/Provider;->loadProfilePorts(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->ports:Ljava/util/List;

    iget-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->profileType:Lcom/dolby/dax/model/ProfileType;

    invoke-interface {v0, v1}, Lcom/dolby/dax/db/Provider;->loadGeqPresets(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->presets:Ljava/util/List;

    iget-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->defaults:Lcom/dolby/dax/state/ProfileContext$Defaults;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dolby/dax/state/ProfileContext$Defaults;

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v2, p0, Lcom/dolby/dax/state/ProfileContext;->profileType:Lcom/dolby/dax/model/ProfileType;

    invoke-direct {v0, v1, v2}, Lcom/dolby/dax/state/ProfileContext$Defaults;-><init>(Lcom/dolby/dax/db/Provider;Lcom/dolby/dax/model/ProfileType;)V

    iput-object v0, p0, Lcom/dolby/dax/state/ProfileContext;->defaults:Lcom/dolby/dax/state/ProfileContext$Defaults;

    :cond_0
    return-void
.end method

.method reset()V
    .locals 4

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v1}, Lcom/dolby/dax/db/Provider;->beginTransaction()V

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v2, p0, Lcom/dolby/dax/state/ProfileContext;->profile:Lcom/dolby/dax/model/Profile;

    invoke-interface {v1, v2}, Lcom/dolby/dax/db/Provider;->reset(Lcom/dolby/dax/model/Profile;)Lcom/dolby/dax/model/Profile;

    move-result-object v1

    iput-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->profile:Lcom/dolby/dax/model/Profile;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->endpoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/state/ProfileContext;->endpoints:Ljava/util/List;

    iget-object v3, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->endpoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/ProfileEndpoint;

    invoke-interface {v3, v1}, Lcom/dolby/dax/db/Provider;->reset(Lcom/dolby/dax/model/ProfileEndpoint;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->ports:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/dolby/dax/state/ProfileContext;->ports:Ljava/util/List;

    iget-object v3, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->ports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/ProfilePort;

    invoke-interface {v3, v1}, Lcom/dolby/dax/db/Provider;->reset(Lcom/dolby/dax/model/ProfilePort;)Lcom/dolby/dax/model/ProfilePort;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->presets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/dolby/dax/state/ProfileContext;->presets:Ljava/util/List;

    iget-object v3, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->presets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolby/dax/model/GeqPreset;

    invoke-interface {v3, v1}, Lcom/dolby/dax/db/Provider;->reset(Lcom/dolby/dax/model/GeqPreset;)Lcom/dolby/dax/model/GeqPreset;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v1}, Lcom/dolby/dax/db/Provider;->commitTransaction()V

    return-void
.end method

.method save()V
    .locals 8

    iget-object v6, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    iget-object v7, p0, Lcom/dolby/dax/state/ProfileContext;->profile:Lcom/dolby/dax/model/Profile;

    invoke-interface {v6, v7}, Lcom/dolby/dax/db/Provider;->save(Lcom/dolby/dax/model/Profile;)V

    iget-object v6, p0, Lcom/dolby/dax/state/ProfileContext;->endpoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolby/dax/model/ProfileEndpoint;

    iget-object v6, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v6, v2}, Lcom/dolby/dax/db/Provider;->save(Lcom/dolby/dax/model/ProfileEndpoint;)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/dolby/dax/state/ProfileContext;->ports:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dolby/dax/model/ProfilePort;

    iget-object v6, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v6, v4}, Lcom/dolby/dax/db/Provider;->save(Lcom/dolby/dax/model/ProfilePort;)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/dolby/dax/state/ProfileContext;->presets:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/GeqPreset;

    iget-object v6, p0, Lcom/dolby/dax/state/ProfileContext;->provider:Lcom/dolby/dax/db/Provider;

    invoke-interface {v6, v0}, Lcom/dolby/dax/db/Provider;->save(Lcom/dolby/dax/model/GeqPreset;)V

    goto :goto_2

    :cond_2
    return-void
.end method

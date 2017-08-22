.class public Lcom/dolby/dax/state/DsContextChangeObservable;
.super Landroid/database/Observable;
.source "DsContextChangeObservable.java"

# interfaces
.implements Lcom/dolby/dax/state/OnDsContextChange;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/dolby/dax/state/OnDsContextChange;",
        ">;",
        "Lcom/dolby/dax/state/OnDsContextChange;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public onDapOnChanged(Lcom/dolby/dax/state/DsContext;Z)V
    .locals 4

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/OnDsContextChange;

    invoke-interface {v0, p1, p2}, Lcom/dolby/dax/state/OnDsContextChange;->onDapOnChanged(Lcom/dolby/dax/state/DsContext;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onLoad(Lcom/dolby/dax/state/DsContext;)V
    .locals 4

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/OnDsContextChange;

    invoke-interface {v0, p1}, Lcom/dolby/dax/state/OnDsContextChange;->onLoad(Lcom/dolby/dax/state/DsContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onSelectedProfileChanged(Lcom/dolby/dax/state/DsContext;)V
    .locals 4

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/OnDsContextChange;

    invoke-interface {v0, p1}, Lcom/dolby/dax/state/OnDsContextChange;->onSelectedProfileChanged(Lcom/dolby/dax/state/DsContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onSelectedProfileEndpointChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/ProfileEndpoint;)V
    .locals 4

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/OnDsContextChange;

    invoke-interface {v0, p1, p2, p3}, Lcom/dolby/dax/state/OnDsContextChange;->onSelectedProfileEndpointChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/ProfileEndpoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onSelectedProfileGeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/GeqPreset;)V
    .locals 4

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/OnDsContextChange;

    invoke-interface {v0, p1, p2}, Lcom/dolby/dax/state/OnDsContextChange;->onSelectedProfileGeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/GeqPreset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onSelectedProfileIeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/IeqPreset;)V
    .locals 4

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/OnDsContextChange;

    invoke-interface {v0, p1, p2}, Lcom/dolby/dax/state/OnDsContextChange;->onSelectedProfileIeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/IeqPreset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onSelectedProfileNameChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V
    .locals 4

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/OnDsContextChange;

    invoke-interface {v0, p1, p2}, Lcom/dolby/dax/state/OnDsContextChange;->onSelectedProfileNameChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onSelectedProfileParameterChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V
    .locals 4

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/OnDsContextChange;

    invoke-interface {v0, p1, p2}, Lcom/dolby/dax/state/OnDsContextChange;->onSelectedProfileParameterChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onSelectedTuningChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;)V
    .locals 4

    iget-object v3, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/state/DsContextChangeObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/state/OnDsContextChange;

    invoke-interface {v0, p1, p2, p3}, Lcom/dolby/dax/state/OnDsContextChange;->onSelectedTuningChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

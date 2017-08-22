.class public interface abstract Lcom/dolby/dax/state/OnDsContextChange;
.super Ljava/lang/Object;
.source "OnDsContextChange.java"


# virtual methods
.method public abstract onDapOnChanged(Lcom/dolby/dax/state/DsContext;Z)V
.end method

.method public abstract onLoad(Lcom/dolby/dax/state/DsContext;)V
.end method

.method public abstract onSelectedProfileChanged(Lcom/dolby/dax/state/DsContext;)V
.end method

.method public abstract onSelectedProfileEndpointChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/ProfileEndpoint;)V
.end method

.method public abstract onSelectedProfileGeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/GeqPreset;)V
.end method

.method public abstract onSelectedProfileIeqChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/IeqPreset;)V
.end method

.method public abstract onSelectedProfileNameChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V
.end method

.method public abstract onSelectedProfileParameterChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Profile;)V
.end method

.method public abstract onSelectedTuningChanged(Lcom/dolby/dax/state/DsContext;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;)V
.end method

.class Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;
.super Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;
.source "ParameterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/service/adapter/ParameterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileEndpointParameterStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;


# direct methods
.method public constructor <init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-direct {p0, p1, p2, p3}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    return-void
.end method


# virtual methods
.method public getParameter(Lcom/dolby/dax/model/ProfileType;)[I
    .locals 4

    iget-object v1, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-static {v1}, Lcom/dolby/dax/service/adapter/ParameterAdapter;->-get0(Lcom/dolby/dax/service/adapter/ParameterAdapter;)Lcom/dolby/dax/state/DsContext;

    move-result-object v1

    sget-object v2, Lcom/dolby/dax/model/Endpoint;->speaker:Lcom/dolby/dax/model/Endpoint;

    invoke-interface {v1, p1, v2}, Lcom/dolby/dax/state/DsContext;->getProfileEndpoint(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-static {v1}, Lcom/dolby/dax/service/adapter/ParameterAdapter;->-get0(Lcom/dolby/dax/service/adapter/ParameterAdapter;)Lcom/dolby/dax/state/DsContext;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolby/dax/model/ProfileEndpoint;->getEndpoint()Lcom/dolby/dax/model/Endpoint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;->getParameter()Lcom/dolby/dax/model/Parameter;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/dolby/dax/state/DsContext;->getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    return-object v1
.end method

.method public setParameter(Lcom/dolby/dax/model/ProfileType;[I)V
    .locals 6

    invoke-static {}, Lcom/dolby/dax/model/Endpoint;->values()[Lcom/dolby/dax/model/Endpoint;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-static {v4}, Lcom/dolby/dax/service/adapter/ParameterAdapter;->-get0(Lcom/dolby/dax/service/adapter/ParameterAdapter;)Lcom/dolby/dax/state/DsContext;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;->getParameter()Lcom/dolby/dax/model/Parameter;

    move-result-object v5

    invoke-interface {v4, p1, v0, v5, p2}, Lcom/dolby/dax/state/DsContext;->setProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;Lcom/dolby/dax/model/Parameter;[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

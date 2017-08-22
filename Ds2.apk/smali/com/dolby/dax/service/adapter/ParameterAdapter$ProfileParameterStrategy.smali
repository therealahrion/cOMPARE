.class Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;
.super Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;
.source "ParameterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/service/adapter/ParameterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileParameterStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;


# direct methods
.method public constructor <init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-direct {p0, p1, p2, p3}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    return-void
.end method


# virtual methods
.method public getParameter(Lcom/dolby/dax/model/ProfileType;)[I
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-static {v0}, Lcom/dolby/dax/service/adapter/ParameterAdapter;->-get0(Lcom/dolby/dax/service/adapter/ParameterAdapter;)Lcom/dolby/dax/state/DsContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;->getParameter()Lcom/dolby/dax/model/Parameter;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dolby/dax/state/DsContext;->getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    return-object v0
.end method

.method public setParameter(Lcom/dolby/dax/model/ProfileType;[I)V
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-static {v0}, Lcom/dolby/dax/service/adapter/ParameterAdapter;->-get0(Lcom/dolby/dax/service/adapter/ParameterAdapter;)Lcom/dolby/dax/state/DsContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;->getParameter()Lcom/dolby/dax/model/Parameter;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/dolby/dax/state/DsContext;->setProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;[I)V

    return-void
.end method

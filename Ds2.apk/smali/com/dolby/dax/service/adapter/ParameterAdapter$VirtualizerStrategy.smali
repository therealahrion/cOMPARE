.class Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;
.super Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;
.source "ParameterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/service/adapter/ParameterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualizerStrategy"
.end annotation


# instance fields
.field private final endpoint:Lcom/dolby/dax/model/Endpoint;

.field private final port:Lcom/dolby/dax/model/Port;

.field final synthetic this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;


# direct methods
.method constructor <init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Endpoint;)V
    .locals 2

    iput-object p1, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    sget-object v0, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    iput-object p2, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->endpoint:Lcom/dolby/dax/model/Endpoint;

    sget-object v0, Lcom/dolby/dax/model/Endpoint;->headphone:Lcom/dolby/dax/model/Endpoint;

    invoke-virtual {p2, v0}, Lcom/dolby/dax/model/Endpoint;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dolby/dax/model/Port;->headphone_port:Lcom/dolby/dax/model/Port;

    iput-object v0, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->port:Lcom/dolby/dax/model/Port;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/dolby/dax/model/Port;->internal_speaker:Lcom/dolby/dax/model/Port;

    iput-object v0, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->port:Lcom/dolby/dax/model/Port;

    goto :goto_0
.end method


# virtual methods
.method public getParameter(Lcom/dolby/dax/model/ProfileType;)[I
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-static {v2}, Lcom/dolby/dax/service/adapter/ParameterAdapter;->-get0(Lcom/dolby/dax/service/adapter/ParameterAdapter;)Lcom/dolby/dax/state/DsContext;

    move-result-object v2

    iget-object v3, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->endpoint:Lcom/dolby/dax/model/Endpoint;

    invoke-virtual {p0}, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->getParameter()Lcom/dolby/dax/model/Parameter;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lcom/dolby/dax/state/DsContext;->getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-static {v2}, Lcom/dolby/dax/service/adapter/ParameterAdapter;->-get0(Lcom/dolby/dax/service/adapter/ParameterAdapter;)Lcom/dolby/dax/state/DsContext;

    move-result-object v2

    iget-object v3, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->port:Lcom/dolby/dax/model/Port;

    invoke-virtual {p0}, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->getParameter()Lcom/dolby/dax/model/Parameter;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/dolby/dax/state/DsContext;->getSelectedTuningParameter(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aget v3, v0, v5

    aget v4, v1, v5

    and-int/2addr v3, v4

    aput v3, v2, v5

    return-object v2
.end method

.method public setParameter(Lcom/dolby/dax/model/ProfileType;[I)V
    .locals 3

    iget-object v0, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-static {v0}, Lcom/dolby/dax/service/adapter/ParameterAdapter;->-get0(Lcom/dolby/dax/service/adapter/ParameterAdapter;)Lcom/dolby/dax/state/DsContext;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->endpoint:Lcom/dolby/dax/model/Endpoint;

    invoke-virtual {p0}, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;->getParameter()Lcom/dolby/dax/model/Parameter;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/dolby/dax/state/DsContext;->setProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;Lcom/dolby/dax/model/Parameter;[I)V

    return-void
.end method

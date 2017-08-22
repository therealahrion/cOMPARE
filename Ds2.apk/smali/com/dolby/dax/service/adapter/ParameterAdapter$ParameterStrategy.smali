.class abstract Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;
.super Ljava/lang/Object;
.source "ParameterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/service/adapter/ParameterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ParameterStrategy"
.end annotation


# instance fields
.field private paramLength:I

.field private parameter:Lcom/dolby/dax/model/Parameter;

.field final synthetic this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;


# direct methods
.method constructor <init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;->this$0:Lcom/dolby/dax/service/adapter/ParameterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;->parameter:Lcom/dolby/dax/model/Parameter;

    iput p3, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;->paramLength:I

    return-void
.end method


# virtual methods
.method public getParamLength()I
    .locals 1

    iget v0, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;->paramLength:I

    return v0
.end method

.method public getParameter()Lcom/dolby/dax/model/Parameter;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;->parameter:Lcom/dolby/dax/model/Parameter;

    return-object v0
.end method

.method public abstract getParameter(Lcom/dolby/dax/model/ProfileType;)[I
.end method

.method public abstract setParameter(Lcom/dolby/dax/model/ProfileType;[I)V
.end method

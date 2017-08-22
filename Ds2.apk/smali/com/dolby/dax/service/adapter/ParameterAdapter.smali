.class public Lcom/dolby/dax/service/adapter/ParameterAdapter;
.super Ljava/lang/Object;
.source "ParameterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;,
        Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;,
        Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileGeqParameterStrategy;,
        Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;,
        Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;
    }
.end annotation


# instance fields
.field private final dsContext:Lcom/dolby/dax/state/DsContext;

.field final params:[Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;


# direct methods
.method static synthetic -get0(Lcom/dolby/dax/service/adapter/ParameterAdapter;)Lcom/dolby/dax/state/DsContext;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter;->dsContext:Lcom/dolby/dax/state/DsContext;

    return-object v0
.end method

.method public constructor <init>(Lcom/dolby/dax/state/DsContext;)V
    .locals 6

    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2b

    new-array v0, v0, [Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;

    sget-object v2, Lcom/dolby/dax/model/Endpoint;->headphone:Lcom/dolby/dax/model/Endpoint;

    invoke-direct {v1, p0, v2}, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Endpoint;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;

    sget-object v2, Lcom/dolby/dax/model/Endpoint;->speaker:Lcom/dolby/dax/model/Endpoint;

    invoke-direct {v1, p0, v2}, Lcom/dolby/dax/service/adapter/ParameterAdapter$VirtualizerStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Endpoint;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_leveler_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v1, p0, v2, v4}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_modeler_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v1, p0, v2, v4}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->surround_decoder_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v1, p0, v2, v4}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v1, p0, v2, v4}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->dialog_enhancer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v1, p0, v2, v4}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileEndpointParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->graphic_equalizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v1, p0, v2, v4}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    aput-object v3, v0, v1

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->virtualizer_headphone_reverb_gain:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v1, p0, v2, v4}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_amount:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v1, p0, v2, v4}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileGeqParameterStrategy;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->geq_gain:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v1, p0, v2, v5}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileGeqParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->audio_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v1, p0, v2, v4}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ProfileParameterStrategy;-><init>(Lcom/dolby/dax/service/adapter/ParameterAdapter;Lcom/dolby/dax/model/Parameter;I)V

    aput-object v1, v0, v5

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const/16 v1, 0x22

    aput-object v3, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter;->params:[Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;

    iput-object p1, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter;->dsContext:Lcom/dolby/dax/state/DsContext;

    return-void
.end method


# virtual methods
.method public getParameter(Lcom/dolby/dax/model/ProfileType;I)[I
    .locals 6

    const/4 v5, 0x0

    add-int/lit8 v0, p2, -0x64

    iget-object v2, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter;->params:[Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter;->params:[Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;

    aget-object v1, v2, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;->getParameter(Lcom/dolby/dax/model/ProfileType;)[I

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v2, "ParameterAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "param id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public getParameterLength(Lcom/dolby/api/DsParams;)I
    .locals 5

    invoke-virtual {p1}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v2

    add-int/lit8 v0, v2, -0x64

    iget-object v2, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter;->params:[Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter;->params:[Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;

    aget-object v1, v2, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;->getParamLength()I

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "ParameterAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "param id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method public setParameter(Lcom/dolby/dax/model/ProfileType;I[I)V
    .locals 5

    add-int/lit8 v0, p2, -0x64

    iget-object v2, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter;->params:[Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const-string/jumbo v2, "ParameterAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "param id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is greater than supported index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/dolby/dax/service/adapter/ParameterAdapter;->params:[Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;

    aget-object v1, v2, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p3}, Lcom/dolby/dax/service/adapter/ParameterAdapter$ParameterStrategy;->setParameter(Lcom/dolby/dax/model/ProfileType;[I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "ParameterAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "param id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

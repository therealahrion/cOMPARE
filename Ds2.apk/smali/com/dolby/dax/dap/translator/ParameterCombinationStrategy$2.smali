.class final enum Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$2;
.super Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;
.source "ParameterCombinationStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy;-><init>(Ljava/lang/String;ILcom/dolby/dax/dap/translator/ParameterCombinationStrategy;)V

    return-void
.end method


# virtual methods
.method protected getOtherValue(Lcom/dolby/dax/dap/DeviceParameters;Lcom/dolby/dax/model/Parameter;)[I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/dolby/dax/dap/DeviceParameters;->getTuning()Lcom/dolby/dax/model/Tuning;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/dolby/dax/dap/DeviceParameters;->getTuning()Lcom/dolby/dax/model/Tuning;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolby/dax/model/Tuning;->get(Lcom/dolby/dax/model/Parameter;)[I

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected needsCombining(Lcom/dolby/dax/model/Parameter;)Z
    .locals 1

    invoke-static {p1}, Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$2;->isIntermediateProfileParam(Lcom/dolby/dax/model/Parameter;)Z

    move-result v0

    return v0
.end method

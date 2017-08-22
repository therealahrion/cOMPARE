.class final enum Lcom/dolby/dax/dap/translator/ParameterCombinationStrategy$1;
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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected needsCombining(Lcom/dolby/dax/model/Parameter;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

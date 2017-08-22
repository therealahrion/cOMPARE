.class public Lcom/dolby/dax/service/adapter/ConvertEnum;
.super Ljava/lang/Object;
.source "ConvertEnum.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endpoint(Ljava/lang/String;)Lcom/dolby/dax/model/Endpoint;
    .locals 3

    invoke-static {p0}, Lcom/dolby/dax/model/Endpoint;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Endpoint;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "ConvertEnum"

    const-string/jumbo v2, "Unknown endpoint"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static parameter(Ljava/lang/String;)Lcom/dolby/dax/model/Parameter;
    .locals 3

    invoke-static {p0}, Lcom/dolby/dax/model/Parameter;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Parameter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "ConvertEnum"

    const-string/jumbo v2, "Unknown DAP parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static port(Ljava/lang/String;)Lcom/dolby/dax/model/Port;
    .locals 3

    invoke-static {p0}, Lcom/dolby/dax/model/Port;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Port;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "ConvertEnum"

    const-string/jumbo v2, "Unknown port"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static supportedProfile(Ljava/lang/String;)Lcom/dolby/dax/model/ProfileType;
    .locals 4

    sget-object v2, Lcom/dolby/dax/state/DsContext;->SupportedProfiles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v0}, Lcom/dolby/dax/model/ProfileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const-string/jumbo v2, "ConvertEnum"

    const-string/jumbo v3, "Unsupported profile type"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

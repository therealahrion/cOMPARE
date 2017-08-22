.class public Lcom/dolby/dax/dap/DapContext;
.super Ljava/lang/Object;
.source "DapContext.java"


# static fields
.field public static final kDapDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/dap/AndroidDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final kDeviceForPort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dolby/dax/model/Port;",
            "Lcom/dolby/dax/dap/AndroidDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contentParameters:Lcom/dolby/dax/dap/ContentParameters;

.field private final deviceParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dolby/dax/dap/AndroidDevice;",
            "Lcom/dolby/dax/dap/DeviceParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    sget-object v1, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_SPEAKER:Lcom/dolby/dax/dap/AndroidDevice;

    sget-object v2, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_WIRED_HEADPHONE:Lcom/dolby/dax/dap/AndroidDevice;

    sget-object v3, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_BLUETOOTH_A2DP:Lcom/dolby/dax/dap/AndroidDevice;

    sget-object v4, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_AUX_DIGITAL:Lcom/dolby/dax/dap/AndroidDevice;

    sget-object v5, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_USB_DEVICE:Lcom/dolby/dax/dap/AndroidDevice;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/dolby/dax/dap/AndroidDevice;

    sget-object v7, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_REMOTE_SUBMIX:Lcom/dolby/dax/dap/AndroidDevice;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/dap/DapContext;->kDapDevices:Ljava/util/Set;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolby/dax/model/Port;->internal_speaker:Lcom/dolby/dax/model/Port;

    sget-object v2, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_SPEAKER:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolby/dax/model/Port;->headphone_port:Lcom/dolby/dax/model/Port;

    sget-object v2, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_WIRED_HEADPHONE:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolby/dax/model/Port;->bluetooth:Lcom/dolby/dax/model/Port;

    sget-object v2, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_BLUETOOTH_A2DP:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolby/dax/model/Port;->hdmi:Lcom/dolby/dax/model/Port;

    sget-object v2, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_AUX_DIGITAL:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolby/dax/model/Port;->usb:Lcom/dolby/dax/model/Port;

    sget-object v2, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_USB_DEVICE:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolby/dax/model/Port;->miracast:Lcom/dolby/dax/model/Port;

    sget-object v2, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_REMOTE_SUBMIX:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/dap/DapContext;->kDeviceForPort:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/dolby/dax/dap/AndroidDevice;",
            "Lcom/dolby/dax/dap/translator/ParameterTranslator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/dap/translator/ParameterTranslator;

    new-instance v4, Lcom/dolby/dax/dap/ContentParameters;

    invoke-direct {v4, v3}, Lcom/dolby/dax/dap/ContentParameters;-><init>(Lcom/dolby/dax/dap/translator/ParamChangeObserver;)V

    iput-object v4, p0, Lcom/dolby/dax/dap/DapContext;->contentParameters:Lcom/dolby/dax/dap/ContentParameters;

    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/dolby/dax/dap/AndroidDevice;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/dolby/dax/dap/DapContext;->deviceParameters:Ljava/util/Map;

    sget-object v4, Lcom/dolby/dax/dap/DapContext;->kDeviceForPort:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolby/dax/dap/translator/ParameterTranslator;

    new-instance v0, Lcom/dolby/dax/dap/DeviceParameters;

    invoke-direct {v0, v3}, Lcom/dolby/dax/dap/DeviceParameters;-><init>(Lcom/dolby/dax/dap/translator/ParamChangeObserver;)V

    iget-object v5, p0, Lcom/dolby/dax/dap/DapContext;->deviceParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dolby/dax/dap/AndroidDevice;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getDeviceParameters(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/dap/DeviceParameters;
    .locals 2

    iget-object v0, p0, Lcom/dolby/dax/dap/DapContext;->deviceParameters:Ljava/util/Map;

    sget-object v1, Lcom/dolby/dax/dap/DapContext;->kDeviceForPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/dap/DeviceParameters;

    return-object v0
.end method

.method public setGeqPreset(Lcom/dolby/dax/model/GeqPreset;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/DapContext;->contentParameters:Lcom/dolby/dax/dap/ContentParameters;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/dap/ContentParameters;->setGeqPreset(Lcom/dolby/dax/model/GeqPreset;)V

    return-void
.end method

.method public setIeqPreset(Lcom/dolby/dax/model/IeqPreset;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/dap/DapContext;->contentParameters:Lcom/dolby/dax/dap/ContentParameters;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/dap/ContentParameters;->setIeqPreset(Lcom/dolby/dax/model/IeqPreset;)V

    return-void
.end method

.method public setProfile(Lcom/dolby/dax/model/Profile;)V
    .locals 3

    iget-object v2, p0, Lcom/dolby/dax/dap/DapContext;->contentParameters:Lcom/dolby/dax/dap/ContentParameters;

    invoke-virtual {v2, p1}, Lcom/dolby/dax/dap/ContentParameters;->setProfile(Lcom/dolby/dax/model/Profile;)V

    iget-object v2, p0, Lcom/dolby/dax/dap/DapContext;->deviceParameters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/dap/DeviceParameters;

    invoke-virtual {v0, p1}, Lcom/dolby/dax/dap/DeviceParameters;->setProfile(Lcom/dolby/dax/model/Profile;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProfileEndpoint(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/ProfileEndpoint;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/dap/DapContext;->getDeviceParameters(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/dap/DeviceParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/dolby/dax/dap/DeviceParameters;->setProfileEndpoint(Lcom/dolby/dax/model/ProfileEndpoint;)V

    :cond_0
    return-void
.end method

.method public setProfilePort(Lcom/dolby/dax/model/ProfilePort;)V
    .locals 2

    invoke-virtual {p1}, Lcom/dolby/dax/model/ProfilePort;->getPort()Lcom/dolby/dax/model/Port;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolby/dax/dap/DapContext;->getDeviceParameters(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/dap/DeviceParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/dolby/dax/dap/DeviceParameters;->setProfilePort(Lcom/dolby/dax/model/ProfilePort;)V

    :cond_0
    return-void
.end method

.method public setTuning(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Tuning;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/dax/dap/DapContext;->getDeviceParameters(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/dap/DeviceParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/dolby/dax/dap/DeviceParameters;->setTuning(Lcom/dolby/dax/model/Tuning;)V

    :cond_0
    return-void
.end method

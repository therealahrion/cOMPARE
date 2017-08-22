.class public interface abstract Lcom/dolby/dax/state/DsContext;
.super Ljava/lang/Object;
.source "DsContext.java"


# static fields
.field public static final SupportedPorts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/Port;",
            ">;"
        }
    .end annotation
.end field

.field public static final SupportedProfiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/ProfileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/dolby/dax/model/ProfileType;->movie:Lcom/dolby/dax/model/ProfileType;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/dolby/dax/model/ProfileType;

    sget-object v2, Lcom/dolby/dax/model/ProfileType;->music:Lcom/dolby/dax/model/ProfileType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/dolby/dax/model/ProfileType;->game:Lcom/dolby/dax/model/ProfileType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/dolby/dax/model/ProfileType;->voice:Lcom/dolby/dax/model/ProfileType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/dolby/dax/model/ProfileType;->user1:Lcom/dolby/dax/model/ProfileType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/dolby/dax/model/ProfileType;->user2:Lcom/dolby/dax/model/ProfileType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/dolby/dax/model/ProfileType;->off:Lcom/dolby/dax/model/ProfileType;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/state/DsContext;->SupportedProfiles:Ljava/util/Set;

    sget-object v0, Lcom/dolby/dax/model/Port;->internal_speaker:Lcom/dolby/dax/model/Port;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/dolby/dax/model/Port;

    sget-object v2, Lcom/dolby/dax/model/Port;->headphone_port:Lcom/dolby/dax/model/Port;

    aput-object v2, v1, v4

    sget-object v2, Lcom/dolby/dax/model/Port;->bluetooth:Lcom/dolby/dax/model/Port;

    aput-object v2, v1, v5

    sget-object v2, Lcom/dolby/dax/model/Port;->hdmi:Lcom/dolby/dax/model/Port;

    aput-object v2, v1, v6

    sget-object v2, Lcom/dolby/dax/model/Port;->miracast:Lcom/dolby/dax/model/Port;

    aput-object v2, v1, v7

    sget-object v2, Lcom/dolby/dax/model/Port;->usb:Lcom/dolby/dax/model/Port;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/state/DsContext;->SupportedPorts:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract getDapOn()Z
.end method

.method public abstract getDefaultProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;
.end method

.method public abstract getDefaultTuningDevice(Lcom/dolby/dax/model/Port;)Ljava/lang/String;
.end method

.method public abstract getProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;
.end method

.method public abstract getProfileEndpoint(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;)Lcom/dolby/dax/model/ProfileEndpoint;
.end method

.method public abstract getProfileGeqParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;)[I
.end method

.method public abstract getProfileIeq(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/IeqPreset;
.end method

.method public abstract getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;Lcom/dolby/dax/model/Parameter;)[I
.end method

.method public abstract getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;)[I
.end method

.method public abstract getProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Parameter;)[I
.end method

.method public abstract getProvider()Lcom/dolby/dax/db/Provider;
.end method

.method public abstract getSelectedProfile()Lcom/dolby/dax/model/Profile;
.end method

.method public abstract getSelectedProfileEndpoint(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfileEndpoint;
.end method

.method public abstract getSelectedProfileGeq()Lcom/dolby/dax/model/GeqPreset;
.end method

.method public abstract getSelectedProfileIeq()Lcom/dolby/dax/model/IeqPreset;
.end method

.method public abstract getSelectedProfilePort(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/ProfilePort;
.end method

.method public abstract getSelectedTuning(Lcom/dolby/dax/model/Port;)Lcom/dolby/dax/model/Tuning;
.end method

.method public abstract getSelectedTuningDevice(Lcom/dolby/dax/model/Port;)Ljava/lang/String;
.end method

.method public abstract getSelectedTuningParameter(Lcom/dolby/dax/model/Port;Lcom/dolby/dax/model/Parameter;)[I
.end method

.method public abstract isProfileModified(Lcom/dolby/dax/model/ProfileType;)Z
.end method

.method public abstract load()V
.end method

.method public abstract registerObserver(Lcom/dolby/dax/state/OnDsContextChange;)V
.end method

.method public abstract reloadAllProfile()V
.end method

.method public abstract resetProfile(Lcom/dolby/dax/model/ProfileType;)V
.end method

.method public abstract save()V
.end method

.method public abstract saveDsProfileSettings()V
.end method

.method public abstract saveDsState()V
.end method

.method public abstract selectDefaultTuning(Lcom/dolby/dax/model/Port;)V
.end method

.method public abstract setDapOn(Z)V
.end method

.method public abstract setProfileGeq(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/PresetType;)V
.end method

.method public abstract setProfileGeqParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;[I)V
.end method

.method public abstract setProfileIeq(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/PresetType;)V
.end method

.method public abstract setProfileName(Lcom/dolby/dax/model/ProfileType;Ljava/lang/String;)V
.end method

.method public abstract setProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Endpoint;Lcom/dolby/dax/model/Parameter;[I)V
.end method

.method public abstract setProfileParameter(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Parameter;[I)V
.end method

.method public abstract setSelectedProfile(Lcom/dolby/dax/model/ProfileType;)V
.end method

.method public abstract setSelectedTuning(Lcom/dolby/dax/model/Port;Ljava/lang/String;)Z
.end method

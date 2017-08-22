.class Lcom/dolby/dax/state/ProfileContext$Defaults;
.super Ljava/lang/Object;
.source "ProfileContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/state/ProfileContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Defaults"
.end annotation


# instance fields
.field endpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/ProfileEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field ports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/ProfilePort;",
            ">;"
        }
    .end annotation
.end field

.field presets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/GeqPreset;",
            ">;"
        }
    .end annotation
.end field

.field profile:Lcom/dolby/dax/model/Profile;


# direct methods
.method constructor <init>(Lcom/dolby/dax/db/Provider;Lcom/dolby/dax/model/ProfileType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Lcom/dolby/dax/db/Provider;->loadDefaultProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/dax/state/ProfileContext$Defaults;->profile:Lcom/dolby/dax/model/Profile;

    invoke-interface {p1, p2}, Lcom/dolby/dax/db/Provider;->loadDefaultProfileEndpoints(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/dax/state/ProfileContext$Defaults;->endpoints:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/dolby/dax/db/Provider;->loadDefaultProfilePorts(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/dax/state/ProfileContext$Defaults;->ports:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/dolby/dax/db/Provider;->loadDefaultGeqPresets(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/dax/state/ProfileContext$Defaults;->presets:Ljava/util/List;

    return-void
.end method

.class public final enum Lcom/dolby/dax/model/ProfileType;
.super Ljava/lang/Enum;
.source "ProfileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolby/dax/model/ProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dolby/dax/model/ProfileType;

.field public static final enum auto:Lcom/dolby/dax/model/ProfileType;

.field public static final enum game:Lcom/dolby/dax/model/ProfileType;

.field public static final enum movie:Lcom/dolby/dax/model/ProfileType;

.field public static final enum music:Lcom/dolby/dax/model/ProfileType;

.field public static final enum off:Lcom/dolby/dax/model/ProfileType;

.field public static final enum user1:Lcom/dolby/dax/model/ProfileType;

.field public static final enum user2:Lcom/dolby/dax/model/ProfileType;

.field public static final enum voice:Lcom/dolby/dax/model/ProfileType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/dolby/dax/model/ProfileType;

    const-string/jumbo v1, "movie"

    invoke-direct {v0, v1, v3}, Lcom/dolby/dax/model/ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/ProfileType;->movie:Lcom/dolby/dax/model/ProfileType;

    new-instance v0, Lcom/dolby/dax/model/ProfileType;

    const-string/jumbo v1, "music"

    invoke-direct {v0, v1, v4}, Lcom/dolby/dax/model/ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/ProfileType;->music:Lcom/dolby/dax/model/ProfileType;

    new-instance v0, Lcom/dolby/dax/model/ProfileType;

    const-string/jumbo v1, "game"

    invoke-direct {v0, v1, v5}, Lcom/dolby/dax/model/ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/ProfileType;->game:Lcom/dolby/dax/model/ProfileType;

    new-instance v0, Lcom/dolby/dax/model/ProfileType;

    const-string/jumbo v1, "voice"

    invoke-direct {v0, v1, v6}, Lcom/dolby/dax/model/ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/ProfileType;->voice:Lcom/dolby/dax/model/ProfileType;

    new-instance v0, Lcom/dolby/dax/model/ProfileType;

    const-string/jumbo v1, "user1"

    invoke-direct {v0, v1, v7}, Lcom/dolby/dax/model/ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/ProfileType;->user1:Lcom/dolby/dax/model/ProfileType;

    new-instance v0, Lcom/dolby/dax/model/ProfileType;

    const-string/jumbo v1, "user2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dolby/dax/model/ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/ProfileType;->user2:Lcom/dolby/dax/model/ProfileType;

    new-instance v0, Lcom/dolby/dax/model/ProfileType;

    const-string/jumbo v1, "off"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dolby/dax/model/ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/ProfileType;->off:Lcom/dolby/dax/model/ProfileType;

    new-instance v0, Lcom/dolby/dax/model/ProfileType;

    const-string/jumbo v1, "auto"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dolby/dax/model/ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/ProfileType;->auto:Lcom/dolby/dax/model/ProfileType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dolby/dax/model/ProfileType;

    sget-object v1, Lcom/dolby/dax/model/ProfileType;->movie:Lcom/dolby/dax/model/ProfileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolby/dax/model/ProfileType;->music:Lcom/dolby/dax/model/ProfileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolby/dax/model/ProfileType;->game:Lcom/dolby/dax/model/ProfileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolby/dax/model/ProfileType;->voice:Lcom/dolby/dax/model/ProfileType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dolby/dax/model/ProfileType;->user1:Lcom/dolby/dax/model/ProfileType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dolby/dax/model/ProfileType;->user2:Lcom/dolby/dax/model/ProfileType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/ProfileType;->off:Lcom/dolby/dax/model/ProfileType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/ProfileType;->auto:Lcom/dolby/dax/model/ProfileType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/dax/model/ProfileType;->$VALUES:[Lcom/dolby/dax/model/ProfileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/ProfileType;
    .locals 1

    const-class v0, Lcom/dolby/dax/model/ProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/ProfileType;

    return-object v0
.end method

.method public static values()[Lcom/dolby/dax/model/ProfileType;
    .locals 1

    sget-object v0, Lcom/dolby/dax/model/ProfileType;->$VALUES:[Lcom/dolby/dax/model/ProfileType;

    return-object v0
.end method

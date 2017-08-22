.class public final enum Lcom/dolby/dax/model/Endpoint;
.super Ljava/lang/Enum;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolby/dax/model/Endpoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dolby/dax/model/Endpoint;

.field public static final enum headphone:Lcom/dolby/dax/model/Endpoint;

.field public static final enum other:Lcom/dolby/dax/model/Endpoint;

.field public static final enum passthrough:Lcom/dolby/dax/model/Endpoint;

.field public static final enum speaker:Lcom/dolby/dax/model/Endpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/dolby/dax/model/Endpoint;

    const-string/jumbo v1, "speaker"

    invoke-direct {v0, v1, v2}, Lcom/dolby/dax/model/Endpoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/Endpoint;->speaker:Lcom/dolby/dax/model/Endpoint;

    new-instance v0, Lcom/dolby/dax/model/Endpoint;

    const-string/jumbo v1, "headphone"

    invoke-direct {v0, v1, v3}, Lcom/dolby/dax/model/Endpoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/Endpoint;->headphone:Lcom/dolby/dax/model/Endpoint;

    new-instance v0, Lcom/dolby/dax/model/Endpoint;

    const-string/jumbo v1, "passthrough"

    invoke-direct {v0, v1, v4}, Lcom/dolby/dax/model/Endpoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/Endpoint;->passthrough:Lcom/dolby/dax/model/Endpoint;

    new-instance v0, Lcom/dolby/dax/model/Endpoint;

    const-string/jumbo v1, "other"

    invoke-direct {v0, v1, v5}, Lcom/dolby/dax/model/Endpoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/Endpoint;->other:Lcom/dolby/dax/model/Endpoint;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dolby/dax/model/Endpoint;

    sget-object v1, Lcom/dolby/dax/model/Endpoint;->speaker:Lcom/dolby/dax/model/Endpoint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Endpoint;->headphone:Lcom/dolby/dax/model/Endpoint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolby/dax/model/Endpoint;->passthrough:Lcom/dolby/dax/model/Endpoint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolby/dax/model/Endpoint;->other:Lcom/dolby/dax/model/Endpoint;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolby/dax/model/Endpoint;->$VALUES:[Lcom/dolby/dax/model/Endpoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Endpoint;
    .locals 1

    const-class v0, Lcom/dolby/dax/model/Endpoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/Endpoint;

    return-object v0
.end method

.method public static values()[Lcom/dolby/dax/model/Endpoint;
    .locals 1

    sget-object v0, Lcom/dolby/dax/model/Endpoint;->$VALUES:[Lcom/dolby/dax/model/Endpoint;

    return-object v0
.end method

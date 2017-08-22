.class public final enum Lcom/dolby/dax/model/Port;
.super Ljava/lang/Enum;
.source "Port.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolby/dax/model/Port;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dolby/dax/model/Port;

.field public static final enum bluetooth:Lcom/dolby/dax/model/Port;

.field public static final enum hdmi:Lcom/dolby/dax/model/Port;

.field public static final enum headphone_port:Lcom/dolby/dax/model/Port;

.field public static final enum internal_speaker:Lcom/dolby/dax/model/Port;

.field public static final enum miracast:Lcom/dolby/dax/model/Port;

.field public static final enum other:Lcom/dolby/dax/model/Port;

.field public static final enum usb:Lcom/dolby/dax/model/Port;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/dolby/dax/model/Port;

    const-string/jumbo v1, "internal_speaker"

    invoke-direct {v0, v1, v3}, Lcom/dolby/dax/model/Port;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/Port;->internal_speaker:Lcom/dolby/dax/model/Port;

    new-instance v0, Lcom/dolby/dax/model/Port;

    const-string/jumbo v1, "hdmi"

    invoke-direct {v0, v1, v4}, Lcom/dolby/dax/model/Port;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/Port;->hdmi:Lcom/dolby/dax/model/Port;

    new-instance v0, Lcom/dolby/dax/model/Port;

    const-string/jumbo v1, "miracast"

    invoke-direct {v0, v1, v5}, Lcom/dolby/dax/model/Port;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/Port;->miracast:Lcom/dolby/dax/model/Port;

    new-instance v0, Lcom/dolby/dax/model/Port;

    const-string/jumbo v1, "headphone_port"

    invoke-direct {v0, v1, v6}, Lcom/dolby/dax/model/Port;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/Port;->headphone_port:Lcom/dolby/dax/model/Port;

    new-instance v0, Lcom/dolby/dax/model/Port;

    const-string/jumbo v1, "bluetooth"

    invoke-direct {v0, v1, v7}, Lcom/dolby/dax/model/Port;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/Port;->bluetooth:Lcom/dolby/dax/model/Port;

    new-instance v0, Lcom/dolby/dax/model/Port;

    const-string/jumbo v1, "usb"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dolby/dax/model/Port;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/Port;->usb:Lcom/dolby/dax/model/Port;

    new-instance v0, Lcom/dolby/dax/model/Port;

    const-string/jumbo v1, "other"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dolby/dax/model/Port;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/Port;->other:Lcom/dolby/dax/model/Port;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dolby/dax/model/Port;

    sget-object v1, Lcom/dolby/dax/model/Port;->internal_speaker:Lcom/dolby/dax/model/Port;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolby/dax/model/Port;->hdmi:Lcom/dolby/dax/model/Port;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolby/dax/model/Port;->miracast:Lcom/dolby/dax/model/Port;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolby/dax/model/Port;->headphone_port:Lcom/dolby/dax/model/Port;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dolby/dax/model/Port;->bluetooth:Lcom/dolby/dax/model/Port;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dolby/dax/model/Port;->usb:Lcom/dolby/dax/model/Port;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/Port;->other:Lcom/dolby/dax/model/Port;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/dax/model/Port;->$VALUES:[Lcom/dolby/dax/model/Port;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Port;
    .locals 1

    const-class v0, Lcom/dolby/dax/model/Port;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/Port;

    return-object v0
.end method

.method public static values()[Lcom/dolby/dax/model/Port;
    .locals 1

    sget-object v0, Lcom/dolby/dax/model/Port;->$VALUES:[Lcom/dolby/dax/model/Port;

    return-object v0
.end method

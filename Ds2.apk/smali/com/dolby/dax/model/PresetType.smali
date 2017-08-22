.class public final enum Lcom/dolby/dax/model/PresetType;
.super Ljava/lang/Enum;
.source "PresetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolby/dax/model/PresetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dolby/dax/model/PresetType;

.field public static final enum focused:Lcom/dolby/dax/model/PresetType;

.field public static final enum off:Lcom/dolby/dax/model/PresetType;

.field public static final enum open:Lcom/dolby/dax/model/PresetType;

.field public static final enum rich:Lcom/dolby/dax/model/PresetType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/dolby/dax/model/PresetType;

    const-string/jumbo v1, "off"

    invoke-direct {v0, v1, v2}, Lcom/dolby/dax/model/PresetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/PresetType;->off:Lcom/dolby/dax/model/PresetType;

    new-instance v0, Lcom/dolby/dax/model/PresetType;

    const-string/jumbo v1, "open"

    invoke-direct {v0, v1, v3}, Lcom/dolby/dax/model/PresetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/PresetType;->open:Lcom/dolby/dax/model/PresetType;

    new-instance v0, Lcom/dolby/dax/model/PresetType;

    const-string/jumbo v1, "rich"

    invoke-direct {v0, v1, v4}, Lcom/dolby/dax/model/PresetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/PresetType;->rich:Lcom/dolby/dax/model/PresetType;

    new-instance v0, Lcom/dolby/dax/model/PresetType;

    const-string/jumbo v1, "focused"

    invoke-direct {v0, v1, v5}, Lcom/dolby/dax/model/PresetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/dax/model/PresetType;->focused:Lcom/dolby/dax/model/PresetType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dolby/dax/model/PresetType;

    sget-object v1, Lcom/dolby/dax/model/PresetType;->off:Lcom/dolby/dax/model/PresetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/model/PresetType;->open:Lcom/dolby/dax/model/PresetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolby/dax/model/PresetType;->rich:Lcom/dolby/dax/model/PresetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolby/dax/model/PresetType;->focused:Lcom/dolby/dax/model/PresetType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolby/dax/model/PresetType;->$VALUES:[Lcom/dolby/dax/model/PresetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/PresetType;
    .locals 1

    const-class v0, Lcom/dolby/dax/model/PresetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/PresetType;

    return-object v0
.end method

.method public static values()[Lcom/dolby/dax/model/PresetType;
    .locals 1

    sget-object v0, Lcom/dolby/dax/model/PresetType;->$VALUES:[Lcom/dolby/dax/model/PresetType;

    return-object v0
.end method

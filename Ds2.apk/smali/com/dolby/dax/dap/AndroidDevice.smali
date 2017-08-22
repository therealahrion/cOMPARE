.class public final enum Lcom/dolby/dax/dap/AndroidDevice;
.super Ljava/lang/Enum;
.source "AndroidDevice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolby/dax/dap/AndroidDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dolby/dax/dap/AndroidDevice;

.field public static final enum DEVICE_OUT_AUX_DIGITAL:Lcom/dolby/dax/dap/AndroidDevice;

.field public static final enum DEVICE_OUT_BLUETOOTH_A2DP:Lcom/dolby/dax/dap/AndroidDevice;

.field public static final enum DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

.field public static final enum DEVICE_OUT_NONE:Lcom/dolby/dax/dap/AndroidDevice;

.field public static final enum DEVICE_OUT_REMOTE_SUBMIX:Lcom/dolby/dax/dap/AndroidDevice;

.field public static final enum DEVICE_OUT_SPEAKER:Lcom/dolby/dax/dap/AndroidDevice;

.field public static final enum DEVICE_OUT_USB_DEVICE:Lcom/dolby/dax/dap/AndroidDevice;

.field public static final enum DEVICE_OUT_WIRED_HEADPHONE:Lcom/dolby/dax/dap/AndroidDevice;

.field public static final enum DEVICE_OUT_WIRED_HEADSET:Lcom/dolby/dax/dap/AndroidDevice;


# instance fields
.field protected final nativeid:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v0, Lcom/dolby/dax/dap/AndroidDevice;

    const-string/jumbo v1, "DEVICE_OUT_NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/dolby/dax/dap/AndroidDevice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_NONE:Lcom/dolby/dax/dap/AndroidDevice;

    new-instance v0, Lcom/dolby/dax/dap/AndroidDevice;

    const-string/jumbo v1, "DEVICE_OUT_DEFAULT"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v8, v2}, Lcom/dolby/dax/dap/AndroidDevice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    new-instance v0, Lcom/dolby/dax/dap/AndroidDevice;

    const-string/jumbo v1, "DEVICE_OUT_SPEAKER"

    invoke-direct {v0, v1, v5, v5}, Lcom/dolby/dax/dap/AndroidDevice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_SPEAKER:Lcom/dolby/dax/dap/AndroidDevice;

    new-instance v0, Lcom/dolby/dax/dap/AndroidDevice;

    const-string/jumbo v1, "DEVICE_OUT_WIRED_HEADSET"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v6}, Lcom/dolby/dax/dap/AndroidDevice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_WIRED_HEADSET:Lcom/dolby/dax/dap/AndroidDevice;

    new-instance v0, Lcom/dolby/dax/dap/AndroidDevice;

    const-string/jumbo v1, "DEVICE_OUT_WIRED_HEADPHONE"

    invoke-direct {v0, v1, v6, v7}, Lcom/dolby/dax/dap/AndroidDevice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_WIRED_HEADPHONE:Lcom/dolby/dax/dap/AndroidDevice;

    new-instance v0, Lcom/dolby/dax/dap/AndroidDevice;

    const-string/jumbo v1, "DEVICE_OUT_BLUETOOTH_A2DP"

    const/4 v2, 0x5

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/dax/dap/AndroidDevice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_BLUETOOTH_A2DP:Lcom/dolby/dax/dap/AndroidDevice;

    new-instance v0, Lcom/dolby/dax/dap/AndroidDevice;

    const-string/jumbo v1, "DEVICE_OUT_AUX_DIGITAL"

    const/4 v2, 0x6

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/dax/dap/AndroidDevice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_AUX_DIGITAL:Lcom/dolby/dax/dap/AndroidDevice;

    new-instance v0, Lcom/dolby/dax/dap/AndroidDevice;

    const-string/jumbo v1, "DEVICE_OUT_USB_DEVICE"

    const/4 v2, 0x7

    const/16 v3, 0x4000

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/dax/dap/AndroidDevice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_USB_DEVICE:Lcom/dolby/dax/dap/AndroidDevice;

    new-instance v0, Lcom/dolby/dax/dap/AndroidDevice;

    const-string/jumbo v1, "DEVICE_OUT_REMOTE_SUBMIX"

    const v2, 0x8000

    invoke-direct {v0, v1, v7, v2}, Lcom/dolby/dax/dap/AndroidDevice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_REMOTE_SUBMIX:Lcom/dolby/dax/dap/AndroidDevice;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/dolby/dax/dap/AndroidDevice;

    sget-object v1, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_NONE:Lcom/dolby/dax/dap/AndroidDevice;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_DEFAULT:Lcom/dolby/dax/dap/AndroidDevice;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_SPEAKER:Lcom/dolby/dax/dap/AndroidDevice;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_WIRED_HEADSET:Lcom/dolby/dax/dap/AndroidDevice;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_WIRED_HEADPHONE:Lcom/dolby/dax/dap/AndroidDevice;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_BLUETOOTH_A2DP:Lcom/dolby/dax/dap/AndroidDevice;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_AUX_DIGITAL:Lcom/dolby/dax/dap/AndroidDevice;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_USB_DEVICE:Lcom/dolby/dax/dap/AndroidDevice;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/dax/dap/AndroidDevice;->DEVICE_OUT_REMOTE_SUBMIX:Lcom/dolby/dax/dap/AndroidDevice;

    aput-object v1, v0, v7

    sput-object v0, Lcom/dolby/dax/dap/AndroidDevice;->$VALUES:[Lcom/dolby/dax/dap/AndroidDevice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/dolby/dax/dap/AndroidDevice;->nativeid:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolby/dax/dap/AndroidDevice;
    .locals 1

    const-class v0, Lcom/dolby/dax/dap/AndroidDevice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/dap/AndroidDevice;

    return-object v0
.end method

.method public static values()[Lcom/dolby/dax/dap/AndroidDevice;
    .locals 1

    sget-object v0, Lcom/dolby/dax/dap/AndroidDevice;->$VALUES:[Lcom/dolby/dax/dap/AndroidDevice;

    return-object v0
.end method


# virtual methods
.method getNativeDeviceId()I
    .locals 1

    iget v0, p0, Lcom/dolby/dax/dap/AndroidDevice;->nativeid:I

    return v0
.end method

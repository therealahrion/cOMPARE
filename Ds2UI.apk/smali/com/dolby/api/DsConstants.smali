.class public Lcom/dolby/api/DsConstants;
.super Ljava/lang/Object;
.source "DsConstants.java"


# static fields
.field public static final DSSERVICE_START_ACTION:Ljava/lang/String; = "DSSERVICE_START_ACTION"

.field public static final DS_NO_ERROR:I = 0x0

.field public static final DS_OFF_BYPASSED_TYPE:I = 0x0

.field public static final DS_OFF_PARAMETERIZED_TYPE:I = 0x1

.field public static final DS_REQUEST_FAILED_EFFECT_SUSPENDED:I = 0x1

.field public static final DS_STATE_OFF:I = 0x0

.field public static final DS_STATE_ON:I = 0x1

.field public static final DS_STATE_SUSPENDED:I = 0x2

.field public static final GEQ_BAND_GAIN_RANGE:[F

.field public static final IEQ_PRESETS_NUMBER:I = 0x4

.field public static final IEQ_PRESET_FOCUSED:I = 0x3

.field public static final IEQ_PRESET_INDEX_MAX:I = 0x3

.field public static final IEQ_PRESET_INDEX_MIN:I = 0x0

.field public static final IEQ_PRESET_OFF:I = 0x0

.field public static final IEQ_PRESET_OPEN:I = 0x1

.field public static final IEQ_PRESET_RICH:I = 0x2

.field public static final PROFILES_NUMBER:I = 0x6

.field public static final PROFILE_GAME:I = 0x2

.field public static final PROFILE_INDEX_FIRST_CUSTOM:I = 0x4

.field public static final PROFILE_INDEX_MAX:I = 0x5

.field public static final PROFILE_INDEX_MIN:I = 0x0

.field public static final PROFILE_MOVIE:I = 0x0

.field public static final PROFILE_MUSIC:I = 0x1

.field public static final PROFILE_VOICE:I = 0x3

.field public static final PROFLIE_CUSTOM_1:I = 0x4

.field public static final PROFLIE_CUSTOM_2:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/dolby/api/DsConstants;->GEQ_BAND_GAIN_RANGE:[F

    .line 29
    return-void

    .line 112
    nop

    :array_a
    .array-data 4
        -0x3df00000    # -36.0f
        0x42100000    # 36.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

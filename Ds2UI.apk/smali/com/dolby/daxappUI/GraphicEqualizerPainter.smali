.class public Lcom/dolby/daxappUI/GraphicEqualizerPainter;
.super Ljava/lang/Object;
.source "GraphicEqualizerPainter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/daxappUI/GraphicEqualizerPainter$1;,
        Lcom/dolby/daxappUI/GraphicEqualizerPainter$2;,
        Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;
    }
.end annotation


# static fields
.field private static GAIN_SMOOTHER:[F

.field private static GAIN_SMOOTHER_INV:[[F

.field private static final GAIN_SMOOTHER_INV_MOBILE:[[F

.field private static final GAIN_SMOOTHER_INV_TABLET:[[F

.field private static final GAIN_SMOOTHER_MOBILE:[F

.field private static final GAIN_SMOOTHER_TABLET:[F

.field private static GAIN_SMOOTH_LENGTH:I


# instance fields
.field private mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

.field private mBlur:Landroid/graphics/MaskFilter;

.field private final mContext:Landroid/content/Context;

.field private mDefaultProfileNames:[Ljava/lang/String;

.field private final mDrawFpsCounter:Lcom/dolby/daxappUI/FPSCounter;

.field private mDsClient:Lcom/dolby/api/DsGlobalEx;

.field private mEditBand:I

.field private mEditGain:F

.field private mEffect1:Landroid/graphics/PathEffect;

.field private mEnabled:Z

.field private mEqPreset:I

.field private final mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

.field private mForceSmoothenCurve:Z

.field private mGainsSmooth:[F

.field private final mGainsSmoothOld:[F

.field private final mGainsUi:[F

.field private mHeight:I

.field private final mHideAction:Ljava/lang/Runnable;

.field private mHideAnimEndTimestamp:J

.field private mListener:Lcom/dolby/daxappUI/IEqualizerChangeListener;

.field private mMobileLayout:Z

.field private mNotifyListener:Z

.field private mPaintCurve1:Landroid/graphics/Paint;

.field private mPaintCurve2:Landroid/graphics/Paint;

.field private final mPaintGreen:Landroid/graphics/Paint;

.field private final mPaintRed:Landroid/graphics/Paint;

.field private mPrevEditBand:I

.field private mPrevEditGain:F

.field private mProfile:I

.field private final mRecalcPositions:Ljava/lang/Runnable;

.field private mShowAnimEndTimestamp:J

.field private mSliderBg:Landroid/graphics/drawable/Drawable;

.field private mSliderThumb:Landroid/graphics/drawable/Drawable;

.field private mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

.field private mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

.field private mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

.field private final mSmoothFpsCounter:Lcom/dolby/daxappUI/FPSCounter;

.field private mSmoothenTimestamp:J

.field private mUserBandsUpdated:I

.field private final mUserGainsTemp:[F

.field private mViewHeight:I

.field private mVisible:Z

.field private final mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

.field private mWidth:I

.field private recalcPosTimestamp:J

.field private final tmp_userGain_1:[I

.field private final tmp_userGain_2:[I


# direct methods
.method static synthetic -get0(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPrevEditBand:I

    return v0
.end method

.method static synthetic -get1(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)F
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPrevEditGain:F

    return v0
.end method

.method static synthetic -get2(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)Lcom/dolby/daxappUI/GraphicVisualiser;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/dolby/daxappUI/GraphicEqualizerPainter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->animateVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)V
    .locals 0

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->doRecalcPositions()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x14

    sput v4, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    new-array v0, v5, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_TABLET:[F

    new-array v0, v6, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_MOBILE:[F

    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_8

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_9

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_a

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_b

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_c

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_d

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_e

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_f

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_10

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_11

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_12

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_13

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_14

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_15

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_TABLET:[[F

    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_16

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_17

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_18

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_19

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_1a

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1b

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_1c

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1d

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1e

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1f

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_20

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_21

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_22

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_23

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_24

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_25

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_26

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_27

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_28

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_29

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_MOBILE:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3e99999a    # 0.3f
        0x3e800000    # 0.25f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_2
    .array-data 4
        0x3ff9999a    # 1.95f
        -0x40133333    # -1.85f
        0x3fe00000    # 1.75f
        -0x402ccccd    # -1.65f
        0x3fc66666    # 1.55f
        -0x40466666    # -1.45f
        0x3faccccd    # 1.35f
        -0x40600000    # -1.25f
        0x3f933333    # 1.15f
        -0x4079999a    # -1.05f
        0x3f733333    # 0.95f
        -0x40a66666    # -0.85f
        0x3f400000    # 0.75f
        -0x40d9999a    # -0.65f
        0x3f0ccccd    # 0.55f
        -0x4119999a    # -0.45f
        0x3eb33333    # 0.35f
        -0x41800000    # -0.25f
        0x3e19999a    # 0.15f
        -0x42b33333    # -0.05f
    .end array-data

    :array_3
    .array-data 4
        -0x40133333    # -1.85f
        0x40b1999a    # 5.55f
        -0x3f580000    # -5.25f
        0x409e6666    # 4.95f
        -0x3f6b3333    # -4.65f
        0x408b3333    # 4.35f
        -0x3f7e6666    # -4.05f
        0x40700000    # 3.75f
        -0x3fa33333    # -3.45f
        0x4049999a    # 3.15f
        -0x3fc9999a    # -2.85f
        0x40233333    # 2.55f
        -0x3ff00000    # -2.25f
        0x3ff9999a    # 1.95f
        -0x402ccccd    # -1.65f
        0x3faccccd    # 1.35f
        -0x4079999a    # -1.05f
        0x3f400000    # 0.75f
        -0x4119999a    # -0.45f
        0x3e19999a    # 0.15f
    .end array-data

    :array_4
    .array-data 4
        0x3fe00000    # 1.75f
        -0x3f580000    # -5.25f
        0x410c0000    # 8.75f
        -0x3efc0000    # -8.25f
        0x40f80000    # 7.75f
        -0x3f180000    # -7.25f
        0x40d80000    # 6.75f
        -0x3f380000    # -6.25f
        0x40b80000    # 5.75f
        -0x3f580000    # -5.25f
        0x40980000    # 4.75f
        -0x3f780000    # -4.25f
        0x40700000    # 3.75f
        -0x3fb00000    # -3.25f
        0x40300000    # 2.75f
        -0x3ff00000    # -2.25f
        0x3fe00000    # 1.75f
        -0x40600000    # -1.25f
        0x3f400000    # 0.75f
        -0x41800000    # -0.25f
    .end array-data

    :array_5
    .array-data 4
        -0x402ccccd    # -1.65f
        0x409e6666    # 4.95f
        -0x3efc0000    # -8.25f
        0x4138cccd    # 11.55f
        -0x3ed26666    # -10.85f
        0x41226666    # 10.15f
        -0x3ee8cccd    # -9.45f
        0x410c0000    # 8.75f
        -0x3eff3333    # -8.05f
        0x40eb3333    # 7.35f
        -0x3f2b3333    # -6.65f
        0x40be6666    # 5.95f
        -0x3f580000    # -5.25f
        0x4091999a    # 4.55f
        -0x3f89999a    # -3.85f
        0x4049999a    # 3.15f
        -0x3fe33333    # -2.45f
        0x3fe00000    # 1.75f
        -0x4079999a    # -1.05f
        0x3eb33333    # 0.35f
    .end array-data

    :array_6
    .array-data 4
        0x3fc66666    # 1.55f
        -0x3f6b3333    # -4.65f
        0x40f80000    # 7.75f
        -0x3ed26666    # -10.85f
        0x415f3333    # 13.95f
        -0x3eaf3333    # -13.05f
        0x41426666    # 12.15f
        -0x3ecc0000    # -11.25f
        0x4125999a    # 10.35f
        -0x3ee8cccd    # -9.45f
        0x4108cccd    # 8.55f
        -0x3f0b3333    # -7.65f
        0x40d80000    # 6.75f
        -0x3f44cccd    # -5.85f
        0x409e6666    # 4.95f
        -0x3f7e6666    # -4.05f
        0x4049999a    # 3.15f
        -0x3ff00000    # -2.25f
        0x3faccccd    # 1.35f
        -0x4119999a    # -0.45f
    .end array-data

    :array_7
    .array-data 4
        -0x40466666    # -1.45f
        0x408b3333    # 4.35f
        -0x3f180000    # -7.25f
        0x41226666    # 10.15f
        -0x3eaf3333    # -13.05f
        0x417f3333    # 15.95f
        -0x3e926666    # -14.85f
        0x415c0000    # 13.75f
        -0x3eb5999a    # -12.65f
        0x4138cccd    # 11.55f
        -0x3ed8cccd    # -10.45f
        0x4115999a    # 9.35f
        -0x3efc0000    # -8.25f
        0x40e4cccd    # 7.15f
        -0x3f3e6666    # -6.05f
        0x409e6666    # 4.95f
        -0x3f89999a    # -3.85f
        0x40300000    # 2.75f
        -0x402ccccd    # -1.65f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_8
    .array-data 4
        0x3faccccd    # 1.35f
        -0x3f7e6666    # -4.05f
        0x40d80000    # 6.75f
        -0x3ee8cccd    # -9.45f
        0x41426666    # 12.15f
        -0x3e926666    # -14.85f
        0x418c6666    # 17.55f
        -0x3e7e0000    # -16.25f
        0x416f3333    # 14.95f
        -0x3ea5999a    # -13.65f
        0x4145999a    # 12.35f
        -0x3ecf3333    # -11.05f
        0x411c0000    # 9.75f
        -0x3ef8cccd    # -8.45f
        0x40e4cccd    # 7.15f
        -0x3f44cccd    # -5.85f
        0x4091999a    # 4.55f
        -0x3fb00000    # -3.25f
        0x3ff9999a    # 1.95f
        -0x40d9999a    # -0.65f
    .end array-data

    :array_9
    .array-data 4
        -0x40600000    # -1.25f
        0x40700000    # 3.75f
        -0x3f380000    # -6.25f
        0x410c0000    # 8.75f
        -0x3ecc0000    # -11.25f
        0x415c0000    # 13.75f
        -0x3e7e0000    # -16.25f
        0x41960000    # 18.75f
        -0x3e760000    # -17.25f
        0x417c0000    # 15.75f
        -0x3e9c0000    # -14.25f
        0x414c0000    # 12.75f
        -0x3ecc0000    # -11.25f
        0x411c0000    # 9.75f
        -0x3efc0000    # -8.25f
        0x40d80000    # 6.75f
        -0x3f580000    # -5.25f
        0x40700000    # 3.75f
        -0x3ff00000    # -2.25f
        0x3f400000    # 0.75f
    .end array-data

    :array_a
    .array-data 4
        0x3f933333    # 1.15f
        -0x3fa33333    # -3.45f
        0x40b80000    # 5.75f
        -0x3eff3333    # -8.05f
        0x4125999a    # 10.35f
        -0x3eb5999a    # -12.65f
        0x416f3333    # 14.95f
        -0x3e760000    # -17.25f
        0x419c6666    # 19.55f
        -0x3e713333    # -17.85f
        0x41813333    # 16.15f
        -0x3e98cccd    # -14.45f
        0x414c0000    # 12.75f
        -0x3ecf3333    # -11.05f
        0x4115999a    # 9.35f
        -0x3f0b3333    # -7.65f
        0x40be6666    # 5.95f
        -0x3f780000    # -4.25f
        0x40233333    # 2.55f
        -0x40a66666    # -0.85f
    .end array-data

    :array_b
    .array-data 4
        -0x4079999a    # -1.05f
        0x4049999a    # 3.15f
        -0x3f580000    # -5.25f
        0x40eb3333    # 7.35f
        -0x3ee8cccd    # -9.45f
        0x4138cccd    # 11.55f
        -0x3ea5999a    # -13.65f
        0x417c0000    # 15.75f
        -0x3e713333    # -17.85f
        0x419f999a    # 19.95f
        -0x3e6f999a    # -18.05f
        0x41813333    # 16.15f
        -0x3e9c0000    # -14.25f
        0x4145999a    # 12.35f
        -0x3ed8cccd    # -10.45f
        0x4108cccd    # 8.55f
        -0x3f2b3333    # -6.65f
        0x40980000    # 4.75f
        -0x3fc9999a    # -2.85f
        0x3f733333    # 0.95f
    .end array-data

    :array_c
    .array-data 4
        0x3f733333    # 0.95f
        -0x3fc9999a    # -2.85f
        0x40980000    # 4.75f
        -0x3f2b3333    # -6.65f
        0x4108cccd    # 8.55f
        -0x3ed8cccd    # -10.45f
        0x4145999a    # 12.35f
        -0x3e9c0000    # -14.25f
        0x41813333    # 16.15f
        -0x3e6f999a    # -18.05f
        0x419f999a    # 19.95f
        -0x3e713333    # -17.85f
        0x417c0000    # 15.75f
        -0x3ea5999a    # -13.65f
        0x4138cccd    # 11.55f
        -0x3ee8cccd    # -9.45f
        0x40eb3333    # 7.35f
        -0x3f580000    # -5.25f
        0x4049999a    # 3.15f
        -0x4079999a    # -1.05f
    .end array-data

    :array_d
    .array-data 4
        -0x40a66666    # -0.85f
        0x40233333    # 2.55f
        -0x3f780000    # -4.25f
        0x40be6666    # 5.95f
        -0x3f0b3333    # -7.65f
        0x4115999a    # 9.35f
        -0x3ecf3333    # -11.05f
        0x414c0000    # 12.75f
        -0x3e98cccd    # -14.45f
        0x41813333    # 16.15f
        -0x3e713333    # -17.85f
        0x419c6666    # 19.55f
        -0x3e760000    # -17.25f
        0x416f3333    # 14.95f
        -0x3eb5999a    # -12.65f
        0x4125999a    # 10.35f
        -0x3eff3333    # -8.05f
        0x40b80000    # 5.75f
        -0x3fa33333    # -3.45f
        0x3f933333    # 1.15f
    .end array-data

    :array_e
    .array-data 4
        0x3f400000    # 0.75f
        -0x3ff00000    # -2.25f
        0x40700000    # 3.75f
        -0x3f580000    # -5.25f
        0x40d80000    # 6.75f
        -0x3efc0000    # -8.25f
        0x411c0000    # 9.75f
        -0x3ecc0000    # -11.25f
        0x414c0000    # 12.75f
        -0x3e9c0000    # -14.25f
        0x417c0000    # 15.75f
        -0x3e760000    # -17.25f
        0x41960000    # 18.75f
        -0x3e7e0000    # -16.25f
        0x415c0000    # 13.75f
        -0x3ecc0000    # -11.25f
        0x410c0000    # 8.75f
        -0x3f380000    # -6.25f
        0x40700000    # 3.75f
        -0x40600000    # -1.25f
    .end array-data

    :array_f
    .array-data 4
        -0x40d9999a    # -0.65f
        0x3ff9999a    # 1.95f
        -0x3fb00000    # -3.25f
        0x4091999a    # 4.55f
        -0x3f44cccd    # -5.85f
        0x40e4cccd    # 7.15f
        -0x3ef8cccd    # -8.45f
        0x411c0000    # 9.75f
        -0x3ecf3333    # -11.05f
        0x4145999a    # 12.35f
        -0x3ea5999a    # -13.65f
        0x416f3333    # 14.95f
        -0x3e7e0000    # -16.25f
        0x418c6666    # 17.55f
        -0x3e926666    # -14.85f
        0x41426666    # 12.15f
        -0x3ee8cccd    # -9.45f
        0x40d80000    # 6.75f
        -0x3f7e6666    # -4.05f
        0x3faccccd    # 1.35f
    .end array-data

    :array_10
    .array-data 4
        0x3f0ccccd    # 0.55f
        -0x402ccccd    # -1.65f
        0x40300000    # 2.75f
        -0x3f89999a    # -3.85f
        0x409e6666    # 4.95f
        -0x3f3e6666    # -6.05f
        0x40e4cccd    # 7.15f
        -0x3efc0000    # -8.25f
        0x4115999a    # 9.35f
        -0x3ed8cccd    # -10.45f
        0x4138cccd    # 11.55f
        -0x3eb5999a    # -12.65f
        0x415c0000    # 13.75f
        -0x3e926666    # -14.85f
        0x417f3333    # 15.95f
        -0x3eaf3333    # -13.05f
        0x41226666    # 10.15f
        -0x3f180000    # -7.25f
        0x408b3333    # 4.35f
        -0x40466666    # -1.45f
    .end array-data

    :array_11
    .array-data 4
        -0x4119999a    # -0.45f
        0x3faccccd    # 1.35f
        -0x3ff00000    # -2.25f
        0x4049999a    # 3.15f
        -0x3f7e6666    # -4.05f
        0x409e6666    # 4.95f
        -0x3f44cccd    # -5.85f
        0x40d80000    # 6.75f
        -0x3f0b3333    # -7.65f
        0x4108cccd    # 8.55f
        -0x3ee8cccd    # -9.45f
        0x4125999a    # 10.35f
        -0x3ecc0000    # -11.25f
        0x41426666    # 12.15f
        -0x3eaf3333    # -13.05f
        0x415f3333    # 13.95f
        -0x3ed26666    # -10.85f
        0x40f80000    # 7.75f
        -0x3f6b3333    # -4.65f
        0x3fc66666    # 1.55f
    .end array-data

    :array_12
    .array-data 4
        0x3eb33333    # 0.35f
        -0x4079999a    # -1.05f
        0x3fe00000    # 1.75f
        -0x3fe33333    # -2.45f
        0x4049999a    # 3.15f
        -0x3f89999a    # -3.85f
        0x4091999a    # 4.55f
        -0x3f580000    # -5.25f
        0x40be6666    # 5.95f
        -0x3f2b3333    # -6.65f
        0x40eb3333    # 7.35f
        -0x3eff3333    # -8.05f
        0x410c0000    # 8.75f
        -0x3ee8cccd    # -9.45f
        0x41226666    # 10.15f
        -0x3ed26666    # -10.85f
        0x4138cccd    # 11.55f
        -0x3efc0000    # -8.25f
        0x409e6666    # 4.95f
        -0x402ccccd    # -1.65f
    .end array-data

    :array_13
    .array-data 4
        -0x41800000    # -0.25f
        0x3f400000    # 0.75f
        -0x40600000    # -1.25f
        0x3fe00000    # 1.75f
        -0x3ff00000    # -2.25f
        0x40300000    # 2.75f
        -0x3fb00000    # -3.25f
        0x40700000    # 3.75f
        -0x3f780000    # -4.25f
        0x40980000    # 4.75f
        -0x3f580000    # -5.25f
        0x40b80000    # 5.75f
        -0x3f380000    # -6.25f
        0x40d80000    # 6.75f
        -0x3f180000    # -7.25f
        0x40f80000    # 7.75f
        -0x3efc0000    # -8.25f
        0x410c0000    # 8.75f
        -0x3f580000    # -5.25f
        0x3fe00000    # 1.75f
    .end array-data

    :array_14
    .array-data 4
        0x3e19999a    # 0.15f
        -0x4119999a    # -0.45f
        0x3f400000    # 0.75f
        -0x4079999a    # -1.05f
        0x3faccccd    # 1.35f
        -0x402ccccd    # -1.65f
        0x3ff9999a    # 1.95f
        -0x3ff00000    # -2.25f
        0x40233333    # 2.55f
        -0x3fc9999a    # -2.85f
        0x4049999a    # 3.15f
        -0x3fa33333    # -3.45f
        0x40700000    # 3.75f
        -0x3f7e6666    # -4.05f
        0x408b3333    # 4.35f
        -0x3f6b3333    # -4.65f
        0x409e6666    # 4.95f
        -0x3f580000    # -5.25f
        0x40b1999a    # 5.55f
        -0x40133333    # -1.85f
    .end array-data

    :array_15
    .array-data 4
        -0x42b33333    # -0.05f
        0x3e19999a    # 0.15f
        -0x41800000    # -0.25f
        0x3eb33333    # 0.35f
        -0x4119999a    # -0.45f
        0x3f0ccccd    # 0.55f
        -0x40d9999a    # -0.65f
        0x3f400000    # 0.75f
        -0x40a66666    # -0.85f
        0x3f733333    # 0.95f
        -0x4079999a    # -1.05f
        0x3f933333    # 1.15f
        -0x40600000    # -1.25f
        0x3faccccd    # 1.35f
        -0x40466666    # -1.45f
        0x3fc66666    # 1.55f
        -0x402ccccd    # -1.65f
        0x3fe00000    # 1.75f
        -0x40133333    # -1.85f
        0x3ff9999a    # 1.95f
    .end array-data

    :array_16
    .array-data 4
        0x40bf32c4
        -0x3ee7093b
        0x4093f560
        0x400bc882
        -0x404c1145
        -0x3f5ed08b
        0x40d739ac
        -0x4140f217
        -0x3f581f79
        0x401d4667
        0x4073542a
        -0x3fa71ec5
        -0x3f8ac7a8
        0x40f90be3
        -0x3fad4c90
        -0x3ff6676a
        -0x4140a5ad
        0x40fa9f66
        -0x3ee35570
        0x40822900
    .end array-data

    :array_17
    .array-data 4
        -0x3ead1ce0
        0x41d71dd6
        -0x3ef8f372
        -0x3e7b1216
        0x414d192b
        0x41403845
        -0x3e6becf8
        -0x3f59a67c
        0x41cd5e1d
        -0x3e9ad695
        -0x3ee4c8d1
        0x4103dc68
        0x419514ee
        -0x3dfd0d61
        0x41708cce
        0x40b974c9    # 5.795506f
        0x40675fdd
        -0x3e05cfb2
        0x421742b6    # 37.815147f
        -0x3e873068
    .end array-data

    :array_18
    .array-data 4
        0x4083a59e
        -0x3f5d5d9a
        -0x3ef0c1ee
        0x41dabfdf
        -0x3e48b984
        0x402d363b
        0x40238ede
        0x4176beb6
        -0x3e0f6193
        0x419eaa93
        -0x41142635
        0x3fb637ef
        -0x3e528976
        0x41fa09cb
        -0x3e7e81cc
        -0x40fc5f6c
        -0x3f2c84dc
        0x41da35bd
        -0x3e08dcc4
        0x414701b8
    .end array-data

    :array_19
    .array-data 4
        0x41058181
        -0x3e3bfbd4
        0x41fc29b9
        -0x3e2ec257
        0x41bde6ac
        -0x3e36942c
        0x41ccc9fb
        -0x3e52c782
        0x4184562f
        -0x3e8c89ca
        0x41879477
        -0x3e7c9f30
        0x413b646d
        -0x3f1ab35f
        0x40dc5b42
        -0x3ef6c76c
        0x40df7fd4
        -0x401bf184
        -0x400724d1
        0x3fa915c6
    .end array-data

    :array_1a
    .array-data 4
        -0x3f38c47c
        0x4196b504
        -0x3e344728
        0x41b5b442
        -0x3e55f23a
        0x41ee9ec2
        -0x3dff8950
        0x41a9e355
        -0x3edf2153
        0x413e3e09
        -0x3e5bb583
        0x419c902f
        -0x3f206339
        -0x401aca58    # -1.7907f
        -0x3fc34007
        0x412a4fb7
        -0x3f366fb1
        -0x3f1f47d8
        0x414ca75b
        -0x3f462d08
    .end array-data

    :array_1b
    .array-data 4
        -0x3f2db3fa
        0x41439f45
        -0x4264d120    # -0.075773f
        -0x3e5f8493
        0x41d3120b
        -0x3e717981
        0x4179d3bc
        -0x3e541925
        0x41c841bd
        -0x3e654e0d
        0x41359ddc
        -0x3ec8a60f
        0x418f3ec4
        -0x3e64969e
        0x4142594f
        -0x3f537247
        0x40f66d39
        -0x3e9fbf8c
        0x41545524
        -0x3f6055ae
    .end array-data

    :array_1c
    .array-data 4
        0x412221bc
        -0x3e5a0ce5
        0x40d794ea
        0x41a07213
        -0x3e1b0205
        0x4174b583
        -0x3eec2943
        0x41e5c507
        -0x3dd13850
        0x41f70903
        -0x3ef52cc4
        0x41191cd0
        -0x3e04d1ad
        0x422263d0
        -0x3e4b9d84
        0x406025ee
        -0x3eccadb8
        0x4205239b
        -0x3df0d003
        0x416278d5    # 14.1545f
    .end array-data

    :array_1d
    .array-data 4
        0x3fcd34ad
        -0x3f12c1f8
        0x417871bf
        -0x3e5b501c
        0x41ae8096
        -0x3e3e8f89
        0x41f79643
        -0x3de4e416
        0x422af0b0
        -0x3df93670
        0x41b04102
        -0x3e4f9b3f
        0x41f4474a
        -0x3e036ca3
        0x41a3556b
        -0x3ed62e29
        0x415ade56
        -0x3e5162a9
        0x419d2cbb
        -0x3f18ecca
    .end array-data

    :array_1e
    .array-data 4
        -0x3ec3f71d
        0x41fae3fc
        -0x3dfa7f78
        0x4195e1cf
        -0x3eaa3248
        0x41ea3a62
        -0x3dc5b793
        0x422d0d28
        -0x3e1dc5ad
        0x41e0729f
        -0x3dec6fbf
        0x420df874    # 35.49263f
        -0x3e60a309
        0x40efd169
        -0x3ed2f487
        0x4196e8ca
        -0x3ea78aa0
        -0x3fb192a3
        0x4144e3fd
        -0x3f3bd7cf
    .end array-data

    :array_1f
    .array-data 4
        0x40b9e842
        -0x3e7bc4b1
        0x41a0b626
        -0x3e8d72c5
        0x41525096
        -0x3e57630c
        0x41f889e4
        -0x3dff7002
        0x41d59263
        -0x3e28b63a
        0x4211e3ae
        -0x3df3ce7a
        0x41964799
        -0x3f3d3624
        0x41202f48
        -0x3e6a8c5b
        0x4151a184
        0x408b219b
        -0x3ea84462
        0x40d2ec44
    .end array-data

    :array_20
    .array-data 4
        0x40d2ec44
        -0x3ea84462
        0x408b219b
        0x4151a184
        -0x3e6a8c5b
        0x41202f48
        -0x3f3d3624
        0x41964799
        -0x3df3ce7a
        0x4211e3ae
        -0x3e28b63a
        0x41d59263
        -0x3dff7002
        0x41f889e4
        -0x3e57630c
        0x41525096
        -0x3e8d72c5
        0x41a0b626
        -0x3e7bc4b1
        0x40b9e842
    .end array-data

    :array_21
    .array-data 4
        -0x3f3bd7cf
        0x4144e3fd
        -0x3fb192a3
        -0x3ea78aa0
        0x4196e8ca
        -0x3ed2f487
        0x40efd169
        -0x3e60a309
        0x420df874    # 35.49263f
        -0x3dec6fbf
        0x41e0729f
        -0x3e1dc5ad
        0x422d0d28
        -0x3dc5b793
        0x41ea3a62
        -0x3eaa3248
        0x4195e1cf
        -0x3dfa7f78
        0x41fae3fc
        -0x3ec3f71d
    .end array-data

    :array_22
    .array-data 4
        -0x3f18ecca
        0x419d2cbb
        -0x3e5162a9
        0x415ade56
        -0x3ed62e29
        0x41a3556b
        -0x3e036ca3
        0x41f4474a
        -0x3e4f9b3f
        0x41b04102
        -0x3df93670
        0x422af0b0
        -0x3de4e416
        0x41f79643
        -0x3e3e8f89
        0x41ae8096
        -0x3e5b501c
        0x417871bf
        -0x3f12c1f8
        0x3fcd34ad
    .end array-data

    :array_23
    .array-data 4
        0x416278d5    # 14.1545f
        -0x3df0d003
        0x4205239b
        -0x3eccadb8
        0x406025ee
        -0x3e4b9d84
        0x422263d0
        -0x3e04d1ad
        0x41191cd0
        -0x3ef52cc4
        0x41f70903
        -0x3dd13850
        0x41e5c507
        -0x3eec2943
        0x4174b583
        -0x3e1b0205
        0x41a07213
        0x40d794ea
        -0x3e5a0ce5
        0x412221bc
    .end array-data

    :array_24
    .array-data 4
        -0x3f6055ae
        0x41545524
        -0x3e9fbf8c
        0x40f66d39
        -0x3f537247
        0x4142594f
        -0x3e64969e
        0x418f3ec4
        -0x3ec8a60f
        0x41359ddc
        -0x3e654e0d
        0x41c841bd
        -0x3e541925
        0x4179d3bc
        -0x3e717981
        0x41d3120b
        -0x3e5f8493
        -0x4264d120    # -0.075773f
        0x41439f45
        -0x3f2db3fa
    .end array-data

    :array_25
    .array-data 4
        -0x3f462d08
        0x414ca75b
        -0x3f1f47d8
        -0x3f366fb1
        0x412a4fb7
        -0x3fc34007
        -0x401aca58    # -1.7907f
        -0x3f206339
        0x419c902f
        -0x3e5bb583
        0x413e3e09
        -0x3edf2153
        0x41a9e355
        -0x3dff8950
        0x41ee9ec2
        -0x3e55f23a
        0x41b5b442
        -0x3e344728
        0x4196b504
        -0x3f38c47c
    .end array-data

    :array_26
    .array-data 4
        0x3fa915c6
        -0x400724d1
        -0x401bf184
        0x40df7fd4
        -0x3ef6c76c
        0x40dc5b42
        -0x3f1ab35f
        0x413b646d
        -0x3e7c9f30
        0x41879477
        -0x3e8c89ca
        0x4184562f
        -0x3e52c782
        0x41ccc9fb
        -0x3e36942c
        0x41bde6ac
        -0x3e2ec257
        0x41fc29b9
        -0x3e3bfbd4
        0x41058181
    .end array-data

    :array_27
    .array-data 4
        0x414701b8
        -0x3e08dcc4
        0x41da35bd
        -0x3f2c84dc
        -0x40fc5f6c
        -0x3e7e81cc
        0x41fa09cb
        -0x3e528976
        0x3fb637ef
        -0x41142635
        0x419eaa93
        -0x3e0f6193
        0x4176beb6
        0x40238ede
        0x402d363b
        -0x3e48b984
        0x41dabfdf
        -0x3ef0c1ee
        -0x3f5d5d9a
        0x4083a59e
    .end array-data

    :array_28
    .array-data 4
        -0x3e873068
        0x421742b6    # 37.815147f
        -0x3e05cfb2
        0x40675fdd
        0x40b974c9    # 5.795506f
        0x41708cce
        -0x3dfd0d61
        0x419514ee
        0x4103dc68
        -0x3ee4c8d1
        -0x3e9ad695
        0x41cd5e1d
        -0x3f59a67c
        -0x3e6becf8
        0x41403845
        0x414d192b
        -0x3e7b1216
        -0x3ef8f372
        0x41d71dd6
        -0x3ead1ce0
    .end array-data

    :array_29
    .array-data 4
        0x40822900
        -0x3ee35570
        0x40fa9f66
        -0x4140a5ad
        -0x3ff6676a
        -0x3fad4c90
        0x40f90be3
        -0x3f8ac7a8
        -0x3fa71ec5
        0x4073542a
        0x401d4667
        -0x3f581f79
        -0x4140f217
        0x40d739ac
        -0x3f5ed08b
        -0x404c1145
        0x400bc882
        0x4093f560
        -0x3ee7093b
        0x40bf32c4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolby/daxappUI/GraphicVisualiser;[F[F)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/16 v1, 0x14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    new-instance v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-direct {v0, p0, v1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;-><init>(Lcom/dolby/daxappUI/GraphicEqualizerPainter;I)V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->tmp_userGain_1:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->tmp_userGain_2:[I

    iput v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    iput v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPrevEditBand:I

    iput-boolean v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mNotifyListener:Z

    iput v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mProfile:I

    iput v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEqPreset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEnabled:Z

    iput-boolean v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintRed:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintGreen:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintRed:Landroid/graphics/Paint;

    const v1, -0x2f007f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintRed:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintGreen:Landroid/graphics/Paint;

    const v1, -0x2f7f0080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lcom/dolby/daxappUI/FPSCounter;

    invoke-direct {v0}, Lcom/dolby/daxappUI/FPSCounter;-><init>()V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDrawFpsCounter:Lcom/dolby/daxappUI/FPSCounter;

    new-instance v0, Lcom/dolby/daxappUI/FPSCounter;

    invoke-direct {v0}, Lcom/dolby/daxappUI/FPSCounter;-><init>()V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSmoothFpsCounter:Lcom/dolby/daxappUI/FPSCounter;

    new-instance v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$1;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$1;-><init>(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->recalcPosTimestamp:J

    new-instance v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter$2;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$2;-><init>(Lcom/dolby/daxappUI/GraphicEqualizerPainter;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    iput-object p3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsUi:[F

    iput-object p4, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->init()V

    return-void
.end method

.method private animateVisibility(Z)V
    .locals 8

    const-wide/16 v6, 0xfa

    invoke-virtual {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->preventHiding()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, v6

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    iput-wide v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    invoke-direct {p0, v6, v7}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->delayHide(J)V

    :goto_0
    return-void

    :cond_1
    iput-wide v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    goto :goto_0
.end method

.method private calculateTempGainsFromSmoothed()V
    .locals 9

    const/16 v8, 0x14

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_1

    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v4, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    add-int/2addr v4, v0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v4, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    add-int/2addr v4, v0

    aget v5, v3, v4

    sget-object v6, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV:[[F

    aget-object v6, v6, v0

    aget v6, v6, v1

    iget-object v7, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v7, v7, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    sget v3, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    iget-object v4, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v5, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    aget v4, v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v4, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x14

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v6, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    add-int/lit8 v6, v6, 0x14

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private delayHide()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->delayHide(J)V

    return-void
.end method

.method private delayHide(J)V
    .locals 5

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private doRecalcPositions()V
    .locals 14

    iget-object v10, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v10}, Lcom/dolby/daxappUI/GraphicVisualiser;->isSurfaceCreated()Z

    move-result v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v10, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->recalcPosTimestamp:J

    sub-long v2, v0, v10

    const-wide/16 v6, 0x3c

    iget-object v10, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    iget-boolean v10, v10, Lcom/dolby/daxappUI/GraphicVisualiser;->mSuspended:Z

    if-eqz v10, :cond_1

    const-wide/16 v6, 0x1e

    :cond_1
    cmp-long v10, v2, v6

    if-gez v10, :cond_2

    sub-long v10, v6, v2

    const-wide/16 v12, 0x1

    add-long v8, v10, v12

    sget-object v10, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-virtual {v10, v11, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    sget-object v10, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-wide v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->recalcPosTimestamp:J

    iget-object v10, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_3

    const-string/jumbo v10, "GraphicEqualizerPainter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mTouchEvents: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v12}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v4, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    iget v5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEditGain:F

    iget-object v10, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_4

    iget-object v10, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10, v4, v5}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->add(IF)V

    :cond_4
    iget-object v10, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v10

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    if-eqz v10, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->handleNewTouchEvents()V

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->smoothenCurve()V

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->updateEqUserGainsInEngine()V

    :cond_6
    iget-boolean v10, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    if-eqz v10, :cond_7

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->delayHide()V

    :cond_7
    invoke-virtual {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v0

    const-wide/16 v10, 0x3c

    sub-long v2, v10, v2

    sget-object v10, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v11, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-virtual {v10, v11, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void
.end method

.method private getVerticalThumbPadding()I
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleNewTouchEvents()V
    .locals 9

    iget-object v8, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v6

    iget-object v8, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    iget-boolean v7, v8, Lcom/dolby/daxappUI/GraphicVisualiser;->mSuspended:Z

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    iget-object v8, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8, v4}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->getBandAt(I)I

    move-result v0

    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8, v4}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->getGainAt(I)F

    move-result v5

    :goto_1
    move v1, v0

    :goto_2
    sget v8, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    if-gt v1, v8, :cond_1

    iget-object v8, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    aput v5, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    iget-object v8, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsUi:[F

    aget v2, v8, v0

    iget-object v8, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v8, v8, v0

    sub-float v3, v2, v8

    iget-object v8, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8, v4}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->getGainAt(I)F

    move-result v8

    sub-float v5, v8, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->reset()V

    return-void
.end method

.method private init()V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    const v4, 0x7f02002b

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f090000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    iget-boolean v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_MOBILE:[F

    sput-object v2, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER:[F

    sget-object v2, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_MOBILE:[[F

    sput-object v2, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV:[[F

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f02002c

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020028

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const v3, 0x7f06000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const v3, 0x7f06000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const v3, 0x7f06000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const v3, 0x7f06000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const v3, 0x7f06000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const v3, 0x7f06000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v2, :sswitch_data_0

    :goto_1
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v1

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mBlur:Landroid/graphics/MaskFilter;

    new-instance v2, Landroid/graphics/CornerPathEffect;

    mul-float v3, v6, v1

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEffect1:Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    const v3, -0x2f8a2d01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEffect1:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    mul-float v3, v6, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    const v3, -0x7f8a2d01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mBlur:Landroid/graphics/MaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEffect1:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    :cond_0
    iput-boolean v7, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    return-void

    :cond_1
    sget-object v2, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_TABLET:[F

    sput-object v2, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER:[F

    sget-object v2, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_TABLET:[[F

    sput-object v2, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV:[[F

    sput v5, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    goto/16 :goto_0

    :sswitch_0
    const/high16 v1, 0x3f400000    # 0.75f

    goto/16 :goto_1

    :sswitch_1
    const/high16 v1, 0x3fc00000    # 1.5f

    goto/16 :goto_1

    :sswitch_2
    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_2
    .end sparse-switch
.end method

.method private isAnimatedVisible()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAnimating(J)Z
    .locals 5

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEnabled:Z

    return v0
.end method

.method private onIEqPresetChanged()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->reset()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->smoothenCurve()V

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    const/16 v2, 0x14

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method private preventHiding()V
    .locals 2

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private smoothenCurve()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    move-object/from16 v23, v0

    check-cast v23, Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/dolby/daxappUI/MainActivity;->getConfiguration()Lcom/dolby/daxappCoreUI/Configuration;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    move-wide/from16 v24, v0

    sub-long v24, v18, v24

    const-wide/16 v26, 0x3e8

    cmp-long v23, v24, v26

    if-ltz v23, :cond_1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    move-wide/from16 v24, v0

    sub-long v10, v18, v24

    long-to-float v0, v10

    move/from16 v23, v0

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v14, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    move-object/from16 v22, v0

    const v20, 0x3ca3d70a    # 0.02f

    const/16 v17, 0x0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    const v23, 0x3e99999a    # 0.3f

    div-float v23, v14, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v13, v0

    const v21, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x0

    :goto_0
    sget v23, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0x14

    move/from16 v0, v23

    if-ge v7, v0, :cond_8

    aget v23, v22, v7

    invoke-virtual {v9}, Lcom/dolby/daxappCoreUI/Configuration;->getMaxEditGain()F

    move-result v24

    sub-float v12, v23, v24

    const/16 v23, 0x0

    cmpl-float v23, v12, v23

    if-lez v23, :cond_5

    const v23, 0x3ca3d70a    # 0.02f

    cmpl-float v23, v12, v23

    if-ltz v23, :cond_4

    const v23, 0x3e4ccccd    # 0.2f

    cmpg-float v23, v12, v23

    if-gez v23, :cond_3

    invoke-virtual {v9}, Lcom/dolby/daxappCoreUI/Configuration;->getMaxEditGain()F

    move-result v23

    aput v23, v22, v7

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    aget v23, v22, v7

    mul-float v23, v23, v13

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v13

    invoke-virtual {v9}, Lcom/dolby/daxappCoreUI/Configuration;->getMaxEditGain()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aput v23, v22, v7

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Lcom/dolby/daxappCoreUI/Configuration;->getMaxEditGain()F

    move-result v23

    aput v23, v22, v7

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Lcom/dolby/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v23

    aget v24, v22, v7

    sub-float v12, v23, v24

    const/16 v23, 0x0

    cmpl-float v23, v12, v23

    if-lez v23, :cond_2

    const v23, 0x3ca3d70a    # 0.02f

    cmpl-float v23, v12, v23

    if-ltz v23, :cond_7

    const v23, 0x3e4ccccd    # 0.2f

    cmpg-float v23, v12, v23

    if-gez v23, :cond_6

    invoke-virtual {v9}, Lcom/dolby/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v23

    aput v23, v22, v7

    goto :goto_1

    :cond_6
    aget v23, v22, v7

    mul-float v23, v23, v13

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v13

    invoke-virtual {v9}, Lcom/dolby/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aput v23, v22, v7

    goto :goto_1

    :cond_7
    invoke-virtual {v9}, Lcom/dolby/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v23

    aput v23, v22, v7

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x14

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v24

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    const/4 v7, 0x0

    :goto_2
    const/16 v23, 0x14

    move/from16 v0, v23

    if-ge v7, v0, :cond_b

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v8, v7

    :goto_3
    sget v23, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v23, v23, 0x2

    move/from16 v0, v16

    move/from16 v1, v23

    if-gt v0, v1, :cond_9

    sget-object v23, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER:[F

    aget v23, v23, v16

    aget v24, v22, v8

    mul-float v23, v23, v24

    add-float v15, v15, v23

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v23, v0

    aget v23, v23, v7

    cmpl-float v23, v23, v15

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v23, v0

    aget v23, v23, v7

    sub-float v23, v23, v15

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v23, 0x3ca3d70a    # 0.02f

    cmpl-float v23, v6, v23

    if-lez v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v23, v0

    aput v15, v23, v7

    if-nez v17, :cond_a

    const/16 v17, 0x1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    return-void
.end method

.method private static translateEqPresetIndex(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private translateGaindBToY([FF)F
    .locals 18

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-eqz v15, :cond_1

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpl-double v15, v2, v4

    if-eqz v15, :cond_0

    double-to-int v15, v2

    aget v10, p1, v15

    double-to-int v15, v4

    aget v11, p1, v15

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v16, v2

    move-wide/from16 v0, v16

    double-to-float v7, v0

    sub-float v15, v11, v10

    mul-float/2addr v15, v7

    add-float v12, v15, v10

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->getVerticalThumbPadding()I

    move-result v15

    int-to-float v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->getHeight()I

    move-result v15

    int-to-float v6, v15

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v14

    sub-float v8, v6, v15

    const/high16 v15, -0x3ec00000    # -12.0f

    sub-float v13, v12, v15

    mul-float v15, v13, v8

    const/high16 v16, 0x42400000    # 48.0f

    div-float v9, v15, v16

    sub-float v15, v6, v14

    sub-float/2addr v15, v9

    return v15

    :cond_0
    move/from16 v0, p2

    float-to-int v15, v0

    aget v12, p1, v15

    goto :goto_0

    :cond_1
    move/from16 v0, p2

    float-to-int v15, v0

    aget v12, p1, v15

    goto :goto_0
.end method

.method private translateYtoGaindB(F)F
    .locals 8

    const/high16 v7, -0x3ec00000    # -12.0f

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->getVerticalThumbPadding()I

    move-result v4

    iget v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mViewHeight:I

    mul-int/lit8 v5, v4, 0x2

    sub-int v1, v0, v5

    sub-int v5, v0, v4

    int-to-float v5, v5

    sub-float/2addr v5, p1

    const/high16 v6, 0x42400000    # 48.0f

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float v3, v5, v6

    add-float v5, v3, v7

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method private updateEqUserGainsInEngine()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    invoke-interface {v13}, Lcom/dolby/daxappUI/IDsActivityCommon;->useDsApiOnUiEvent()Z

    move-result v13

    if-nez v13, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    check-cast v13, Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v13}, Lcom/dolby/daxappUI/MainActivity;->getConfiguration()Lcom/dolby/daxappCoreUI/Configuration;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    sget-object v14, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    check-cast v13, Lcom/dolby/daxappUI/MainActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v14, v13, v15}, Lcom/dolby/daxappCoreUI/DsClientSettings;->getGeqOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z

    move-result v7

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/dolby/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v10

    const/high16 v8, 0x42100000    # 36.0f

    invoke-virtual {v3}, Lcom/dolby/daxappCoreUI/Configuration;->getMinEditGain_DS2()I

    move-result v11

    sget v9, Lcom/dolby/daxappCoreUI/Constants;->MAX_VISIBLE_GAIN_DS2:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    iget-boolean v12, v13, Lcom/dolby/daxappUI/GraphicVisualiser;->mSuspended:Z

    const/4 v1, 0x0

    :goto_0
    const/16 v13, 0x14

    if-ge v1, v13, :cond_8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v13, v13, v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    aget v14, v14, v1

    sub-float v5, v13, v14

    if-nez v2, :cond_2

    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-eqz v13, :cond_4

    const/4 v2, 0x1

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v13, v13, v1

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_3

    if-eqz v7, :cond_5

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v13, v13, v1

    cmpg-float v13, v13, v10

    if-gez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->tmp_userGain_1:[I

    aput v11, v13, v1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    sget-object v14, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    check-cast v13, Lcom/dolby/daxappUI/MainActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/dolby/daxappCoreUI/DsClientSettings;->setGeqOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v13, v13, v1

    const/high16 v14, 0x42100000    # 36.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->tmp_userGain_1:[I

    aput v9, v13, v1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->tmp_userGain_1:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v14, v14, v1

    float-to-int v14, v14

    sget v15, Lcom/dolby/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shl-int/2addr v14, v15

    aput v14, v13, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_8
    if-eqz v12, :cond_9

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/dolby/daxappUI/GraphicVisualiser;->repaint(Z)V

    :cond_9
    if-eqz v2, :cond_a

    sget-object v14, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    check-cast v13, Lcom/dolby/daxappUI/MainActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->tmp_userGain_1:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/dolby/daxappCoreUI/DsClientSettings;->setGraphicEqualizerBandGains(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;[I)Z

    move-result v13

    if-nez v13, :cond_a

    return-void

    :cond_a
    move-object/from16 v0, p0

    iput v4, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserBandsUpdated:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mNotifyListener:Z

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mListener:Lcom/dolby/daxappUI/IEqualizerChangeListener;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mListener:Lcom/dolby/daxappUI/IEqualizerChangeListener;

    invoke-interface {v13}, Lcom/dolby/daxappUI/IEqualizerChangeListener;->onEqualizerEditStart()V

    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mNotifyListener:Z

    :cond_c
    return-void
.end method

.method private updateGeqOnInDs()V
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->tmp_userGain_2:[I

    iget-object v4, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v4, v4, v0

    float-to-int v4, v4

    sget v5, Lcom/dolby/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shl-int/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v4, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    check-cast v3, Lcom/dolby/daxappUI/MainActivity;

    iget-object v5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v4, v3, v5, v2}, Lcom/dolby/daxappCoreUI/DsClientSettings;->setGeqOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;Z)Z

    sget-object v4, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    check-cast v3, Lcom/dolby/daxappUI/MainActivity;

    iget-object v5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    iget-object v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->tmp_userGain_2:[I

    invoke-virtual {v4, v3, v5, v6}, Lcom/dolby/daxappCoreUI/DsClientSettings;->setGraphicEqualizerBandGains(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHeight:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mWidth:I

    return v0
.end method

.method public hide()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->animateVisibility(Z)V

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/GraphicVisualiser;->repaint(Z)V

    return-void
.end method

.method public isAnimating()Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->isAnimating(J)Z

    move-result v2

    return v2
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    iget-boolean v2, v2, Lcom/dolby/daxappUI/GraphicVisualiser;->mSuspended:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    :goto_0
    const/16 v7, 0xff

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    cmp-long v2, v24, v2

    if-gez v2, :cond_a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    const-wide/16 v4, 0xfa

    sub-long/2addr v2, v4

    sub-long v10, v24, v2

    const-wide/16 v2, 0xff

    mul-long/2addr v2, v10

    const-wide/16 v4, 0xfa

    div-long/2addr v2, v4

    long-to-int v7, v2

    :cond_2
    :goto_1
    if-gez v7, :cond_b

    const/4 v7, 0x0

    :cond_3
    :goto_2
    const/16 v2, 0xff

    if-ge v7, v2, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHeight:I

    int-to-float v6, v2

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->getWidth()I

    move-result v26

    const/16 v22, 0x14

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-eqz v2, :cond_5

    const/16 v18, 0x0

    const/high16 v19, 0x40980000    # 4.75f

    :cond_5
    div-int/lit8 v28, v26, 0x28

    move/from16 v16, v18

    :goto_3
    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v2, v16, v2

    if-gez v2, :cond_11

    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v3, v0

    mul-float v3, v3, v16

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v27, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    :goto_4
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->translateGaindBToY([FF)F

    move-result v29

    div-int/lit8 v2, v14, 0x2

    sub-int v2, v27, v2

    int-to-float v2, v2

    div-int/lit8 v3, v12, 0x2

    int-to-float v3, v3

    sub-float v3, v29, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    add-float v16, v16, v19

    goto/16 :goto_3

    :cond_8
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsUi:[F

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    cmp-long v2, v24, v2

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    sub-long v20, v2, v24

    const-wide/16 v2, 0xff

    mul-long v2, v2, v20

    const-wide/16 v4, 0xfa

    div-long/2addr v2, v4

    long-to-int v7, v2

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0xff

    if-le v7, v2, :cond_3

    const/16 v7, 0xff

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    cmp-long v2, v24, v2

    if-lez v2, :cond_4

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    return-void

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    int-to-float v2, v2

    sub-float v2, v16, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v13, v2

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    :cond_e
    const/4 v2, 0x1

    if-ne v13, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    :cond_f
    const/4 v2, 0x2

    if-ne v13, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->translateGaindBToY([FF)F

    move-result v29

    new-instance v23, Landroid/graphics/Path;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v17, 0x0

    :goto_5
    const/16 v2, 0x14

    move/from16 v0, v17

    if-ge v0, v2, :cond_12

    mul-int v2, v17, v26

    div-int/lit8 v2, v2, 0x14

    add-int v27, v28, v2

    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->translateGaindBToY([FF)F

    move-result v29

    move/from16 v0, v27

    int-to-float v2, v0

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    :cond_12
    add-int v2, v28, v26

    int-to-float v2, v2

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_13
    const/16 v2, 0xff

    if-ge v7, v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    return-void
.end method

.method protected onSizeChanged(IIIII)V
    .locals 4

    const/4 v3, 0x0

    iput p1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mWidth:I

    iput p2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mHeight:I

    iput p5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mViewHeight:I

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    iget-boolean v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEnabled:Z

    if-nez v6, :cond_0

    return v10

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v10, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mNotifyListener:Z

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->preventHiding()V

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->isAnimatedVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    if-eqz v6, :cond_4

    :cond_1
    :goto_0
    iget v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    iput v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPrevEditBand:I

    iget v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEditGain:F

    iput v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPrevEditGain:F

    const/4 v6, 0x2

    if-eq v6, v0, :cond_2

    if-nez v0, :cond_8

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v6, v1, v7

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mWidth:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_5

    :cond_3
    return v10

    :cond_4
    invoke-direct {p0, v10}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->animateVisibility(Z)V

    iget-object v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_5
    cmpg-float v6, v2, v7

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mViewHeight:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-gez v6, :cond_3

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float/2addr v6, v1

    iget v7, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    const/16 v7, 0x13

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-boolean v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-eqz v6, :cond_6

    add-int/lit8 v6, v5, 0x1

    int-to-double v6, v6

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-float v6, v6

    const/high16 v7, 0x40980000    # 4.75f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/16 v6, 0x14

    if-lt v5, v6, :cond_6

    const/16 v5, 0x13

    :cond_6
    iput v5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    invoke-direct {p0, v2}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->translateYtoGaindB(F)F

    move-result v4

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, -0x3ec00000    # -12.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEditGain:F

    iget-object v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v6, v5, v3}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->add(IF)V

    iget-object v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/daxappUI/GraphicVisualiser;

    iget-boolean v6, v6, Lcom/dolby/daxappUI/GraphicVisualiser;->mSuspended:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_7
    :goto_1
    return v10

    :cond_8
    if-ne v10, v0, :cond_7

    iput v9, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    iput v9, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mPrevEditBand:I

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->delayHide()V

    iput-boolean v10, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    iget-object v6, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method readUserGainsFromEngine()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    sget-object v6, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    check-cast v5, Lcom/dolby/daxappUI/MainActivity;

    iget-object v7, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v6, v5, v7}, Lcom/dolby/daxappCoreUI/DsClientSettings;->getGraphicEqualizerBandGains(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    check-cast v5, Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v5}, Lcom/dolby/daxappUI/MainActivity;->getConfiguration()Lcom/dolby/daxappCoreUI/Configuration;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0x14

    if-ge v3, v5, :cond_2

    aget v5, v4, v3

    invoke-virtual {v1}, Lcom/dolby/daxappCoreUI/Configuration;->getMaxEditGain_DS2()I

    move-result v6

    if-le v5, v6, :cond_0

    invoke-virtual {v1}, Lcom/dolby/daxappCoreUI/Configuration;->getMaxEditGain_DS2()I

    move-result v5

    aput v5, v4, v3

    iget-object v5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    invoke-virtual {v1}, Lcom/dolby/daxappCoreUI/Configuration;->getMaxEditGain()F

    move-result v6

    aput v6, v5, v3

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aget v5, v4, v3

    invoke-virtual {v1}, Lcom/dolby/daxappCoreUI/Configuration;->getMinEditGain_DS2()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/dolby/daxappCoreUI/Configuration;->getMinEditGain_DS2()I

    move-result v5

    aput v5, v4, v3

    iget-object v5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    invoke-virtual {v1}, Lcom/dolby/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v6

    aput v6, v5, v3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v6, v4, v3

    sget v7, Lcom/dolby/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shr-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    sget-object v6, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v5, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    check-cast v5, Lcom/dolby/daxappUI/MainActivity;

    iget-object v7, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v6, v5, v7, v4}, Lcom/dolby/daxappCoreUI/DsClientSettings;->setGraphicEqualizerBandGains(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;[I)Z

    move-result v5

    if-nez v5, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->calculateTempGainsFromSmoothed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public resetUserGains(Z)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mProfile:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEqPreset:I

    if-ne v1, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->reset()V

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->onIEqPresetChanged()V

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->updateGeqOnInDs()V

    :cond_4
    return-void
.end method

.method public setActivity(Lcom/dolby/daxappUI/IDsActivityCommon;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/daxappUI/IDsActivityCommon;

    return-void
.end method

.method public setDsClient(Lcom/dolby/api/DsGlobalEx;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEnabled:Z

    return-void
.end method

.method public setEqualizerListener(Lcom/dolby/daxappUI/IEqualizerChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mListener:Lcom/dolby/daxappUI/IEqualizerChangeListener;

    return-void
.end method

.method public switchPreset(IIZ)V
    .locals 3

    const-string/jumbo v0, "GraphicEqualizerPainter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GraphicEqualizerPainter.switchPreset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->translateEqPresetIndex(I)I

    move-result p2

    iget v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mProfile:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEqPreset:I

    if-eq v0, p2, :cond_2

    :cond_0
    iput p1, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mProfile:I

    iput p2, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mEqPreset:I

    invoke-virtual {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->readUserGainsFromEngine()V

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->onIEqPresetChanged()V

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->updateGeqOnInDs()V

    :cond_1
    iget-object v0, p0, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

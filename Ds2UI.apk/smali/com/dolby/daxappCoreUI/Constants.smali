.class public Lcom/dolby/daxappCoreUI/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static GEQ_GAIN_RIGHT_SHIFT_COUNT:I

.field public static final IEQ_PRESET_GAIN:[[F

.field public static final MAX_VISIBLE_GAIN_DS2:I

.field public static final MIN_VISIBLE_GAIN_DS2:I

.field public static STATUS_BAR_HEIGHT:I

.field public static final VISIBLE_GAIN_SPAN_DS2:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x4

    const/16 v3, 0x14

    sput v4, Lcom/dolby/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    sget v0, Lcom/dolby/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    const/16 v1, 0xc

    shl-int v0, v1, v0

    neg-int v0, v0

    sput v0, Lcom/dolby/daxappCoreUI/Constants;->MIN_VISIBLE_GAIN_DS2:I

    sget v0, Lcom/dolby/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    const/16 v1, 0x24

    shl-int v0, v1, v0

    sput v0, Lcom/dolby/daxappCoreUI/Constants;->MAX_VISIBLE_GAIN_DS2:I

    sget v0, Lcom/dolby/daxappCoreUI/Constants;->MAX_VISIBLE_GAIN_DS2:I

    sget v1, Lcom/dolby/daxappCoreUI/Constants;->MIN_VISIBLE_GAIN_DS2:I

    sub-int/2addr v0, v1

    sput v0, Lcom/dolby/daxappCoreUI/Constants;->VISIBLE_GAIN_SPAN_DS2:I

    const/4 v0, 0x7

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/daxappCoreUI/Constants;->IEQ_PRESET_GAIN:[[F

    const/16 v0, 0x30

    sput v0, Lcom/dolby/daxappCoreUI/Constants;->STATUS_BAR_HEIGHT:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x400df726
        0x40cebd07
        0x40eecab4
        0x40f472c3
        0x40be6825
        -0x408ad5e0
        -0x3ef00000    # -9.0f
        -0x3ec00000    # -12.0f
        -0x3ef00000    # -9.0f
        -0x3fc00000    # -3.0f
        0x0
        0x3feecab4
        0x40e9138a
        0x41485e9e
        0x417168c0
        0x418b4cfd
        0x41a5f99d
        0x41c548e3
        0x41db2515
        0x41e0cc33
    .end array-data

    :array_2
    .array-data 4
        0x41400000    # 12.0f
        0x412dd956
        0x41098c04
        0x40f472c3
        0x40b45769
        0x3f8ca220
        -0x405ef440
        0x3f942ce0
        0x40dc6a1c
        0x41319eb6
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41338166
        0x411a8430
        0x410e0596
    .end array-data

    :array_3
    .array-data 4
        0x40b9ff78
        0x408b7f9a
        0x3fb9ff78
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3fe73ff0
        0x40a40285
        0x40caf7a3
        0x40c18a34
        0x40c54f94
        0x40ccda54
        0x40d09fb4
        0x40aeaf58
        0x4060ed5e
        0x403b37a2
        0x40559d40
        0x405d2800
    .end array-data

    :array_4
    .array-data 4
        0x413fc2dc
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x412a13f6
        0x40fc77c7
        0x408adc4b
        -0x40d4bf4e
        -0x3f700944
        -0x3f3b3e0a
        -0x3f1d130e
        -0x3f1b305e
        -0x3f2a45de
        -0x3f31d09e
        -0x3f2fedec
        -0x3f2c288a
        -0x3f28632c
        -0x3f22bb1c
    .end array-data

    :array_5
    .array-data 4
        0x41900000    # 18.0f
        0x41800000    # 16.0f
        0x41600000    # 14.0f
        0x41400000    # 12.0f
        0x41246be6
        0x40da8767
        0x40750ece
        0x3fa35f34
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fcd7cd3
        -0x3efa1d9e
        -0x3ecd7cd3
        -0x3eca1d9e
        -0x3ec35f35
    .end array-data

    :array_6
    .array-data 4
        -0x3ec00000    # -12.0f
        -0x3f400000    # -6.0f
        0x40c00000    # 6.0f
        0x41900000    # 18.0f
        0x41900000    # 18.0f
        0x41100000    # 9.0f
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fc00000    # -3.0f
        -0x3ef00000    # -9.0f
        -0x3ec00000    # -12.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

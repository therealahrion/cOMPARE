.class public Lcom/dolby/daxappCoreUI/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static dynamicInstance:Lcom/dolby/daxappCoreUI/Configuration;


# instance fields
.field private maxEditGain:F

.field private maxEditGain_DS2:I

.field private minEditGain:F

.field private minEditGain_DS2:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const v5, 0x7fffffff

    const/high16 v4, 0x7fc00000    # NaNf

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v2, -0x3ec00000    # -12.0f

    iput v2, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain:F

    const/high16 v2, 0x41400000    # 12.0f

    iput v2, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain:F

    sget v2, Lcom/dolby/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    const/16 v3, -0xc

    shl-int v2, v3, v2

    iput v2, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain_DS2:I

    sget v2, Lcom/dolby/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    const/16 v3, 0xc

    shl-int v2, v3, v2

    iput v2, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain_DS2:I

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain:F

    iget v2, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain:F

    float-to-int v2, v2

    sget v3, Lcom/dolby/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain_DS2:I

    iget v2, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain:F

    float-to-int v2, v2

    sget v3, Lcom/dolby/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain_DS2:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iput v4, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain:F

    iput v4, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain:F

    iput v5, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain_DS2:I

    iput v5, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain_DS2:I

    const-string/jumbo v2, "DsUI::MainActivity"

    const-string/jumbo v3, "Some of values from configuration.xml were not loaded!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iput v4, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain:F

    iput v4, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain:F

    iput v5, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain_DS2:I

    iput v5, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain_DS2:I

    const-string/jumbo v2, "DsUI::MainActivity"

    const-string/jumbo v3, "Some of values from configuration.xml were not float type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/dolby/daxappCoreUI/Configuration;
    .locals 1

    sget-object v0, Lcom/dolby/daxappCoreUI/Configuration;->dynamicInstance:Lcom/dolby/daxappCoreUI/Configuration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dolby/daxappCoreUI/Configuration;

    invoke-direct {v0, p0}, Lcom/dolby/daxappCoreUI/Configuration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolby/daxappCoreUI/Configuration;->dynamicInstance:Lcom/dolby/daxappCoreUI/Configuration;

    :cond_0
    sget-object v0, Lcom/dolby/daxappCoreUI/Configuration;->dynamicInstance:Lcom/dolby/daxappCoreUI/Configuration;

    return-object v0
.end method


# virtual methods
.method public getMaxEditGain()F
    .locals 1

    iget v0, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    return v0

    :cond_0
    iget v0, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain:F

    return v0
.end method

.method public getMaxEditGain_DS2()I
    .locals 2

    iget v0, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain_DS2:I

    const v1, 0x7fffffff

    if-ne v1, v0, :cond_0

    const/16 v0, 0xc

    return v0

    :cond_0
    iget v0, p0, Lcom/dolby/daxappCoreUI/Configuration;->maxEditGain_DS2:I

    return v0
.end method

.method public getMinEditGain()F
    .locals 1

    iget v0, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x3ec00000    # -12.0f

    return v0

    :cond_0
    iget v0, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain:F

    return v0
.end method

.method public getMinEditGain_DS2()I
    .locals 2

    iget v0, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/16 v0, -0xc

    return v0

    :cond_0
    iget v0, p0, Lcom/dolby/daxappCoreUI/Configuration;->minEditGain_DS2:I

    return v0
.end method

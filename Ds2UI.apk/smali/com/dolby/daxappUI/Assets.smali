.class public Lcom/dolby/daxappUI/Assets;
.super Ljava/lang/Object;
.source "Assets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/daxappUI/Assets$FontType;
    }
.end annotation


# static fields
.field private static final synthetic -com-dolby-daxappUI-Assets$FontTypeSwitchesValues:[I

.field private static sFontLight:Landroid/graphics/Typeface;

.field private static sFontMedium:Landroid/graphics/Typeface;

.field private static sFontRegular:Landroid/graphics/Typeface;


# direct methods
.method private static synthetic -getcom-dolby-daxappUI-Assets$FontTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/dolby/daxappUI/Assets;->-com-dolby-daxappUI-Assets$FontTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolby/daxappUI/Assets;->-com-dolby-daxappUI-Assets$FontTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/dolby/daxappUI/Assets$FontType;->values()[Lcom/dolby/daxappUI/Assets$FontType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/dolby/daxappUI/Assets$FontType;->LIGHT:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-virtual {v1}, Lcom/dolby/daxappUI/Assets$FontType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/dolby/daxappUI/Assets$FontType;->MEDIUM:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-virtual {v1}, Lcom/dolby/daxappUI/Assets$FontType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/dolby/daxappUI/Assets$FontType;->REGULAR:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-virtual {v1}, Lcom/dolby/daxappUI/Assets$FontType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/dolby/daxappUI/Assets;->-com-dolby-daxappUI-Assets$FontTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;
    .locals 2

    invoke-static {}, Lcom/dolby/daxappUI/Assets;->-getcom-dolby-daxappUI-Assets$FontTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/daxappUI/Assets$FontType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/dolby/daxappUI/Assets;->sFontRegular:Landroid/graphics/Typeface;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/dolby/daxappUI/Assets;->sFontLight:Landroid/graphics/Typeface;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/dolby/daxappUI/Assets;->sFontMedium:Landroid/graphics/Typeface;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/Roboto-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/dolby/daxappUI/Assets;->sFontRegular:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/dolby/daxappUI/Assets;->sFontLight:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/Roboto-Medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/dolby/daxappUI/Assets;->sFontMedium:Landroid/graphics/Typeface;

    return-void
.end method

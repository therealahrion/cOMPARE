.class public Lcom/dolby/daxappUI/EqualizerSetting;
.super Ljava/lang/Object;
.source "EqualizerSetting.java"


# instance fields
.field private mIconDisabled:I

.field private mIconNormal:I

.field private mIconSelected:I

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/daxappUI/EqualizerSetting;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/dolby/daxappUI/EqualizerSetting;->mIconSelected:I

    iput p3, p0, Lcom/dolby/daxappUI/EqualizerSetting;->mIconNormal:I

    iput p4, p0, Lcom/dolby/daxappUI/EqualizerSetting;->mIconDisabled:I

    return-void
.end method


# virtual methods
.method public getIcon(ZZ)I
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/dolby/daxappUI/EqualizerSetting;->mIconSelected:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dolby/daxappUI/EqualizerSetting;->mIconNormal:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/dolby/daxappUI/EqualizerSetting;->mIconDisabled:I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/EqualizerSetting;->mName:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/dolby/daxappUI/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# instance fields
.field private mIconDisabled:I

.field private mIconNormal:I

.field private mIconSelected:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dolby/daxappUI/Profile;->mIconSelected:I

    iput p2, p0, Lcom/dolby/daxappUI/Profile;->mIconNormal:I

    iput p3, p0, Lcom/dolby/daxappUI/Profile;->mIconDisabled:I

    return-void
.end method


# virtual methods
.method public getIcon(ZZ)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/dolby/daxappUI/Profile;->mIconSelected:I

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/dolby/daxappUI/Profile;->mIconNormal:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/dolby/daxappUI/Profile;->mIconDisabled:I

    goto :goto_0
.end method

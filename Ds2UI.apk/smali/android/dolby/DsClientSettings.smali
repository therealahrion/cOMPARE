.class public Landroid/dolby/DsClientSettings;
.super Ljava/lang/Object;
.source "DsClientSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/DsClientSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/dolby/DsClientSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DsClientSettings"

.field public static final basicProfileParams:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isDialogEnhancerOn:Z

.field private isGeqOn:Z

.field private isHeadphoneVirtualizerOn:Z

.field private isSpeakerVirtualizerOn:Z

.field private isVolumeLevellerOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    .line 77
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "geon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "deon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "dvle"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "vdhe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "vspe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Landroid/dolby/DsClientSettings$1;

    invoke-direct {v0}, Landroid/dolby/DsClientSettings$1;-><init>()V

    sput-object v0, Landroid/dolby/DsClientSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    .line 120
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    .line 121
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    .line 122
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    .line 123
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p0, p1}, Landroid/dolby/DsClientSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 132
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 285
    if-ne p0, p1, :cond_4

    .line 287
    return v3

    .line 289
    :cond_4
    instance-of v1, p1, Landroid/dolby/DsClientSettings;

    if-eqz v1, :cond_2a

    move-object v0, p1

    .line 291
    nop

    nop

    .line 293
    .local v0, "anotherObject":Landroid/dolby/DsClientSettings;
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    iget-boolean v2, v0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    if-ne v1, v2, :cond_2a

    .line 294
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    iget-boolean v2, v0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    if-ne v1, v2, :cond_2a

    .line 295
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    iget-boolean v2, v0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    if-ne v1, v2, :cond_2a

    .line 296
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    iget-boolean v2, v0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    if-ne v1, v2, :cond_2a

    .line 297
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    iget-boolean v2, v0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    if-ne v1, v2, :cond_2a

    .line 299
    return v3

    .line 302
    .end local v0    # "anotherObject":Landroid/dolby/DsClientSettings;
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method public getDialogEnhancerOn()Z
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    return v0
.end method

.method public getGeqOn()Z
    .registers 2

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    return v0
.end method

.method public getHeadphoneVirtualizerOn()Z
    .registers 2

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    return v0
.end method

.method public getSpeakerVirtualizerOn()Z
    .registers 2

    .prologue
    .line 273
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    return v0
.end method

.method public getVolumeLevellerOn()Z
    .registers 2

    .prologue
    .line 233
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    if-eqz v1, :cond_24

    const/4 v1, 0x2

    :goto_6
    add-int/lit8 v0, v1, 0x0

    .line 315
    .local v0, "result":I
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    if-eqz v1, :cond_26

    const/4 v1, 0x4

    :goto_d
    add-int/2addr v0, v1

    .line 316
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    if-eqz v1, :cond_28

    const/16 v1, 0x8

    :goto_14
    add-int/2addr v0, v1

    .line 317
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    if-eqz v1, :cond_2a

    const/16 v1, 0x10

    :goto_1b
    add-int/2addr v0, v1

    .line 318
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    if-eqz v1, :cond_22

    const/16 v2, 0x20

    :cond_22
    add-int/2addr v0, v2

    .line 320
    return v0

    .end local v0    # "result":I
    :cond_24
    move v1, v2

    .line 314
    goto :goto_6

    .restart local v0    # "result":I
    :cond_26
    move v1, v2

    .line 315
    goto :goto_d

    :cond_28
    move v1, v2

    .line 316
    goto :goto_14

    :cond_2a
    move v1, v2

    .line 317
    goto :goto_1b
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 165
    const/4 v1, 0x5

    new-array v0, v1, [Z

    .line 167
    .local v0, "settings":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 169
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    .line 170
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    .line 171
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    .line 172
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    .line 173
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    .line 163
    return-void
.end method

.method public setDialogEnhancerOn(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    .line 201
    return-void
.end method

.method public setGeqOn(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    .line 181
    return-void
.end method

.method public setHeadphoneVirtualizerOn(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    .line 241
    return-void
.end method

.method public setSpeakerVirtualizerOn(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    .line 261
    return-void
.end method

.method public setVolumeLevellerOn(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    .line 221
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 146
    const/4 v1, 0x5

    new-array v0, v1, [Z

    .line 148
    .local v0, "settings":[Z
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    .line 149
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    .line 150
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    .line 151
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    .line 152
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 144
    return-void
.end method

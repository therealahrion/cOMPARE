.class public Lcom/dolby/api/DsProfileName;
.super Ljava/lang/Object;
.source "DsProfileName.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/api/DsProfileName$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dolby/api/DsProfileName;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DsProfileName"


# instance fields
.field private currentName_:Ljava/lang/String;

.field private defaultName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/dolby/api/DsProfileName$1;

    invoke-direct {v0}, Lcom/dolby/api/DsProfileName$1;-><init>()V

    sput-object v0, Lcom/dolby/api/DsProfileName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/dolby/api/DsProfileName;->readFromParcel(Landroid/os/Parcel;)V

    .line 83
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dolby/api/DsProfileName;->currentName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolby/api/DsProfileName;->defaultName_:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/api/DsProfileName;->currentName_:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/api/DsProfileName;->defaultName_:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/dolby/api/DsProfileName;->currentName_:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setDefaultName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/dolby/api/DsProfileName;->defaultName_:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolby/api/DsProfileName;->currentName_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/dolby/api/DsProfileName;->defaultName_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return-void
.end method

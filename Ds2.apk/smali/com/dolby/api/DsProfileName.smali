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


# instance fields
.field private currentName_:Ljava/lang/String;

.field private defaultName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dolby/api/DsProfileName$1;

    invoke-direct {v0}, Lcom/dolby/api/DsProfileName$1;-><init>()V

    sput-object v0, Lcom/dolby/api/DsProfileName;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/dolby/api/DsProfileName;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/api/DsProfileName;->currentName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/api/DsProfileName;->defaultName_:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/api/DsProfileName;->currentName_:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/api/DsProfileName;->defaultName_:Ljava/lang/String;

    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/api/DsProfileName;->currentName_:Ljava/lang/String;

    return-void
.end method

.method public setDefaultName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/api/DsProfileName;->defaultName_:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/api/DsProfileName;->currentName_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dolby/api/DsProfileName;->defaultName_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

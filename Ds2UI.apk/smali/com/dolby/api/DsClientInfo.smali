.class public Lcom/dolby/api/DsClientInfo;
.super Ljava/lang/Object;
.source "DsClientInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/api/DsClientInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dolby/api/DsClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DsClientInfo"


# instance fields
.field private mConnectionBridge:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Lcom/dolby/api/DsClientInfo$1;

    invoke-direct {v0}, Lcom/dolby/api/DsClientInfo$1;-><init>()V

    sput-object v0, Lcom/dolby/api/DsClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p0, p1}, Lcom/dolby/api/DsClientInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionBridge()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/dolby/api/DsClientInfo;->mConnectionBridge:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolby/api/DsClientInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/api/DsClientInfo;->mPackageName:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dolby/api/DsClientInfo;->mConnectionBridge:I

    .line 109
    return-void
.end method

.method public setConnectionBridge(I)V
    .registers 2
    .param p1, "connection"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/dolby/api/DsClientInfo;->mConnectionBridge:I

    .line 140
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/dolby/api/DsClientInfo;->mPackageName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dolby/api/DsClientInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lcom/dolby/api/DsClientInfo;->mConnectionBridge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void
.end method

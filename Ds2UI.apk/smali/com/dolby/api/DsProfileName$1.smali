.class final Lcom/dolby/api/DsProfileName$1;
.super Ljava/lang/Object;
.source "DsProfileName.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/api/DsProfileName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/dolby/api/DsProfileName;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/dolby/api/DsProfileName;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 52
    new-instance v0, Lcom/dolby/api/DsProfileName;

    invoke-direct {v0, p1}, Lcom/dolby/api/DsProfileName;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/dolby/api/DsProfileName$1;->createFromParcel(Landroid/os/Parcel;)Lcom/dolby/api/DsProfileName;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/dolby/api/DsProfileName;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 57
    new-array v0, p1, [Lcom/dolby/api/DsProfileName;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/dolby/api/DsProfileName$1;->newArray(I)[Lcom/dolby/api/DsProfileName;

    move-result-object v0

    return-object v0
.end method

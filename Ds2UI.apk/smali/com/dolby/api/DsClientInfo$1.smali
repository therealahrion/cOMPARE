.class final Lcom/dolby/api/DsClientInfo$1;
.super Ljava/lang/Object;
.source "DsClientInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/api/DsClientInfo;
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
        "Lcom/dolby/api/DsClientInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/dolby/api/DsClientInfo;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 54
    new-instance v0, Lcom/dolby/api/DsClientInfo;

    invoke-direct {v0, p1}, Lcom/dolby/api/DsClientInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/dolby/api/DsClientInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/dolby/api/DsClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/dolby/api/DsClientInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 59
    new-array v0, p1, [Lcom/dolby/api/DsClientInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/dolby/api/DsClientInfo$1;->newArray(I)[Lcom/dolby/api/DsClientInfo;

    move-result-object v0

    return-object v0
.end method

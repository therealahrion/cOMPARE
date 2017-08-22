.class public abstract Lcom/dolby/api/IDsCallbacks$Stub;
.super Landroid/os/Binder;
.source "IDsCallbacks.java"

# interfaces
.implements Lcom/dolby/api/IDsCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/api/IDsCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/api/IDsCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/dolby/api/IDsCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/dolby/api/IDsCallbacks;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.dolby.api.IDsCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/dolby/api/IDsCallbacks;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/dolby/api/IDsCallbacks;

    return-object v0

    :cond_1
    new-instance v1, Lcom/dolby/api/IDsCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/dolby/api/IDsCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_1
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    move v2, v8

    :cond_0
    invoke-virtual {p0, v2}, Lcom/dolby/api/IDsCallbacks$Stub;->onDsOn(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_2
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v2, v8

    :cond_1
    invoke-virtual {p0, v2}, Lcom/dolby/api/IDsCallbacks$Stub;->onDsSuspended(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_3
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolby/api/IDsCallbacks$Stub;->onProfileSelected(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_4
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolby/api/IDsCallbacks$Stub;->onProfileSettingsChanged(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_5
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/dolby/api/IDsCallbacks$Stub;->onVisualizerUpdated([F[F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_6
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    move v2, v8

    :cond_2
    invoke-virtual {p0, v2}, Lcom/dolby/api/IDsCallbacks$Stub;->onVisualizerSuspended(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_7
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/dolby/api/IDsCallbacks$Stub;->onAccessForceReleased(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_8
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dolby/api/IDsCallbacks$Stub;->onAccessAvailable()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_9
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/dolby/api/IDsCallbacks$Stub;->onAccessRequested(Ljava/lang/String;I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3

    move v2, v8

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_a
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/dolby/api/IDsCallbacks$Stub;->onProfileNameChanged(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_b
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dolby/api/IDsCallbacks$Stub;->onLegacyClientSetting()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_4

    move v2, v8

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

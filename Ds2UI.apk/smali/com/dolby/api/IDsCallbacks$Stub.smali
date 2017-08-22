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


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.dolby.api.IDsCallbacks"

.field static final TRANSACTION_onAccessAvailable:I = 0x8

.field static final TRANSACTION_onAccessForceReleased:I = 0x7

.field static final TRANSACTION_onAccessRequested:I = 0x9

.field static final TRANSACTION_onDsOn:I = 0x1

.field static final TRANSACTION_onDsSuspended:I = 0x2

.field static final TRANSACTION_onLegacyClientSetting:I = 0xb

.field static final TRANSACTION_onProfileNameChanged:I = 0xa

.field static final TRANSACTION_onProfileSelected:I = 0x3

.field static final TRANSACTION_onProfileSettingsChanged:I = 0x4

.field static final TRANSACTION_onVisualizerSuspended:I = 0x6

.field static final TRANSACTION_onVisualizerUpdated:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/dolby/api/IDsCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_4

    .line 30
    return-object v1

    .line 32
    :cond_4
    const-string/jumbo v1, "com.dolby.api.IDsCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/dolby/api/IDsCallbacks;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Lcom/dolby/api/IDsCallbacks;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/dolby/api/IDsCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/dolby/api/IDsCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_ec

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 48
    :sswitch_a
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v8

    .line 53
    :sswitch_11
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1e

    move v2, v8

    .line 56
    .local v2, "_arg0":Z
    :cond_1e
    invoke-virtual {p0, v2}, Lcom/dolby/api/IDsCallbacks$Stub;->onDsOn(Z)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v8

    .line 62
    .end local v2    # "_arg0":Z
    :sswitch_25
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_32

    move v2, v8

    .line 65
    .restart local v2    # "_arg0":Z
    :cond_32
    invoke-virtual {p0, v2}, Lcom/dolby/api/IDsCallbacks$Stub;->onDsSuspended(Z)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v8

    .line 71
    .end local v2    # "_arg0":Z
    :sswitch_39
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/dolby/api/IDsCallbacks$Stub;->onProfileSelected(I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v8

    .line 80
    .end local v0    # "_arg0":I
    :sswitch_4a
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/dolby/api/IDsCallbacks$Stub;->onProfileSettingsChanged(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v8

    .line 89
    .end local v0    # "_arg0":I
    :sswitch_5b
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 93
    .local v3, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    .line 94
    .local v6, "_arg1":[F
    invoke-virtual {p0, v3, v6}, Lcom/dolby/api/IDsCallbacks$Stub;->onVisualizerUpdated([F[F)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v8

    .line 100
    .end local v3    # "_arg0":[F
    .end local v6    # "_arg1":[F
    :sswitch_70
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7d

    move v2, v8

    .line 103
    .restart local v2    # "_arg0":Z
    :cond_7d
    invoke-virtual {p0, v2}, Lcom/dolby/api/IDsCallbacks$Stub;->onVisualizerSuspended(Z)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    return v8

    .line 109
    .end local v2    # "_arg0":Z
    :sswitch_84
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .local v4, "_arg1":I
    invoke-virtual {p0, v1, v4}, Lcom/dolby/api/IDsCallbacks$Stub;->onAccessForceReleased(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    return v8

    .line 120
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_99
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/dolby/api/IDsCallbacks$Stub;->onAccessAvailable()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v8

    .line 127
    :sswitch_a6
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 132
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v1, v4}, Lcom/dolby/api/IDsCallbacks$Stub;->onAccessRequested(Ljava/lang/String;I)Z

    move-result v7

    .line 133
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v7, :cond_be

    move v2, v8

    :cond_be
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return v8

    .line 139
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v7    # "_result":Z
    :sswitch_c2
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v5}, Lcom/dolby/api/IDsCallbacks$Stub;->onProfileNameChanged(ILjava/lang/String;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v8

    .line 150
    .end local v0    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_d7
    const-string/jumbo v9, "com.dolby.api.IDsCallbacks"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/dolby/api/IDsCallbacks$Stub;->onLegacyClientSetting()Z

    move-result v7

    .line 152
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v7, :cond_e7

    move v2, v8

    :cond_e7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return v8

    .line 44
    nop

    :sswitch_data_ec
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_25
        0x3 -> :sswitch_39
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_70
        0x7 -> :sswitch_84
        0x8 -> :sswitch_99
        0x9 -> :sswitch_a6
        0xa -> :sswitch_c2
        0xb -> :sswitch_d7
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

.class public abstract Lcom/dolby/api/IDs$Stub;
.super Landroid/os/Binder;
.source "IDs.java"

# interfaces
.implements Lcom/dolby/api/IDs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/api/IDs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/api/IDs$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.dolby.api.IDs"

.field static final TRANSACTION_iAbandonAccessRight:I = 0x1a

.field static final TRANSACTION_iCheckAccessRight:I = 0x1b

.field static final TRANSACTION_iGetDapLibraryVersion:I = 0xd

.field static final TRANSACTION_iGetDsServiceVersion:I = 0xc

.field static final TRANSACTION_iGetIeqPreset:I = 0x12

.field static final TRANSACTION_iGetIeqPresetCount:I = 0x13

.field static final TRANSACTION_iGetMonoSpeaker:I = 0x1d

.field static final TRANSACTION_iGetOffType:I = 0xb

.field static final TRANSACTION_iGetParamLength:I = 0x1c

.field static final TRANSACTION_iGetParameter:I = 0x10

.field static final TRANSACTION_iGetProfile:I = 0x15

.field static final TRANSACTION_iGetProfileCount:I = 0x18

.field static final TRANSACTION_iGetProfileEndpointParameter:I = 0x21

.field static final TRANSACTION_iGetProfileModified:I = 0x17

.field static final TRANSACTION_iGetProfileName:I = 0x1f

.field static final TRANSACTION_iGetProfileParameter:I = 0x20

.field static final TRANSACTION_iGetProfilePortParameter:I = 0x22

.field static final TRANSACTION_iGetState:I = 0xa

.field static final TRANSACTION_iGetTuningParameter:I = 0x23

.field static final TRANSACTION_iGetUdcLibraryVersion:I = 0xe

.field static final TRANSACTION_iRegisterCallback:I = 0x7

.field static final TRANSACTION_iRegisterDeathHandler:I = 0x3

.field static final TRANSACTION_iRegisterDsAccess:I = 0x5

.field static final TRANSACTION_iRegisterVisualizerData:I = 0x1

.field static final TRANSACTION_iRequestAccessRight:I = 0x19

.field static final TRANSACTION_iResetProfile:I = 0x16

.field static final TRANSACTION_iSetIeqPreset:I = 0x11

.field static final TRANSACTION_iSetParameter:I = 0xf

.field static final TRANSACTION_iSetProfile:I = 0x14

.field static final TRANSACTION_iSetProfileName:I = 0x1e

.field static final TRANSACTION_iSetState:I = 0x9

.field static final TRANSACTION_iUnregisterCallback:I = 0x8

.field static final TRANSACTION_iUnregisterDeathHandler:I = 0x4

.field static final TRANSACTION_iUnregisterDsAccess:I = 0x6

.field static final TRANSACTION_iUnregisterVisualizerData:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.dolby.api.IDs"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/dolby/api/IDs;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_4

    .line 24
    return-object v1

    .line 26
    :cond_4
    const-string/jumbo v1, "com.dolby.api.IDs"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/dolby/api/IDs;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/dolby/api/IDs;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/dolby/api/IDs$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/dolby/api/IDs$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 36
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
    .line 38
    sparse-switch p1, :sswitch_data_5e4

    .line 591
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 42
    :sswitch_8
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x1

    return v3

    .line 47
    :sswitch_12
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 50
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dolby/api/IDs$Stub;->iRegisterVisualizerData(I)V

    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    const/4 v3, 0x1

    return v3

    .line 56
    .end local v4    # "_arg0":I
    :sswitch_28
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 59
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dolby/api/IDs$Stub;->iUnregisterVisualizerData(I)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/4 v3, 0x1

    return v3

    .line 65
    .end local v4    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 69
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/dolby/api/IDsDeathHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/dolby/api/IDsDeathHandler;

    move-result-object v16

    .line 70
    .local v16, "_arg1":Lcom/dolby/api/IDsDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/dolby/api/IDs$Stub;->iRegisterDeathHandler(ILcom/dolby/api/IDsDeathHandler;)V

    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v3, 0x1

    return v3

    .line 76
    .end local v4    # "_arg0":I
    .end local v16    # "_arg1":Lcom/dolby/api/IDsDeathHandler;
    :sswitch_5e
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 80
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/dolby/api/IDsDeathHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/dolby/api/IDsDeathHandler;

    move-result-object v16

    .line 81
    .restart local v16    # "_arg1":Lcom/dolby/api/IDsDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/dolby/api/IDs$Stub;->iUnregisterDeathHandler(ILcom/dolby/api/IDsDeathHandler;)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    const/4 v3, 0x1

    return v3

    .line 87
    .end local v4    # "_arg0":I
    .end local v16    # "_arg1":Lcom/dolby/api/IDsDeathHandler;
    :sswitch_7e
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a4

    .line 92
    sget-object v3, Lcom/dolby/api/DsClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/dolby/api/DsClientInfo;

    .line 97
    :goto_9a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/dolby/api/IDs$Stub;->iRegisterDsAccess(ILcom/dolby/api/DsClientInfo;)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v3, 0x1

    return v3

    .line 95
    :cond_a4
    const/4 v14, 0x0

    .local v14, "_arg1":Lcom/dolby/api/DsClientInfo;
    goto :goto_9a

    .line 103
    .end local v4    # "_arg0":I
    .end local v14    # "_arg1":Lcom/dolby/api/DsClientInfo;
    :sswitch_a6
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dolby/api/IDs$Stub;->iUnregisterDsAccess(I)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v3, 0x1

    return v3

    .line 112
    .end local v4    # "_arg0":I
    :sswitch_bc
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 116
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/dolby/api/IDsCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/dolby/api/IDsCallbacks;

    move-result-object v15

    .line 118
    .local v15, "_arg1":Lcom/dolby/api/IDsCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 119
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15, v6}, Lcom/dolby/api/IDs$Stub;->iRegisterCallback(ILcom/dolby/api/IDsCallbacks;I)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v3, 0x1

    return v3

    .line 125
    .end local v4    # "_arg0":I
    .end local v6    # "_arg2":I
    .end local v15    # "_arg1":Lcom/dolby/api/IDsCallbacks;
    :sswitch_de
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 129
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/dolby/api/IDsCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/dolby/api/IDsCallbacks;

    move-result-object v15

    .line 131
    .restart local v15    # "_arg1":Lcom/dolby/api/IDsCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 132
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15, v6}, Lcom/dolby/api/IDs$Stub;->iUnregisterCallback(ILcom/dolby/api/IDsCallbacks;I)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v3, 0x1

    return v3

    .line 138
    .end local v4    # "_arg0":I
    .end local v6    # "_arg2":I
    .end local v15    # "_arg1":Lcom/dolby/api/IDsCallbacks;
    :sswitch_100
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 144
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12c

    const/16 v22, 0x1

    .line 145
    .local v22, "_arg2":Z
    :goto_118
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v4, v5, v1}, Lcom/dolby/api/IDs$Stub;->iSetState(IIZ)I

    move-result v29

    .line 146
    .local v29, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v3, 0x1

    return v3

    .line 144
    .end local v22    # "_arg2":Z
    .end local v29    # "_result":I
    :cond_12c
    const/16 v22, 0x0

    goto :goto_118

    .line 152
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_12f
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 156
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 157
    .local v19, "_arg1_length":I
    if-gez v19, :cond_15e

    .line 158
    const/16 v18, 0x0

    .line 163
    :goto_143
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/dolby/api/IDs$Stub;->iGetState(I[I)I

    move-result v29

    .line 164
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 167
    const/4 v3, 0x1

    return v3

    .line 161
    .end local v29    # "_result":I
    :cond_15e
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .local v18, "_arg1":[I
    goto :goto_143

    .line 171
    .end local v4    # "_arg0":I
    .end local v18    # "_arg1":[I
    .end local v19    # "_arg1_length":I
    :sswitch_165
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 174
    .local v13, "_arg0_length":I
    if-gez v13, :cond_18b

    .line 175
    const/4 v10, 0x0

    .line 180
    :goto_174
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/dolby/api/IDs$Stub;->iGetOffType([I)I

    move-result v29

    .line 181
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 184
    const/4 v3, 0x1

    return v3

    .line 178
    .end local v29    # "_result":I
    :cond_18b
    new-array v10, v13, [I

    .local v10, "_arg0":[I
    goto :goto_174

    .line 188
    .end local v10    # "_arg0":[I
    .end local v13    # "_arg0_length":I
    :sswitch_18e
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 191
    .restart local v13    # "_arg0_length":I
    if-gez v13, :cond_1b4

    .line 192
    const/4 v11, 0x0

    .line 197
    :goto_19d
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/dolby/api/IDs$Stub;->iGetDsServiceVersion([Ljava/lang/String;)I

    move-result v29

    .line 198
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 201
    const/4 v3, 0x1

    return v3

    .line 195
    .end local v29    # "_result":I
    :cond_1b4
    new-array v11, v13, [Ljava/lang/String;

    .local v11, "_arg0":[Ljava/lang/String;
    goto :goto_19d

    .line 205
    .end local v11    # "_arg0":[Ljava/lang/String;
    .end local v13    # "_arg0_length":I
    :sswitch_1b7
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 208
    .restart local v13    # "_arg0_length":I
    if-gez v13, :cond_1dd

    .line 209
    const/4 v11, 0x0

    .line 214
    :goto_1c6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/dolby/api/IDs$Stub;->iGetDapLibraryVersion([Ljava/lang/String;)I

    move-result v29

    .line 215
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 218
    const/4 v3, 0x1

    return v3

    .line 212
    .end local v29    # "_result":I
    :cond_1dd
    new-array v11, v13, [Ljava/lang/String;

    .restart local v11    # "_arg0":[Ljava/lang/String;
    goto :goto_1c6

    .line 222
    .end local v11    # "_arg0":[Ljava/lang/String;
    .end local v13    # "_arg0_length":I
    :sswitch_1e0
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 225
    .restart local v13    # "_arg0_length":I
    if-gez v13, :cond_206

    .line 226
    const/4 v11, 0x0

    .line 231
    :goto_1ef
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/dolby/api/IDs$Stub;->iGetUdcLibraryVersion([Ljava/lang/String;)I

    move-result v29

    .line 232
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 235
    const/4 v3, 0x1

    return v3

    .line 229
    .end local v29    # "_result":I
    :cond_206
    new-array v11, v13, [Ljava/lang/String;

    .restart local v11    # "_arg0":[Ljava/lang/String;
    goto :goto_1ef

    .line 239
    .end local v11    # "_arg0":[Ljava/lang/String;
    .end local v13    # "_arg0_length":I
    :sswitch_209
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 243
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 245
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 247
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 249
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .local v8, "_arg4":[I
    move-object/from16 v3, p0

    .line 250
    invoke-virtual/range {v3 .. v8}, Lcom/dolby/api/IDs$Stub;->iSetParameter(IIII[I)I

    move-result v29

    .line 251
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v3, 0x1

    return v3

    .line 257
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":[I
    .end local v29    # "_result":I
    :sswitch_237
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 261
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 263
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 265
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 266
    .local v28, "_arg3_length":I
    if-gez v28, :cond_26e

    .line 267
    const/16 v27, 0x0

    .line 272
    :goto_253
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/dolby/api/IDs$Stub;->iGetParameter(III[I)I

    move-result v29

    .line 273
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 276
    const/4 v3, 0x1

    return v3

    .line 270
    .end local v29    # "_result":I
    :cond_26e
    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .local v27, "_arg3":[I
    goto :goto_253

    .line 280
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v27    # "_arg3":[I
    .end local v28    # "_arg3_length":I
    :sswitch_275
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 284
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 286
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 287
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/dolby/api/IDs$Stub;->iSetIeqPreset(III)I

    move-result v29

    .line 288
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v3, 0x1

    return v3

    .line 294
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v29    # "_result":I
    :sswitch_29b
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 298
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 299
    .restart local v19    # "_arg1_length":I
    if-gez v19, :cond_2ca

    .line 300
    const/16 v18, 0x0

    .line 305
    :goto_2af
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/dolby/api/IDs$Stub;->iGetIeqPreset(I[I)I

    move-result v29

    .line 306
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 309
    const/4 v3, 0x1

    return v3

    .line 303
    .end local v29    # "_result":I
    :cond_2ca
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .restart local v18    # "_arg1":[I
    goto :goto_2af

    .line 313
    .end local v4    # "_arg0":I
    .end local v18    # "_arg1":[I
    .end local v19    # "_arg1_length":I
    :sswitch_2d1
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 317
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 318
    .restart local v19    # "_arg1_length":I
    if-gez v19, :cond_300

    .line 319
    const/16 v18, 0x0

    .line 324
    :goto_2e5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/dolby/api/IDs$Stub;->iGetIeqPresetCount(I[I)I

    move-result v29

    .line 325
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 328
    const/4 v3, 0x1

    return v3

    .line 322
    .end local v29    # "_result":I
    :cond_300
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .restart local v18    # "_arg1":[I
    goto :goto_2e5

    .line 332
    .end local v4    # "_arg0":I
    .end local v18    # "_arg1":[I
    .end local v19    # "_arg1_length":I
    :sswitch_307
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 336
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 338
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 339
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/dolby/api/IDs$Stub;->iSetProfile(III)I

    move-result v29

    .line 340
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v3, 0x1

    return v3

    .line 346
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v29    # "_result":I
    :sswitch_32d
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 350
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 351
    .restart local v19    # "_arg1_length":I
    if-gez v19, :cond_35c

    .line 352
    const/16 v18, 0x0

    .line 357
    :goto_341
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/dolby/api/IDs$Stub;->iGetProfile(I[I)I

    move-result v29

    .line 358
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 361
    const/4 v3, 0x1

    return v3

    .line 355
    .end local v29    # "_result":I
    :cond_35c
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .restart local v18    # "_arg1":[I
    goto :goto_341

    .line 365
    .end local v4    # "_arg0":I
    .end local v18    # "_arg1":[I
    .end local v19    # "_arg1_length":I
    :sswitch_363
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 369
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 371
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 372
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/dolby/api/IDs$Stub;->iResetProfile(III)I

    move-result v29

    .line 373
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v3, 0x1

    return v3

    .line 379
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v29    # "_result":I
    :sswitch_389
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 383
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 385
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 386
    .local v26, "_arg2_length":I
    if-gez v26, :cond_3bc

    .line 387
    const/16 v25, 0x0

    .line 392
    :goto_3a1
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v5, v1}, Lcom/dolby/api/IDs$Stub;->iGetProfileModified(II[Z)I

    move-result v29

    .line 393
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 396
    const/4 v3, 0x1

    return v3

    .line 390
    .end local v29    # "_result":I
    :cond_3bc
    move/from16 v0, v26

    new-array v0, v0, [Z

    move-object/from16 v25, v0

    .local v25, "_arg2":[Z
    goto :goto_3a1

    .line 400
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v25    # "_arg2":[Z
    .end local v26    # "_arg2_length":I
    :sswitch_3c3
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 404
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 405
    .restart local v19    # "_arg1_length":I
    if-gez v19, :cond_3f2

    .line 406
    const/16 v18, 0x0

    .line 411
    :goto_3d7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/dolby/api/IDs$Stub;->iGetProfileCount(I[I)I

    move-result v29

    .line 412
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 415
    const/4 v3, 0x1

    return v3

    .line 409
    .end local v29    # "_result":I
    :cond_3f2
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .restart local v18    # "_arg1":[I
    goto :goto_3d7

    .line 419
    .end local v4    # "_arg0":I
    .end local v18    # "_arg1":[I
    .end local v19    # "_arg1_length":I
    :sswitch_3f9
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 423
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 424
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/dolby/api/IDs$Stub;->iRequestAccessRight(II)I

    move-result v29

    .line 425
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v3, 0x1

    return v3

    .line 431
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v29    # "_result":I
    :sswitch_41b
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 435
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 436
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/dolby/api/IDs$Stub;->iAbandonAccessRight(II)I

    move-result v29

    .line 437
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v3, 0x1

    return v3

    .line 443
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v29    # "_result":I
    :sswitch_43d
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 447
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 449
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 450
    .restart local v26    # "_arg2_length":I
    if-gez v26, :cond_470

    .line 451
    const/16 v23, 0x0

    .line 456
    :goto_455
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v5, v1}, Lcom/dolby/api/IDs$Stub;->iCheckAccessRight(II[I)I

    move-result v29

    .line 457
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 460
    const/4 v3, 0x1

    return v3

    .line 454
    .end local v29    # "_result":I
    :cond_470
    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .local v23, "_arg2":[I
    goto :goto_455

    .line 464
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v23    # "_arg2":[I
    .end local v26    # "_arg2_length":I
    :sswitch_477
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 468
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 469
    .restart local v19    # "_arg1_length":I
    if-gez v19, :cond_4a6

    .line 470
    const/16 v18, 0x0

    .line 475
    :goto_48b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/dolby/api/IDs$Stub;->iGetParamLength(I[I)I

    move-result v29

    .line 476
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 479
    const/4 v3, 0x1

    return v3

    .line 473
    .end local v29    # "_result":I
    :cond_4a6
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .restart local v18    # "_arg1":[I
    goto :goto_48b

    .line 483
    .end local v4    # "_arg0":I
    .end local v18    # "_arg1":[I
    .end local v19    # "_arg1_length":I
    :sswitch_4ad
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 486
    .restart local v13    # "_arg0_length":I
    if-gez v13, :cond_4d3

    .line 487
    const/4 v12, 0x0

    .line 492
    :goto_4bc
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/dolby/api/IDs$Stub;->iGetMonoSpeaker([Z)I

    move-result v29

    .line 493
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 496
    const/4 v3, 0x1

    return v3

    .line 490
    .end local v29    # "_result":I
    :cond_4d3
    new-array v12, v13, [Z

    .local v12, "_arg0":[Z
    goto :goto_4bc

    .line 500
    .end local v12    # "_arg0":[Z
    .end local v13    # "_arg0_length":I
    :sswitch_4d6
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 504
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 506
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_50a

    .line 507
    sget-object v3, Lcom/dolby/api/DsProfileName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/dolby/api/DsProfileName;

    .line 512
    :goto_4f6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v5, v1}, Lcom/dolby/api/IDs$Stub;->iSetProfileName(IILcom/dolby/api/DsProfileName;)I

    move-result v29

    .line 513
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v3, 0x1

    return v3

    .line 510
    .end local v29    # "_result":I
    :cond_50a
    const/16 v20, 0x0

    .local v20, "_arg2":Lcom/dolby/api/DsProfileName;
    goto :goto_4f6

    .line 519
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v20    # "_arg2":Lcom/dolby/api/DsProfileName;
    :sswitch_50d
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 523
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 525
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 526
    .restart local v26    # "_arg2_length":I
    if-gez v26, :cond_541

    .line 527
    const/16 v24, 0x0

    .line 532
    :goto_525
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1}, Lcom/dolby/api/IDs$Stub;->iGetProfileName(II[Lcom/dolby/api/DsProfileName;)I

    move-result v29

    .line 533
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 536
    const/4 v3, 0x1

    return v3

    .line 530
    .end local v29    # "_result":I
    :cond_541
    move/from16 v0, v26

    new-array v0, v0, [Lcom/dolby/api/DsProfileName;

    move-object/from16 v24, v0

    .local v24, "_arg2":[Lcom/dolby/api/DsProfileName;
    goto :goto_525

    .line 540
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v24    # "_arg2":[Lcom/dolby/api/DsProfileName;
    .end local v26    # "_arg2_length":I
    :sswitch_548
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 544
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 545
    .local v17, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/dolby/api/IDs$Stub;->iGetProfileParameter(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v30

    .line 546
    .local v30, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 548
    const/4 v3, 0x1

    return v3

    .line 552
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":[I
    :sswitch_56c
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 556
    .restart local v9    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 558
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 559
    .local v21, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Lcom/dolby/api/IDs$Stub;->iGetProfileEndpointParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v30

    .line 560
    .restart local v30    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 562
    const/4 v3, 0x1

    return v3

    .line 566
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg2":Ljava/lang/String;
    .end local v30    # "_result":[I
    :sswitch_596
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 570
    .restart local v9    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 572
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 573
    .restart local v21    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Lcom/dolby/api/IDs$Stub;->iGetProfilePortParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v30

    .line 574
    .restart local v30    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 576
    const/4 v3, 0x1

    return v3

    .line 580
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg2":Ljava/lang/String;
    .end local v30    # "_result":[I
    :sswitch_5c0
    const-string/jumbo v3, "com.dolby.api.IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 584
    .restart local v9    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 585
    .restart local v17    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/dolby/api/IDs$Stub;->iGetTuningParameter(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v30

    .line 586
    .restart local v30    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 588
    const/4 v3, 0x1

    return v3

    .line 38
    :sswitch_data_5e4
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_28
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_7e
        0x6 -> :sswitch_a6
        0x7 -> :sswitch_bc
        0x8 -> :sswitch_de
        0x9 -> :sswitch_100
        0xa -> :sswitch_12f
        0xb -> :sswitch_165
        0xc -> :sswitch_18e
        0xd -> :sswitch_1b7
        0xe -> :sswitch_1e0
        0xf -> :sswitch_209
        0x10 -> :sswitch_237
        0x11 -> :sswitch_275
        0x12 -> :sswitch_29b
        0x13 -> :sswitch_2d1
        0x14 -> :sswitch_307
        0x15 -> :sswitch_32d
        0x16 -> :sswitch_363
        0x17 -> :sswitch_389
        0x18 -> :sswitch_3c3
        0x19 -> :sswitch_3f9
        0x1a -> :sswitch_41b
        0x1b -> :sswitch_43d
        0x1c -> :sswitch_477
        0x1d -> :sswitch_4ad
        0x1e -> :sswitch_4d6
        0x1f -> :sswitch_50d
        0x20 -> :sswitch_548
        0x21 -> :sswitch_56c
        0x22 -> :sswitch_596
        0x23 -> :sswitch_5c0
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

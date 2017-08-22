.class public Landroid/dolby/DsClient;
.super Ljava/lang/Object;
.source "DsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/DsClient$1;,
        Landroid/dolby/DsClient$2;,
        Landroid/dolby/DsClient$3;,
        Landroid/dolby/DsClient$4;
    }
.end annotation


# static fields
.field private static final INT_OFF:I = 0x0

.field private static final INT_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DsClient"

.field private static lock_:Ljava/lang/Object;

.field private static final profileParams_:[Ljava/lang/String;


# instance fields
.field private activityListener_:Landroid/dolby/IDsClientEvents;

.field private callbacks_:Lcom/dolby/api/IDsCallbacks;

.field private connection_:Landroid/content/ServiceConnection;

.field private deathHandler_:Lcom/dolby/api/IDsDeathHandler;

.field private ds_:Lcom/dolby/api/IDs;

.field private handler_:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;
    .registers 2

    iget-object v0, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    return-object v0
.end method

.method static synthetic -get1(Landroid/dolby/DsClient;)Lcom/dolby/api/IDsCallbacks;
    .registers 2

    iget-object v0, p0, Landroid/dolby/DsClient;->callbacks_:Lcom/dolby/api/IDsCallbacks;

    return-object v0
.end method

.method static synthetic -get2(Landroid/dolby/DsClient;)Lcom/dolby/api/IDsDeathHandler;
    .registers 2

    iget-object v0, p0, Landroid/dolby/DsClient;->deathHandler_:Lcom/dolby/api/IDsDeathHandler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/dolby/DsClient;)Lcom/dolby/api/IDs;
    .registers 2

    iget-object v0, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    return-object v0
.end method

.method static synthetic -get4(Landroid/dolby/DsClient;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Landroid/dolby/DsClient;Lcom/dolby/api/IDs;)Lcom/dolby/api/IDs;
    .registers 2

    iput-object p1, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "geon"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "deon"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "dvle"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "vdhe"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "vspe"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/dolby/DsClient;->profileParams_:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    .line 84
    iput-object v0, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    .line 1195
    new-instance v0, Landroid/dolby/DsClient$1;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$1;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    .line 1242
    new-instance v0, Landroid/dolby/DsClient$2;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$2;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->callbacks_:Lcom/dolby/api/IDsCallbacks;

    .line 1315
    new-instance v0, Landroid/dolby/DsClient$3;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$3;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->deathHandler_:Lcom/dolby/api/IDsDeathHandler;

    .line 1328
    new-instance v0, Landroid/dolby/DsClient$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/dolby/DsClient$4;-><init>(Landroid/dolby/DsClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public static getGeqBandGainLowerBound()F
    .registers 2

    .prologue
    .line 1183
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in getGeqBandGainLowerBound"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGeqBandGainUpperBound()F
    .registers 2

    .prologue
    .line 1187
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in getGeqBandGainUpperBound"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private translateErrorCodeToExceptions(I)V
    .registers 3
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 125
    if-ltz p1, :cond_3

    .line 126
    return-void

    .line 129
    :cond_3
    packed-switch p1, :pswitch_data_24

    .line 140
    :pswitch_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 132
    :pswitch_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 134
    :pswitch_12
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 136
    :pswitch_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 138
    :pswitch_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 129
    :pswitch_data_24
    .packed-switch -0x2
        :pswitch_12
        :pswitch_c
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_18
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public bindDsService(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1063
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "bindDsService()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-static {p1}, Lcom/dolby/api/DsCommon;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1067
    .local v0, "bindIntent":Landroid/content/Intent;
    if-eqz v0, :cond_17

    .line 1069
    iget-object v1, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1

    .line 1073
    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method public getBandCount()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in getBandCount"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBandFrequencies()[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in getBandFrequencies"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDsApParam(Ljava/lang/String;)[I
    .registers 15
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 979
    const/4 v9, 0x0

    .line 981
    .local v9, "values":[I
    iget-object v10, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v10, :cond_89

    .line 985
    const/4 v10, 0x1

    :try_start_6
    new-array v6, v10, [I

    .line 986
    .local v6, "paramInt":[I
    invoke-static {p1}, Lcom/dolby/api/DsParams;->FromString(Ljava/lang/String;)Lcom/dolby/api/DsParams;

    move-result-object v0

    .line 987
    .local v0, "dsParam":Lcom/dolby/api/DsParams;
    if-nez v0, :cond_1f

    .line 989
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_14} :catch_50
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_5e

    .line 1016
    .end local v0    # "dsParam":Lcom/dolby/api/DsParams;
    .end local v6    # "paramInt":[I
    .end local v9    # "values":[I
    :catch_14
    move-exception v1

    .line 1017
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "DsClient"

    const-string/jumbo v11, "RemoteException in getDsApParam"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    throw v1

    .line 991
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "dsParam":Lcom/dolby/api/DsParams;
    .restart local v6    # "paramInt":[I
    .restart local v9    # "values":[I
    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v5

    .line 993
    .local v5, "paramId":I
    iget-object v10, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    invoke-interface {v10, v5, v6}, Lcom/dolby/api/IDs;->iGetParamLength(I[I)I

    move-result v4

    .line 994
    .local v4, "error":I
    if-nez v4, :cond_3a

    .line 996
    const/4 v10, 0x1

    new-array v8, v10, [I

    .line 997
    .local v8, "profileInt":[I
    iget-object v10, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v8}, Lcom/dolby/api/IDs;->iGetProfile(I[I)I

    move-result v4

    .line 998
    if-eqz v4, :cond_3b

    .line 1000
    invoke-direct {p0, v4}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 1037
    .end local v8    # "profileInt":[I
    .end local v9    # "values":[I
    :cond_3a
    :goto_3a
    return-object v9

    .line 1004
    .restart local v8    # "profileInt":[I
    .restart local v9    # "values":[I
    :cond_3b
    const/4 v10, 0x0

    aget v7, v8, v10

    .line 1005
    .local v7, "profile":I
    const/4 v10, 0x0

    aget v10, v6, v10

    new-array v9, v10, [I

    .line 1007
    .local v9, "values":[I
    iget-object v10, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v7, v5, v9}, Lcom/dolby/api/IDs;->iGetParameter(III[I)I

    move-result v4

    .line 1008
    if-eqz v4, :cond_3a

    .line 1010
    invoke-direct {p0, v4}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4f} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_4f} :catch_50
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4f} :catch_5e

    goto :goto_3a

    .line 1021
    .end local v0    # "dsParam":Lcom/dolby/api/DsParams;
    .end local v4    # "error":I
    .end local v5    # "paramId":I
    .end local v6    # "paramInt":[I
    .end local v7    # "profile":I
    .end local v8    # "profileInt":[I
    .end local v9    # "values":[I
    :catch_50
    move-exception v3

    .line 1022
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v10, "DsClient"

    const-string/jumbo v11, "NullPointerException in getDsApParam"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1024
    throw v3

    .line 1027
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_5e
    move-exception v2

    .line 1028
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "DsClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " in getDsApParam"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1030
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "Exception in getDsApParam"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1035
    .end local v2    # "e":Ljava/lang/Exception;
    .local v9, "values":[I
    :cond_89
    new-instance v10, Ljava/lang/NullPointerException;

    const-string/jumbo v11, "NullPointerException in getDsApParam"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public getDsApVersion()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 790
    const-string/jumbo v5, ""

    .line 792
    .local v5, "version":Ljava/lang/String;
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v6, :cond_5e

    .line 796
    const/4 v6, 0x1

    :try_start_8
    new-array v4, v6, [Ljava/lang/String;

    .line 797
    .local v4, "paramString":[Ljava/lang/String;
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    invoke-interface {v6, v4}, Lcom/dolby/api/IDs;->iGetDapLibraryVersion([Ljava/lang/String;)I

    move-result v3

    .line 798
    .local v3, "error":I
    if-eqz v3, :cond_16

    .line 800
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 829
    :goto_15
    return-object v5

    .line 804
    :cond_16
    const/4 v6, 0x0

    aget-object v5, v4, v6
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_19} :catch_45
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    goto :goto_15

    .line 819
    .end local v3    # "error":I
    .end local v4    # "paramString":[Ljava/lang/String;
    :catch_1a
    move-exception v1

    .line 820
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getDsApVersion"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 822
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getDsApVersion"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 813
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_45
    move-exception v2

    .line 814
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getDsApVersion"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 816
    throw v2

    .line 808
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_53
    move-exception v0

    .line 809
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getDsApVersion"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    throw v0

    .line 827
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5e
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "NullPointerException in getDsApVersion"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getDsOn()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 281
    const/4 v5, 0x0

    .line 283
    .local v5, "value":Z
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v6, :cond_63

    .line 287
    const/4 v6, 0x1

    :try_start_7
    new-array v4, v6, [I

    .line 288
    .local v4, "paramInt":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lcom/dolby/api/IDs;->iGetState(I[I)I

    move-result v3

    .line 289
    .local v3, "error":I
    if-eqz v3, :cond_16

    .line 291
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 320
    :goto_15
    return v5

    .line 295
    :cond_16
    const/4 v6, 0x0

    aget v6, v4, v6
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_58
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_19} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1f

    if-ne v6, v8, :cond_1d

    const/4 v5, 0x1

    goto :goto_15

    :cond_1d
    const/4 v5, 0x0

    goto :goto_15

    .line 310
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :catch_1f
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getDsOn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 313
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getDsOn"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 304
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4a
    move-exception v2

    .line 305
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getDsOn"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    throw v2

    .line 299
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_58
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getDsOn"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    throw v0

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_63
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "NullPointerException in getDsOn"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getDsVersion()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 849
    const-string/jumbo v5, ""

    .line 851
    .local v5, "version":Ljava/lang/String;
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v6, :cond_5e

    .line 855
    const/4 v6, 0x1

    :try_start_8
    new-array v4, v6, [Ljava/lang/String;

    .line 856
    .local v4, "paramString":[Ljava/lang/String;
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    invoke-interface {v6, v4}, Lcom/dolby/api/IDs;->iGetDsServiceVersion([Ljava/lang/String;)I

    move-result v3

    .line 857
    .local v3, "error":I
    if-eqz v3, :cond_16

    .line 859
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 888
    :goto_15
    return-object v5

    .line 863
    :cond_16
    const/4 v6, 0x0

    aget-object v5, v4, v6
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_19} :catch_45
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    goto :goto_15

    .line 878
    .end local v3    # "error":I
    .end local v4    # "paramString":[Ljava/lang/String;
    :catch_1a
    move-exception v1

    .line 879
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getDsVersion"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 881
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getDsVersion"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 872
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_45
    move-exception v2

    .line 873
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getDsVersion"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 875
    throw v2

    .line 867
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_53
    move-exception v0

    .line 868
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getDsVersion"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    throw v0

    .line 886
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5e
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "NullPointerException in getDsVersion"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getGeq(II)[F
    .registers 5
    .param p1, "profile"    # I
    .param p2, "preset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1163
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in getGeq"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIeqPreset(I)I
    .registers 4
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in getIeqPreset"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProfileCount()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v5, 0x0

    .line 341
    .local v5, "value":I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v6, :cond_5d

    .line 345
    const/4 v6, 0x1

    :try_start_6
    new-array v4, v6, [I

    .line 346
    .local v4, "paramInt":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lcom/dolby/api/IDs;->iGetProfileCount(I[I)I

    move-result v3

    .line 347
    .local v3, "error":I
    if-eqz v3, :cond_15

    .line 349
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 378
    :goto_14
    return v5

    .line 353
    :cond_15
    const/4 v6, 0x0

    aget v5, v4, v6
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_52
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_18} :catch_44
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    goto :goto_14

    .line 368
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :catch_19
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getProfileCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 371
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getProfileCount"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 362
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_44
    move-exception v2

    .line 363
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getProfileCount"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 365
    throw v2

    .line 357
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_52
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getProfileCount"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    throw v0

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5d
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "NullPointerException in getProfileCount"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getProfileNames()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x6

    .line 388
    new-array v1, v3, [Ljava/lang/String;

    .line 390
    .local v1, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v3, :cond_f

    .line 392
    sget-object v2, Lcom/dolby/api/DsCommon;->PROFILE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 394
    :cond_f
    return-object v1
.end method

.method public getProfileSettings(I)Landroid/dolby/DsClientSettings;
    .registers 21
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 648
    const/4 v12, 0x0

    .line 651
    .local v12, "settings":Landroid/dolby/DsClientSettings;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v14, :cond_b6

    .line 655
    :try_start_7
    new-instance v2, Landroid/dolby/DsClientSettings;

    invoke-direct {v2}, Landroid/dolby/DsClientSettings;-><init>()V

    .line 656
    .local v2, "clientSettings":Landroid/dolby/DsClientSettings;
    const/4 v10, 0x0

    .line 657
    .local v10, "paramId":I
    const/4 v14, 0x1

    new-array v11, v14, [I

    .line 658
    .local v11, "paramInt":[I
    const/4 v14, 0x5

    new-array v13, v14, [Z

    .line 659
    .local v13, "value":[Z
    const/4 v8, 0x0

    .line 662
    .local v8, "index":I
    sget-object v16, Landroid/dolby/DsClient;->profileParams_:[Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move v15, v14

    :goto_1d
    move/from16 v0, v17

    if-ge v15, v0, :cond_52

    aget-object v9, v16, v15

    .line 664
    .local v9, "param":Ljava/lang/String;
    invoke-static {v9}, Lcom/dolby/api/DsParams;->FromString(Ljava/lang/String;)Lcom/dolby/api/DsParams;

    move-result-object v3

    .line 665
    .local v3, "dsParam":Lcom/dolby/api/DsParams;
    if-eqz v3, :cond_4c

    .line 666
    invoke-virtual {v3}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v10

    .line 668
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v14, v0, v1, v10, v11}, Lcom/dolby/api/IDs;->iGetParameter(III[I)I

    move-result v7

    .line 669
    .local v7, "error":I
    if-eqz v7, :cond_42

    .line 671
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 673
    :cond_42
    const/4 v14, 0x0

    aget v14, v11, v14

    if-nez v14, :cond_50

    const/4 v14, 0x0

    :goto_48
    aput-boolean v14, v13, v8

    .line 674
    add-int/lit8 v8, v8, 0x1

    .line 662
    .end local v7    # "error":I
    :cond_4c
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_1d

    .line 673
    .restart local v7    # "error":I
    :cond_50
    const/4 v14, 0x1

    goto :goto_48

    .line 678
    .end local v3    # "dsParam":Lcom/dolby/api/DsParams;
    .end local v7    # "error":I
    .end local v9    # "param":Ljava/lang/String;
    :cond_52
    const/4 v14, 0x0

    aget-boolean v14, v13, v14

    invoke-virtual {v2, v14}, Landroid/dolby/DsClientSettings;->setGeqOn(Z)V

    .line 679
    const/4 v14, 0x1

    aget-boolean v14, v13, v14

    invoke-virtual {v2, v14}, Landroid/dolby/DsClientSettings;->setDialogEnhancerOn(Z)V

    .line 680
    const/4 v14, 0x2

    aget-boolean v14, v13, v14

    invoke-virtual {v2, v14}, Landroid/dolby/DsClientSettings;->setVolumeLevellerOn(Z)V

    .line 681
    const/4 v14, 0x3

    aget-boolean v14, v13, v14

    invoke-virtual {v2, v14}, Landroid/dolby/DsClientSettings;->setHeadphoneVirtualizerOn(Z)V

    .line 682
    const/4 v14, 0x4

    aget-boolean v14, v13, v14

    invoke-virtual {v2, v14}, Landroid/dolby/DsClientSettings;->setSpeakerVirtualizerOn(Z)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_70} :catch_ab
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_70} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_70} :catch_72

    .line 684
    move-object v12, v2

    .line 708
    .local v12, "settings":Landroid/dolby/DsClientSettings;
    return-object v2

    .line 698
    .end local v2    # "clientSettings":Landroid/dolby/DsClientSettings;
    .end local v8    # "index":I
    .end local v10    # "paramId":I
    .end local v11    # "paramInt":[I
    .end local v13    # "value":[Z
    .local v12, "settings":Landroid/dolby/DsClientSettings;
    :catch_72
    move-exception v5

    .line 699
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "DsClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " in getProfileSetting"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 701
    new-instance v14, Ljava/lang/RuntimeException;

    const-string/jumbo v15, "Exception in getProfileSettings"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 692
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_9d
    move-exception v6

    .line 693
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v14, "DsClient"

    const-string/jumbo v15, "NullPointerException in getProfileSettings"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 695
    throw v6

    .line 687
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_ab
    move-exception v4

    .line 688
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "DsClient"

    const-string/jumbo v15, "RemoteException in getProfileSettings"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    throw v4

    .line 706
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_b6
    new-instance v14, Ljava/lang/NullPointerException;

    const-string/jumbo v15, "NullPointerException in getProfileSettings"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public getSelectedProfile()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v5, 0x0

    .line 416
    .local v5, "value":I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v6, :cond_5d

    .line 420
    const/4 v6, 0x1

    :try_start_6
    new-array v4, v6, [I

    .line 421
    .local v4, "paramInt":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lcom/dolby/api/IDs;->iGetProfile(I[I)I

    move-result v3

    .line 422
    .local v3, "error":I
    if-eqz v3, :cond_15

    .line 424
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 453
    :goto_14
    return v5

    .line 428
    :cond_15
    const/4 v6, 0x0

    aget v5, v4, v6
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_52
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_18} :catch_44
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    goto :goto_14

    .line 443
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :catch_19
    move-exception v1

    .line 444
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getSelectedProfile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 446
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getSelectedProfile"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 437
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_44
    move-exception v2

    .line 438
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getSelectedProfile"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 440
    throw v2

    .line 432
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_52
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getSelectedProfile"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    throw v0

    .line 451
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5d
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "NullPointerException in getSelectedProfile"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public isMonoSpeaker()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in isMonoSpeaker"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isProfileModified(I)Z
    .registers 4
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1147
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in isProfileModified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isProfileNameModified(I)Z
    .registers 4
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1152
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in isProfileNameModified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerDsApParamEvents(Landroid/dolby/IDsApParamEvents;)V
    .registers 4
    .param p1, "listener"    # Landroid/dolby/IDsApParamEvents;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in registerDsApParamEvents"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerVisualizer(Landroid/dolby/IDsVisualizerEvents;)V
    .registers 4
    .param p1, "listener"    # Landroid/dolby/IDsVisualizerEvents;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in registerVisualizer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetProfile(I)V
    .registers 10
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 731
    if-ltz p1, :cond_5

    const/4 v4, 0x5

    if-le p1, v4, :cond_e

    .line 733
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 736
    :cond_e
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v4, :cond_70

    .line 738
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 742
    :try_start_15
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7, p1}, Lcom/dolby/api/IDs;->iResetProfile(III)I

    move-result v3

    .line 743
    .local v3, "error":I
    if-eqz v3, :cond_27

    .line 745
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_27} :catch_65
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_27} :catch_57
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_27} :catch_29
    .catchall {:try_start_15 .. :try_end_27} :catchall_54

    :cond_27
    monitor-exit v5

    .line 729
    return-void

    .line 760
    .end local v3    # "error":I
    :catch_29
    move-exception v1

    .line 761
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in resetProfile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 763
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in resetProfile"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_54
    .catchall {:try_start_2a .. :try_end_54} :catchall_54

    .line 738
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_54
    move-exception v4

    monitor-exit v5

    throw v4

    .line 754
    :catch_57
    move-exception v2

    .line 755
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_58
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in resetProfile"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 757
    throw v2

    .line 749
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_65
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in resetProfile"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    throw v0
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_54

    .line 769
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_70
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "NullPointerException in resetProfile"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setDsApParam(Ljava/lang/String;[I)V
    .registers 15
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 909
    iget-object v0, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v0, :cond_7f

    .line 913
    :try_start_4
    invoke-static {p1}, Lcom/dolby/api/DsParams;->FromString(Ljava/lang/String;)Lcom/dolby/api/DsParams;

    move-result-object v6

    .line 914
    .local v6, "dsParam":Lcom/dolby/api/DsParams;
    if-nez v6, :cond_1b

    .line 916
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_10} :catch_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_54

    .line 937
    .end local v6    # "dsParam":Lcom/dolby/api/DsParams;
    :catch_10
    move-exception v7

    .line 938
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "RemoteException in setDsApParam"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    throw v7

    .line 918
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "dsParam":Lcom/dolby/api/DsParams;
    :cond_1b
    :try_start_1b
    invoke-virtual {v6}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v4

    .line 919
    .local v4, "paramId":I
    const/4 v0, 0x1

    new-array v11, v0, [I

    .line 920
    .local v11, "paramInt":[I
    iget-object v0, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v11}, Lcom/dolby/api/IDs;->iGetProfile(I[I)I

    move-result v10

    .line 921
    .local v10, "error":I
    if-eqz v10, :cond_2f

    .line 923
    invoke-direct {p0, v10}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 907
    :cond_2e
    :goto_2e
    return-void

    .line 927
    :cond_2f
    const/4 v0, 0x0

    aget v3, v11, v0

    .line 929
    .local v3, "profile":I
    iget-object v0, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    iget-object v1, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/dolby/api/IDs;->iSetParameter(IIII[I)I

    move-result v10

    .line 930
    if-eqz v10, :cond_2e

    .line 932
    invoke-direct {p0, v10}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_45} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_45} :catch_46
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_45} :catch_54

    goto :goto_2e

    .line 942
    .end local v3    # "profile":I
    .end local v4    # "paramId":I
    .end local v6    # "dsParam":Lcom/dolby/api/DsParams;
    .end local v10    # "error":I
    .end local v11    # "paramInt":[I
    :catch_46
    move-exception v9

    .line 943
    .local v9, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "NullPointerException in setDsApParam"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 945
    throw v9

    .line 948
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :catch_54
    move-exception v8

    .line 949
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "DsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in setDsApParam"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 951
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in setDsApParam"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "NullPointerException in setDsApParam"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDsOn(Z)V
    .registers 10
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v4, :cond_60

    .line 168
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 172
    :try_start_7
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7, p1}, Lcom/dolby/api/IDs;->iSetState(IIZ)I

    move-result v3

    .line 173
    .local v3, "error":I
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_55
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_17} :catch_47
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_19
    .catchall {:try_start_7 .. :try_end_17} :catchall_44

    monitor-exit v5

    .line 164
    return-void

    .line 187
    .end local v3    # "error":I
    :catch_19
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1a
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in setDsOn"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in setDsOn"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_44
    .catchall {:try_start_1a .. :try_end_44} :catchall_44

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_44
    move-exception v4

    monitor-exit v5

    throw v4

    .line 181
    :catch_47
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_48
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in setDsOn"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    throw v2

    .line 176
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_55
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in setDsOn"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    throw v0
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_44

    .line 196
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_60
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "NullPointerException in setDsOn"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setDsOnChecked(Z)I
    .registers 10
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v3, 0x1

    .line 229
    .local v3, "error":I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v4, :cond_61

    .line 231
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 235
    :try_start_8
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7, p1}, Lcom/dolby/api/IDs;->iSetState(IIZ)I

    move-result v3

    .line 236
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_56
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_18} :catch_48
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_1a
    .catchall {:try_start_8 .. :try_end_18} :catchall_45

    monitor-exit v5

    .line 261
    return v3

    .line 250
    :catch_1a
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1b
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in setDsOnChecked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in setDsOnChecked"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_45
    .catchall {:try_start_1b .. :try_end_45} :catchall_45

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_45
    move-exception v4

    monitor-exit v5

    throw v4

    .line 244
    :catch_48
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_49
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in setDsOnChecked"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    throw v2

    .line 239
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_56
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in setDsOnChecked"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    throw v0
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_45

    .line 259
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_61
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "NullPointerException in setDsOnChecked"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setEventListener(Landroid/dolby/IDsClientEvents;)V
    .registers 2
    .param p1, "listener"    # Landroid/dolby/IDsClientEvents;

    .prologue
    .line 1047
    if-eqz p1, :cond_4

    .line 1049
    iput-object p1, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    .line 1045
    :cond_4
    return-void
.end method

.method public setGeq(II[F)V
    .registers 6
    .param p1, "profile"    # I
    .param p2, "preset"    # I
    .param p3, "geqBandGains"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in setGeq"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIeqPreset(II)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "preset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in setIeqPreset"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonPersistentMode(Z)V
    .registers 4
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in setNonPersistentMode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProfileName(ILjava/lang/String;)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1127
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in setProfileName"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProfileSettings(ILandroid/dolby/DsClientSettings;)V
    .registers 20
    .param p1, "profile"    # I
    .param p2, "settings"    # Landroid/dolby/DsClientSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 545
    if-ltz p1, :cond_7

    const/4 v1, 0x5

    move/from16 v0, p1

    if-le v0, v1, :cond_10

    .line 547
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid profile"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_10
    if-nez p2, :cond_1b

    .line 551
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid settings"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v1, :cond_11e

    .line 556
    sget-object v14, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v14

    .line 560
    const/4 v1, 0x1

    :try_start_25
    new-array v6, v1, [I

    .line 561
    .local v6, "value":[I
    const/4 v5, 0x0

    .line 564
    .local v5, "paramId":I
    sget-object v15, Landroid/dolby/DsClient;->profileParams_:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v0, v15

    move/from16 v16, v0

    move v13, v1

    :goto_2f
    move/from16 v0, v16

    if-ge v13, v0, :cond_11c

    aget-object v12, v15, v13

    .line 566
    .local v12, "param":Ljava/lang/String;
    invoke-static {v12}, Lcom/dolby/api/DsParams;->FromString(Ljava/lang/String;)Lcom/dolby/api/DsParams;

    move-result-object v7

    .line 567
    .local v7, "dsParam":Lcom/dolby/api/DsParams;
    if-nez v7, :cond_52

    .line 568
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception in setProfileSettings, invalid profile parameters"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_44} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_44} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_44} :catch_c1
    .catchall {:try_start_25 .. :try_end_44} :catchall_4f

    .line 601
    .end local v5    # "paramId":I
    .end local v6    # "value":[I
    .end local v7    # "dsParam":Lcom/dolby/api/DsParams;
    .end local v12    # "param":Ljava/lang/String;
    :catch_44
    move-exception v8

    .line 602
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_45
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "RemoteException in setProfileSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    throw v8
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4f

    .line 556
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_4f
    move-exception v1

    monitor-exit v14

    throw v1

    .line 570
    .restart local v5    # "paramId":I
    .restart local v6    # "value":[I
    .restart local v7    # "dsParam":Lcom/dolby/api/DsParams;
    .restart local v12    # "param":Ljava/lang/String;
    :cond_52
    :try_start_52
    invoke-virtual {v7}, Lcom/dolby/api/DsParams;->toInt()I

    move-result v5

    .line 572
    const-string/jumbo v1, "geon"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/dolby/DsClientSettings;->getGeqOn()Z

    move-result v1

    if-eqz v1, :cond_87

    const/4 v1, 0x1

    :goto_66
    const/4 v2, 0x0

    aput v1, v6, v2

    .line 593
    :cond_69
    :goto_69
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    move/from16 v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/dolby/api/IDs;->iSetParameter(IIII[I)I

    move-result v11

    .line 594
    .local v11, "error":I
    if-eqz v11, :cond_83

    .line 596
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 564
    :cond_83
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_2f

    .line 574
    .end local v11    # "error":I
    :cond_87
    const/4 v1, 0x0

    goto :goto_66

    .line 576
    :cond_89
    const-string/jumbo v1, "deon"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/dolby/DsClientSettings;->getDialogEnhancerOn()Z

    move-result v1

    if-eqz v1, :cond_ab

    const/4 v1, 0x1

    :goto_99
    const/4 v2, 0x0

    aput v1, v6, v2
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_9c} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_52 .. :try_end_9c} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_9c} :catch_c1
    .catchall {:try_start_52 .. :try_end_9c} :catchall_4f

    goto :goto_69

    .line 606
    .end local v5    # "paramId":I
    .end local v6    # "value":[I
    .end local v7    # "dsParam":Lcom/dolby/api/DsParams;
    .end local v12    # "param":Ljava/lang/String;
    :catch_9d
    move-exception v10

    .line 607
    .local v10, "e":Ljava/lang/NullPointerException;
    :try_start_9e
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "NullPointerException in setProfileSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 609
    throw v10
    :try_end_ab
    .catchall {:try_start_9e .. :try_end_ab} :catchall_4f

    .line 578
    .end local v10    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "paramId":I
    .restart local v6    # "value":[I
    .restart local v7    # "dsParam":Lcom/dolby/api/DsParams;
    .restart local v12    # "param":Ljava/lang/String;
    :cond_ab
    const/4 v1, 0x0

    goto :goto_99

    .line 580
    :cond_ad
    :try_start_ad
    const-string/jumbo v1, "dvle"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/dolby/DsClientSettings;->getVolumeLevellerOn()Z

    move-result v1

    if-eqz v1, :cond_ec

    const/4 v1, 0x1

    :goto_bd
    const/4 v2, 0x0

    aput v1, v6, v2
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_c0} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_ad .. :try_end_c0} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c0} :catch_c1
    .catchall {:try_start_ad .. :try_end_c0} :catchall_4f

    goto :goto_69

    .line 612
    .end local v5    # "paramId":I
    .end local v6    # "value":[I
    .end local v7    # "dsParam":Lcom/dolby/api/DsParams;
    .end local v12    # "param":Ljava/lang/String;
    :catch_c1
    move-exception v9

    .line 613
    .local v9, "e":Ljava/lang/Exception;
    :try_start_c2
    const-string/jumbo v1, "DsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in setProfileSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 615
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception in setProfileSettings"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ec
    .catchall {:try_start_c2 .. :try_end_ec} :catchall_4f

    .line 582
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "paramId":I
    .restart local v6    # "value":[I
    .restart local v7    # "dsParam":Lcom/dolby/api/DsParams;
    .restart local v12    # "param":Ljava/lang/String;
    :cond_ec
    const/4 v1, 0x0

    goto :goto_bd

    .line 584
    :cond_ee
    :try_start_ee
    const-string/jumbo v1, "vdhe"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/dolby/DsClientSettings;->getHeadphoneVirtualizerOn()Z

    move-result v1

    if-eqz v1, :cond_103

    const/4 v1, 0x1

    :goto_fe
    const/4 v2, 0x0

    aput v1, v6, v2

    goto/16 :goto_69

    :cond_103
    const/4 v1, 0x0

    goto :goto_fe

    .line 588
    :cond_105
    const-string/jumbo v1, "vspe"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/dolby/DsClientSettings;->getSpeakerVirtualizerOn()Z

    move-result v1

    if-eqz v1, :cond_11a

    const/4 v1, 0x1

    :goto_115
    const/4 v2, 0x0

    aput v1, v6, v2
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_118} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_ee .. :try_end_118} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_118} :catch_c1
    .catchall {:try_start_ee .. :try_end_118} :catchall_4f

    goto/16 :goto_69

    :cond_11a
    const/4 v1, 0x0

    goto :goto_115

    .end local v7    # "dsParam":Lcom/dolby/api/DsParams;
    .end local v12    # "param":Ljava/lang/String;
    :cond_11c
    monitor-exit v14

    .line 543
    return-void

    .line 621
    .end local v5    # "paramId":I
    .end local v6    # "value":[I
    :cond_11e
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "NullPointerException in setProfileSettings"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSelectedProfile(I)V
    .registers 10
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 477
    if-ltz p1, :cond_5

    const/4 v4, 0x5

    if-le p1, v4, :cond_e

    .line 479
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 482
    :cond_e
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v4, :cond_70

    .line 484
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 488
    :try_start_15
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7, p1}, Lcom/dolby/api/IDs;->iSetProfile(III)I

    move-result v3

    .line 489
    .local v3, "error":I
    if-eqz v3, :cond_27

    .line 491
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_27} :catch_65
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_27} :catch_57
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_27} :catch_29
    .catchall {:try_start_15 .. :try_end_27} :catchall_54

    :cond_27
    monitor-exit v5

    .line 475
    return-void

    .line 506
    .end local v3    # "error":I
    :catch_29
    move-exception v1

    .line 507
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in setSelectedProfile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 509
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in setSelectedProfile"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_54
    .catchall {:try_start_2a .. :try_end_54} :catchall_54

    .line 484
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_54
    move-exception v4

    monitor-exit v5

    throw v4

    .line 500
    :catch_57
    move-exception v2

    .line 501
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_58
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in setSelectedProfile"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 503
    throw v2

    .line 495
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_65
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in setSelectedProfile"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    throw v0
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_54

    .line 515
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_70
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "NullPointerException in setSelectedProfile"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public unBindDsService(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1088
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "unBindDsService()"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    if-eqz v1, :cond_30

    .line 1094
    :try_start_e
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Landroid/dolby/DsClient;->callbacks_:Lcom/dolby/api/IDsCallbacks;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/dolby/api/IDs;->iUnregisterCallback(ILcom/dolby/api/IDsCallbacks;I)V

    .line 1095
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Landroid/dolby/DsClient;->deathHandler_:Lcom/dolby/api/IDsDeathHandler;

    invoke-interface {v1, v2, v3}, Lcom/dolby/api/IDs;->iUnregisterDeathHandler(ILcom/dolby/api/IDsDeathHandler;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_27} :catch_31

    .line 1102
    :goto_27
    iget-object v1, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1103
    iput-object v5, p0, Landroid/dolby/DsClient;->ds_:Lcom/dolby/api/IDs;

    .line 1104
    iput-object v5, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    .line 1086
    :cond_30
    return-void

    .line 1098
    :catch_31
    move-exception v0

    .line 1099
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "Remote Exception in unBindFromRemoteRunningService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public unregisterDsApParamEvents()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1171
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in unregisterDsApParamEvents"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterVisualizer()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Exception in unregisterVisualizer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

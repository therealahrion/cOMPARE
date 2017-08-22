.class Lcom/dolby/api/DsBase;
.super Ljava/lang/Object;
.source "DsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/api/DsBase$1;,
        Lcom/dolby/api/DsBase$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DsBase"

.field private static final VERSION:I = 0x1


# instance fields
.field protected DsClientInfo_:Lcom/dolby/api/DsClientInfo;

.field protected accessListener_:Lcom/dolby/api/IDsAccessEvents;

.field protected clientHandle_:I

.field protected connectionBridge_:I

.field protected connection_:Landroid/content/ServiceConnection;

.field protected context_:Landroid/content/Context;

.field private deathHandler_:Lcom/dolby/api/IDsDeathHandler;

.field protected iDs_:Lcom/dolby/api/IDs;


# direct methods
.method static synthetic -get0(Lcom/dolby/api/DsBase;)Lcom/dolby/api/IDsDeathHandler;
    .registers 2

    iget-object v0, p0, Lcom/dolby/api/DsBase;->deathHandler_:Lcom/dolby/api/IDsDeathHandler;

    return-object v0
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    .line 62
    iput-object v0, p0, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    .line 68
    iput-object v0, p0, Lcom/dolby/api/DsBase;->context_:Landroid/content/Context;

    .line 74
    iput-object v0, p0, Lcom/dolby/api/DsBase;->DsClientInfo_:Lcom/dolby/api/DsClientInfo;

    .line 80
    iput v1, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    .line 86
    iput v1, p0, Lcom/dolby/api/DsBase;->connectionBridge_:I

    .line 345
    new-instance v0, Lcom/dolby/api/DsBase$1;

    invoke-direct {v0, p0}, Lcom/dolby/api/DsBase$1;-><init>(Lcom/dolby/api/DsBase;)V

    iput-object v0, p0, Lcom/dolby/api/DsBase;->connection_:Landroid/content/ServiceConnection;

    .line 392
    new-instance v0, Lcom/dolby/api/DsBase$2;

    invoke-direct {v0, p0}, Lcom/dolby/api/DsBase$2;-><init>(Lcom/dolby/api/DsBase;)V

    iput-object v0, p0, Lcom/dolby/api/DsBase;->deathHandler_:Lcom/dolby/api/IDsDeathHandler;

    .line 41
    return-void
.end method


# virtual methods
.method public abandonAccessRight(I)I
    .registers 6
    .param p1, "accessRight"    # I

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 295
    .local v1, "error":I
    :try_start_1
    iget-object v2, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v3, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    invoke-interface {v2, v3, p1}, Lcom/dolby/api/IDs;->iAbandonAccessRight(II)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result v1

    .line 301
    :goto_9
    return v1

    .line 298
    :catch_a
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "abandonAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public checkAccessRight(I)I
    .registers 8
    .param p1, "accessRight"    # I

    .prologue
    .line 325
    const/4 v3, -0x1

    .line 326
    .local v3, "ret_val":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 327
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 330
    .local v1, "error":I
    :try_start_5
    iget-object v4, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v5, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    invoke-interface {v4, v5, p1, v2}, Lcom/dolby/api/IDs;->iCheckAccessRight(II[I)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_14

    move-result v1

    .line 336
    :goto_d
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 337
    const/4 v4, 0x0

    aget v3, v2, v4

    .line 338
    return v3

    .line 333
    :catch_14
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "checkAccessRight"

    invoke-virtual {p0, v0, v4}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d
.end method

.method protected convertErrorCodeToException(I)V
    .registers 7
    .param p1, "errorCode"    # I

    .prologue
    .line 94
    if-ltz p1, :cond_3

    .line 95
    return-void

    .line 97
    :cond_3
    const-string/jumbo v2, "DsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "convertErrorCodeToException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    packed-switch p1, :pswitch_data_4e

    .line 92
    :pswitch_20
    return-void

    .line 102
    :pswitch_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Exception: invalid argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 105
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :pswitch_2a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception: DS not running."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 108
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception: can not load settings."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    throw v0

    .line 111
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_3c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception: can not load tunings."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    throw v0

    .line 114
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception: unknown problem."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    throw v0

    .line 99
    :pswitch_data_4e
    .packed-switch -0x6
        :pswitch_45
        :pswitch_20
        :pswitch_3c
        :pswitch_33
        :pswitch_2a
        :pswitch_21
    .end packed-switch
.end method

.method public getApiVersion()I
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public getAvailableAccessRight()I
    .registers 2

    .prologue
    .line 311
    const/4 v0, -0x1

    .line 313
    .local v0, "ret_val":I
    return v0
.end method

.method public getDsVersion()Ljava/lang/String;
    .registers 6

    .prologue
    .line 233
    const-string/jumbo v3, ""

    .line 234
    .local v3, "version":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    .line 235
    .local v2, "paramString":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 238
    .local v1, "error":I
    :try_start_7
    iget-object v4, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    invoke-interface {v4, v2}, Lcom/dolby/api/IDs;->iGetDsServiceVersion([Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_14

    move-result v1

    .line 244
    :goto_d
    invoke-virtual {p0, v1}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 245
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 247
    return-object v3

    .line 241
    :catch_14
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getDsVersion"

    invoke-virtual {p0, v0, v4}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d
.end method

.method protected handleException(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "DsBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerClient(Landroid/content/Context;Lcom/dolby/api/IDsAccessEvents;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/dolby/api/IDsAccessEvents;

    .prologue
    .line 153
    const-string/jumbo v3, "DsBase"

    const-string/jumbo v4, "registerClient"

    invoke-static {v3, v4}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v2, -0x6

    .line 158
    .local v2, "error":I
    if-eqz p2, :cond_3f

    if-eqz p1, :cond_3f

    .line 160
    :try_start_e
    iput-object p1, p0, Lcom/dolby/api/DsBase;->context_:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    .line 162
    new-instance v3, Lcom/dolby/api/DsClientInfo;

    invoke-direct {v3}, Lcom/dolby/api/DsClientInfo;-><init>()V

    iput-object v3, p0, Lcom/dolby/api/DsBase;->DsClientInfo_:Lcom/dolby/api/DsClientInfo;

    .line 163
    iget-object v3, p0, Lcom/dolby/api/DsBase;->DsClientInfo_:Lcom/dolby/api/DsClientInfo;

    iget-object v4, p0, Lcom/dolby/api/DsBase;->context_:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dolby/api/DsClientInfo;->setPackageName(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/dolby/api/DsBase;->DsClientInfo_:Lcom/dolby/api/DsClientInfo;

    iget v4, p0, Lcom/dolby/api/DsBase;->connectionBridge_:I

    invoke-virtual {v3, v4}, Lcom/dolby/api/DsClientInfo;->setConnectionBridge(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_41

    .line 165
    const/4 v2, 0x0

    .line 176
    :goto_2c
    invoke-virtual {p0, v2}, Lcom/dolby/api/DsBase;->convertErrorCodeToException(I)V

    .line 178
    if-eqz p1, :cond_49

    .line 180
    invoke-static {p1}, Lcom/dolby/api/DsCommon;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 183
    .local v0, "bindIntent":Landroid/content/Intent;
    if-eqz v0, :cond_49

    .line 185
    iget-object v3, p0, Lcom/dolby/api/DsBase;->connection_:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    return v3

    .line 169
    .end local v0    # "bindIntent":Landroid/content/Intent;
    :cond_3f
    const/4 v2, -0x1

    goto :goto_2c

    .line 173
    :catch_41
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "registerClient"

    invoke-virtual {p0, v1, v3}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2c

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_49
    const/4 v3, 0x0

    return v3
.end method

.method public requestAccessRight(I)I
    .registers 6
    .param p1, "accessRight"    # I

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 273
    .local v1, "error":I
    :try_start_1
    iget-object v2, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v3, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    invoke-interface {v2, v3, p1}, Lcom/dolby/api/IDs;->iRequestAccessRight(II)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result v1

    .line 279
    :goto_9
    return v1

    .line 276
    :catch_a
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "requestAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected setConnectionInfo(I)V
    .registers 2
    .param p1, "access"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/dolby/api/DsBase;->connectionBridge_:I

    .line 137
    return-void
.end method

.method public unregisterClient()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 201
    const-string/jumbo v1, "DsBase"

    const-string/jumbo v2, "unregisterClient"

    invoke-static {v1, v2}, Lcom/dolby/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    if-eqz v1, :cond_2d

    .line 207
    :try_start_e
    iget-object v1, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v2, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    invoke-interface {v1, v2}, Lcom/dolby/api/IDs;->iUnregisterDsAccess(I)V

    .line 208
    iget-object v1, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    iget v2, p0, Lcom/dolby/api/DsBase;->clientHandle_:I

    iget-object v3, p0, Lcom/dolby/api/DsBase;->deathHandler_:Lcom/dolby/api/IDsDeathHandler;

    invoke-interface {v1, v2, v3}, Lcom/dolby/api/IDs;->iUnregisterDeathHandler(ILcom/dolby/api/IDsDeathHandler;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_32

    .line 215
    :goto_1e
    iget-object v1, p0, Lcom/dolby/api/DsBase;->context_:Landroid/content/Context;

    if-eqz v1, :cond_2b

    .line 217
    iget-object v1, p0, Lcom/dolby/api/DsBase;->context_:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolby/api/DsBase;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 218
    iput-object v4, p0, Lcom/dolby/api/DsBase;->context_:Landroid/content/Context;

    .line 220
    :cond_2b
    iput-object v4, p0, Lcom/dolby/api/DsBase;->iDs_:Lcom/dolby/api/IDs;

    .line 222
    :cond_2d
    iput-object v4, p0, Lcom/dolby/api/DsBase;->DsClientInfo_:Lcom/dolby/api/DsClientInfo;

    .line 223
    iput-object v4, p0, Lcom/dolby/api/DsBase;->accessListener_:Lcom/dolby/api/IDsAccessEvents;

    .line 199
    return-void

    .line 211
    :catch_32
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unregisterClient"

    invoke-virtual {p0, v0, v1}, Lcom/dolby/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1e
.end method

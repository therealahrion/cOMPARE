.class public Lcom/dolby/api/DsAccess;
.super Ljava/lang/Object;
.source "DsAccess.java"


# static fields
.field public static final ACCESS_FOCUS:I = 0x1

.field public static final ACCESS_GLOBAL:I = 0x2

.field public static final ACCESS_NONE:I = 0x0

.field public static final ACCESS_TUNING:I = 0x4

.field public static final ERROR_ACCESS_AREADY_GRANTED:I = -0x1

.field public static final ERROR_ACCESS_NOT_AGREED:I = -0x4

.field public static final ERROR_ACCESS_NOT_PERMITTED:I = -0x2

.field public static final ERROR_ACCESS_NO_AUDIOFOCUS:I = -0x3

.field public static final NONE_APP_GRANTED:I = 0x0

.field public static final OTHER_APP_GRANTED:I = 0x1

.field public static final THIS_APP_GRANTED:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

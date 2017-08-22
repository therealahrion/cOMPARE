.class public Lcom/dolby/api/DsLog;
.super Ljava/lang/Object;
.source "DsLog.java"


# static fields
.field public static final DEFAULT_LOG_LEVEL:I = 0x1

.field public static final LOG_LEVEL_0:I = 0x0

.field public static final LOG_LEVEL_1:I = 0x1

.field public static final LOG_LEVEL_2:I = 0x2

.field public static final LOG_LEVEL_3:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public static log2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method

.method public static log3(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 60
    return-void
.end method

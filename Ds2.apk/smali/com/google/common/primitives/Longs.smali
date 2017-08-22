.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toByteArray(J)[B
    .locals 6

    const/16 v4, 0x8

    new-array v1, v4, [B

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    shr-long/2addr p0, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

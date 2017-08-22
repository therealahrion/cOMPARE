.class public Lcom/dolby/daxappUI/FPSCounter;
.super Ljava/lang/Object;
.source "FPSCounter.java"


# instance fields
.field private final mTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolby/daxappUI/FPSCounter;->mTimestamps:Ljava/util/ArrayList;

    return-void
.end method

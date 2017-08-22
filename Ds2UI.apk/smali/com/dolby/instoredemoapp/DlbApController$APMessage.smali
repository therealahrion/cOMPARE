.class Lcom/dolby/instoredemoapp/DlbApController$APMessage;
.super Ljava/lang/Object;
.source "DlbApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/instoredemoapp/DlbApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "APMessage"
.end annotation


# instance fields
.field public delayTime:J

.field public message:Landroid/os/Message;


# direct methods
.method public constructor <init>(JLandroid/os/Message;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;->delayTime:J

    iput-object p3, p0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;->message:Landroid/os/Message;

    return-void
.end method

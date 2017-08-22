.class Lcom/dolby/api/DsBase$2;
.super Lcom/dolby/api/IDsDeathHandler$Stub;
.source "DsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/api/DsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/api/DsBase;


# direct methods
.method constructor <init>(Lcom/dolby/api/DsBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/dolby/api/DsBase;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/dolby/api/DsBase$2;->this$0:Lcom/dolby/api/DsBase;

    invoke-direct {p0}, Lcom/dolby/api/IDsDeathHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientDied()V
    .registers 1

    .prologue
    .line 394
    return-void
.end method

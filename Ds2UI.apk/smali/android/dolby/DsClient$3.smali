.class Landroid/dolby/DsClient$3;
.super Lcom/dolby/api/IDsDeathHandler$Stub;
.source "DsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/DsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/dolby/DsClient;


# direct methods
.method constructor <init>(Landroid/dolby/DsClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/dolby/DsClient;

    .prologue
    .line 1315
    iput-object p1, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-direct {p0}, Lcom/dolby/api/IDsDeathHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientDied()V
    .registers 1

    .prologue
    .line 1317
    return-void
.end method

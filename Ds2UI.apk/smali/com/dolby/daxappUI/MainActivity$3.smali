.class Lcom/dolby/daxappUI/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/MainActivity;->displaySplashScreen()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/MainActivity;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/MainActivity$3;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity$3;->this$0:Lcom/dolby/daxappUI/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolby/daxappUI/MainActivity;->-set1(Lcom/dolby/daxappUI/MainActivity;Z)Z

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity$3;->this$0:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v0}, Lcom/dolby/daxappUI/MainActivity;->-wrap1(Lcom/dolby/daxappUI/MainActivity;)V

    return-void
.end method

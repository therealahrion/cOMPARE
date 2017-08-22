.class Lcom/dolby/daxappUI/FragProfilePresets$1;
.super Ljava/lang/Object;
.source "FragProfilePresets.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/FragProfilePresets;->onProfileNameEditStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/daxappUI/FragProfilePresets$1$1;,
        Lcom/dolby/daxappUI/FragProfilePresets$1$2;
    }
.end annotation


# instance fields
.field private counter:I

.field private final refreshLayout:Ljava/lang/Runnable;

.field private final removePreDrawListener:Ljava/lang/Runnable;

.field private skipNext:Z

.field final synthetic this$0:Lcom/dolby/daxappUI/FragProfilePresets;


# direct methods
.method static synthetic -wrap0(Lcom/dolby/daxappUI/FragProfilePresets$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/dolby/daxappUI/FragProfilePresets$1;->refreshLayout()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/dolby/daxappUI/FragProfilePresets$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/dolby/daxappUI/FragProfilePresets$1;->removePreDrawListener()V

    return-void
.end method

.method constructor <init>(Lcom/dolby/daxappUI/FragProfilePresets;)V
    .locals 1

    iput-object p1, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->this$0:Lcom/dolby/daxappUI/FragProfilePresets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->counter:I

    new-instance v0, Lcom/dolby/daxappUI/FragProfilePresets$1$1;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/FragProfilePresets$1$1;-><init>(Lcom/dolby/daxappUI/FragProfilePresets$1;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->refreshLayout:Ljava/lang/Runnable;

    new-instance v0, Lcom/dolby/daxappUI/FragProfilePresets$1$2;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/FragProfilePresets$1$2;-><init>(Lcom/dolby/daxappUI/FragProfilePresets$1;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->removePreDrawListener:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->skipNext:Z

    return-void
.end method

.method private refreshLayout()V
    .locals 4

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->this$0:Lcom/dolby/daxappUI/FragProfilePresets;

    invoke-static {v0}, Lcom/dolby/daxappUI/FragProfilePresets;->-get0(Lcom/dolby/daxappUI/FragProfilePresets;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->skipNext:Z

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->this$0:Lcom/dolby/daxappUI/FragProfilePresets;

    invoke-static {v0}, Lcom/dolby/daxappUI/FragProfilePresets;->-get0(Lcom/dolby/daxappUI/FragProfilePresets;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->this$0:Lcom/dolby/daxappUI/FragProfilePresets;

    invoke-static {v0}, Lcom/dolby/daxappUI/FragProfilePresets;->-get0(Lcom/dolby/daxappUI/FragProfilePresets;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->refreshLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->removePreDrawListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->removePreDrawListener:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removePreDrawListener()V
    .locals 2

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->refreshLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->removePreDrawListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->this$0:Lcom/dolby/daxappUI/FragProfilePresets;

    invoke-static {v0}, Lcom/dolby/daxappUI/FragProfilePresets;->-get0(Lcom/dolby/daxappUI/FragProfilePresets;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->skipNext:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->refreshLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->refreshLayout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget v0, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->counter:I

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/dolby/daxappUI/FragProfilePresets$1;->removePreDrawListener()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/dolby/daxappUI/FragProfilePresets$1;->skipNext:Z

    goto :goto_0
.end method

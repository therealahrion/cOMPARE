.class final Lcom/dolby/daxappUI/ViewTools$2;
.super Ljava/lang/Object;
.source "ViewTools.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/ViewTools;->showTooltip(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$vTooltip:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/ViewTools$2;->val$vTooltip:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/ViewTools$2;->val$vTooltip:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/dolby/daxappUI/ViewTools;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/dolby/dax/prototype/LaunchDsServiceActivity;
.super Landroid/app/Activity;
.source "LaunchDsServiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "Starting DsService..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/dolby/dax/prototype/LaunchDsServiceActivity;->setContentView(Landroid/view/View;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolby/dax/service/DsService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/dolby/dax/prototype/LaunchDsServiceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

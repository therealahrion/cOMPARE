.class public Lcom/dolby/daxappUI/FragPower;
.super Landroid/app/Fragment;
.source "FragPower.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDsClient:Lcom/dolby/api/DsGlobalEx;

.field private mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

.field private mImgoff:Landroid/widget/ImageView;

.field private mImgon:Landroid/widget/ImageView;

.field private mSpecificObserver:Lcom/dolby/daxappUI/IDsFragPowerObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/dolby/daxappUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/daxappUI/FragPower;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/daxappUI/IDsFragPowerObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/daxappUI/FragPower;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragPowerObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v2, p0, Lcom/dolby/daxappUI/FragPower;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/daxappUI/IDsFragObserver;->getDsClient()Lcom/dolby/api/DsGlobalEx;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/FragPower;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must implement IDsFragObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must implement IDsFragPowerObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v5, 0x7f0c0020

    if-eq v5, v2, :cond_0

    const v5, 0x7f0c001f

    if-ne v5, v2, :cond_4

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/dolby/daxappUI/FragPower;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v5

    if-eq v7, v5, :cond_1

    const/4 v3, 0x1

    :goto_0
    iget-object v5, p0, Lcom/dolby/daxappUI/FragPower;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/dolby/api/DsGlobalEx;->checkAccessRight()I

    move-result v5

    const/4 v6, 0x2

    if-eq v6, v5, :cond_2

    iget-object v5, p0, Lcom/dolby/daxappUI/FragPower;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/dolby/api/DsGlobalEx;->requestAccessRight()I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/dolby/daxappUI/FragPower;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5, v3}, Lcom/dolby/api/DsGlobalEx;->setState(Z)I

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v5, "FragPower"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FragPower.onClick, setDsOnChecked failed due to return code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v5, p0, Lcom/dolby/daxappUI/FragPower;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v5}, Lcom/dolby/daxappUI/IDsFragObserver;->onDsApiError()V

    return-void

    :cond_3
    iget-object v5, p0, Lcom/dolby/daxappUI/FragPower;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragPowerObserver;

    invoke-interface {v5, v7}, Lcom/dolby/daxappUI/IDsFragPowerObserver;->onDsClientUseChanged(Z)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f030006

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dolby/daxappUI/FragPower;->mImgon:Landroid/widget/ImageView;

    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dolby/daxappUI/FragPower;->mImgoff:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragPower;->mImgon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/dolby/daxappUI/FragPower;->mImgon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/dolby/daxappUI/FragPower;->mImgoff:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/dolby/daxappUI/FragPower;->mImgoff:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lcom/dolby/daxappUI/FragPower;->mImgon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

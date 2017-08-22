.class public Lcom/dolby/daxappUI/FragGraphicVisualizer;
.super Landroid/app/Fragment;
.source "FragGraphicVisualizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolby/daxappUI/IEqualizerChangeListener;
.implements Lcom/dolby/api/IDsEvents;
.implements Lcom/dolby/api/IDsVisualizerEvents;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mContainer:Landroid/view/ViewGroup;

.field private mDolbyClientConnected:Z

.field private mDsClient:Lcom/dolby/api/DsGlobalEx;

.field private mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

.field private mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

.field private mIEqPresets:Landroid/widget/GridView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMobileLayout:Z

.field private mPreset:I

.field private mQmIntEq:Landroid/view/View;

.field private mSpecificObserver:Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;

.field private mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;


# direct methods
.method static synthetic -get0(Lcom/dolby/daxappUI/FragGraphicVisualizer;)Lcom/dolby/daxappUI/EqualizerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/dolby/daxappUI/FragGraphicVisualizer;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/dolby/daxappUI/FragGraphicVisualizer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->chooseEqualizerSettinginUI(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    iput-object v1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method private chooseEqualizerSetting(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->selectIEqPresetInUI(I)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;->setUserProfilePopulated()V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->updateGraphicEqInUI()V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;->onProfileSettingsChanged()V

    return-void
.end method

.method private chooseEqualizerSettinginUI(I)V
    .locals 6

    iget-boolean v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const/4 p1, -0x1

    :cond_0
    iget-boolean v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    sget-object v3, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/dolby/daxappUI/MainActivity;

    iget-object v4, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lcom/dolby/daxappCoreUI/DsClientSettings;->setIeqPreset(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->selectIEqPresetInUI(I)V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/IDsActivityCommon;

    invoke-interface {v2}, Lcom/dolby/daxappUI/IDsActivityCommon;->useDsApiOnUiEvent()Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->switchPreset(IIZ)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->chooseEqualizerSetting(I)V

    return-void
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 4

    iget-boolean v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/IDsActivityCommon;

    invoke-interface {v2}, Lcom/dolby/daxappUI/IDsActivityCommon;->useDsApiOnUiEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c001e

    if-ne v2, v1, :cond_2

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->chooseEqualizerSettinginUI(I)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f06001b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    const v2, 0x7f0c0016

    if-ne v2, v1, :cond_0

    invoke-direct {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->resetGEqOnUserClick()V

    goto :goto_0
.end method

.method private resetGEqOnUserClick()V
    .locals 2

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/dolby/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->resetUserGains(Z)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;->onProfileSettingsChanged()V

    return-void
.end method


# virtual methods
.method public hideEqualizer()V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/dolby/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->hide()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/dolby/daxappUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iput-object p1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/daxappUI/IDsFragObserver;->getDsClient()Lcom/dolby/api/DsGlobalEx;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

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

    const-string/jumbo v4, " must implement IDsFragGraphicVisualizerObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c001c

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;

    const v2, 0x7f060032

    const v3, 0x7f060033

    invoke-interface {v1, p1, v2, v3}, Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;->displayTooltip(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->onDolbyClientUseClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClientConnected()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v6, 0x0

    const v5, 0x7f030005

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object p1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0c0014

    const v7, 0x7f0c0015

    filled-new-array {v5, v7}, [I

    move-result-object v1

    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget v0, v1, v5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    sget-object v8, Lcom/dolby/daxappUI/Assets$FontType;->REGULAR:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static {v8}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const v5, 0x7f0c0017

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v5, :cond_2

    new-instance v5, Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/dolby/daxappUI/FragGraphicVisualizer$1;

    invoke-direct {v8, p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer$1;-><init>(Lcom/dolby/daxappUI/FragGraphicVisualizer;)V

    const v9, 0x7f030001

    invoke-direct {v5, v7, v9, v8}, Lcom/dolby/daxappUI/EqualizerAdapter;-><init>(Landroid/content/Context;ILcom/dolby/daxappUI/EqualizerAdapter$IPresetListener;)V

    iput-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    iget-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    new-instance v7, Lcom/dolby/daxappUI/FragGraphicVisualizer$2;

    invoke-direct {v7, p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer$2;-><init>(Lcom/dolby/daxappUI/FragGraphicVisualizer;)V

    invoke-virtual {v5, v7}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    const v5, 0x7f0c001e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_3
    const v5, 0x7f0c0016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_4
    const v5, 0x7f0c001c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    iget-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_5
    const v5, 0x7f0c001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/dolby/daxappUI/GraphicVisualiser;

    iput-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    iget-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v5}, Lcom/dolby/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/dolby/daxappUI/IDsActivityCommon;

    invoke-virtual {v7, v5}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->setActivity(Lcom/dolby/daxappUI/IDsActivityCommon;)V

    iget-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v5}, Lcom/dolby/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    move-result-object v5

    iget-object v7, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5, v7}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->setDsClient(Lcom/dolby/api/DsGlobalEx;)V

    iget-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v5}, Lcom/dolby/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->setEqualizerListener(Lcom/dolby/daxappUI/IEqualizerChangeListener;)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v7, 0x7f090000

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    iget-boolean v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    iput-boolean v6, v5, Lcom/dolby/daxappUI/GraphicVisualiser;->mEnableEditTouch:Z

    :cond_6
    return-object v4
.end method

.method public onDsOn(Z)V
    .locals 0

    return-void
.end method

.method public onDsSuspended(Z)V
    .locals 0

    return-void
.end method

.method public onEqualizerEditStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;->onEqualizerEditStart()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const-string/jumbo v0, "FragGraphicVisualizer"

    const-string/jumbo v1, "GraphicVisualiser fragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/GraphicVisualiser;->setActiveStatus(Z)V

    :cond_0
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0

    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string/jumbo v0, "FragGraphicVisualizer"

    const-string/jumbo v1, "GraphicVisualiser fragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/GraphicVisualiser;->setActiveStatus(Z)V

    :cond_0
    return-void
.end method

.method public onVisualizerSuspended(Z)V
    .locals 3

    const-string/jumbo v0, "FragGraphicVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MainActivity.onVisualizerSuspended ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v0, p1}, Lcom/dolby/daxappUI/GraphicVisualiser;->setSuspended(Z)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/GraphicVisualiser;->repaint(Z)V

    return-void
.end method

.method public onVisualizerUpdate([F[F)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v0, p1}, Lcom/dolby/daxappUI/GraphicVisualiser;->setExcitations([F)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v0, p2}, Lcom/dolby/daxappUI/GraphicVisualiser;->onVisualizerUpdate([F)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/dolby/daxappUI/GraphicVisualiser;->repaint()V

    :cond_4
    return-void
.end method

.method public registerVisualizer(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->setSuspended(Z)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "FragGraphicVisualizer"

    const-string/jumbo v2, "registerVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v1, p0}, Lcom/dolby/api/DsGlobalEx;->registerVisualizer(Lcom/dolby/api/IDsVisualizerEvents;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "FragGraphicVisualizer"

    const-string/jumbo v2, "unregisterVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v1}, Lcom/dolby/api/DsGlobalEx;->unregisterVisualizer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v1}, Lcom/dolby/daxappUI/IDsFragObserver;->onDsApiError()V

    return-void
.end method

.method public resetUserGains()V
    .locals 2

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/dolby/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->resetUserGains(Z)V

    return-void
.end method

.method public resetUserGains(I)V
    .locals 4

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->checkAccessRight()I

    move-result v2

    const/4 v3, 0x2

    if-eq v3, v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->requestAccessRight()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->resetUserGains(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2, p1}, Lcom/dolby/api/DsGlobalEx;->resetProfile(I)I

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/dolby/daxappUI/GraphicVisualiser;->repaint(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/daxappUI/IDsFragObserver;->onDsApiError()V

    return-void
.end method

.method public selectIEqPresetInUI(I)V
    .locals 11

    const v10, 0x7f0c0014

    const v9, 0x7f06001b

    const v8, 0x7f060005

    const/4 v7, -0x1

    iget-boolean v6, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-eqz v6, :cond_0

    if-ne p1, v7, :cond_0

    const/4 p1, 0x3

    :cond_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v6, p1}, Lcom/dolby/daxappUI/EqualizerAdapter;->setSelection(I)V

    :goto_0
    iget-boolean v6, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-nez v6, :cond_a

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v6}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_6

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    const v6, 0x7f0c001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    if-ne p1, v7, :cond_7

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-ne p1, v7, :cond_8

    invoke-virtual {p0, v9}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v6, 0x7f0c0015

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    if-eqz v6, :cond_4

    if-ne p1, v7, :cond_9

    const v6, 0x7f060015

    invoke-virtual {p0, v6}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->updateGraphicEqInUI()V

    return-void

    :cond_5
    iput p1, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mPreset:I

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v8}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v6, p1}, Lcom/dolby/daxappUI/EqualizerAdapter;->getItem(I)Lcom/dolby/daxappUI/EqualizerSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolby/daxappUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_a
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    const/4 v6, 0x3

    if-ne p1, v6, :cond_c

    invoke-virtual {p0, v9}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    const v6, 0x7f0c0015

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v6, p1}, Lcom/dolby/daxappUI/EqualizerAdapter;->getItem(I)Lcom/dolby/daxappUI/EqualizerSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolby/daxappUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0, v8}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6
.end method

.method setEnableEditGraphic(Z)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    iput-boolean p1, v0, Lcom/dolby/daxappUI/GraphicVisualiser;->mEnableEditTouch:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v2, p1}, Lcom/dolby/daxappUI/EqualizerAdapter;->setDolbyOnOff(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c0014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    const v2, 0x7f0c0015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    const v2, 0x7f0c001e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_3
    const v2, 0x7f0c001d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_4
    const v2, 0x7f0c0019

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_5
    const v2, 0x7f0c001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_6
    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    iget-boolean v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    :cond_8
    return-void
.end method

.method public setResetEqButtonVisibility()V
    .locals 6

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    sget-object v4, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v3, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/dolby/daxappUI/MainActivity;

    iget-object v5, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v4, v3, v5}, Lcom/dolby/daxappCoreUI/DsClientSettings;->getGeqOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c0016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateGraphicEqInUI()V
    .locals 5

    iget-object v3, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    invoke-virtual {v3}, Lcom/dolby/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/daxappUI/GraphicEqualizerPainter;

    move-result-object v0

    iget-object v3, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v3}, Lcom/dolby/daxappUI/EqualizerAdapter;->getSelection()I

    move-result v2

    :goto_0
    iget-boolean v3, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v2, -0x1

    :cond_2
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/dolby/daxappUI/IDsActivityCommon;

    invoke-interface {v3}, Lcom/dolby/daxappUI/IDsActivityCommon;->useDsApiOnUiEvent()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolby/daxappUI/GraphicEqualizerPainter;->switchPreset(IIZ)V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/daxappUI/GraphicVisualiser;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/dolby/daxappUI/GraphicVisualiser;->repaint(Z)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    return-void

    :cond_3
    iget v2, p0, Lcom/dolby/daxappUI/FragGraphicVisualizer;->mPreset:I

    goto :goto_0
.end method

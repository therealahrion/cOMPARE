.class public Lcom/dolby/daxappUI/FragEqualizerPresets;
.super Landroid/app/Fragment;
.source "FragEqualizerPresets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolby/daxappUI/IEqualizerChangeListener;
.implements Lcom/dolby/api/IDsEvents;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDolbyClientConnected:Z

.field private mDsClient:Lcom/dolby/api/DsGlobalEx;

.field private mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

.field private mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

.field private mIEqPresets:Landroid/widget/GridView;

.field private mMobileLayout:Z

.field private mQmIntEq:Landroid/view/View;

.field private mSpecificObserver:Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;


# direct methods
.method static synthetic -get0(Lcom/dolby/daxappUI/FragEqualizerPresets;)Lcom/dolby/daxappUI/EqualizerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/dolby/daxappUI/FragEqualizerPresets;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/dolby/daxappUI/FragEqualizerPresets;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/FragEqualizerPresets;->chooseEqualizerSettinginUI(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    return-void
.end method

.method private chooseEqualizerSetting(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolby/daxappUI/FragEqualizerPresets;->selectIEqPresetInUI(I)V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;->setUserProfilePopulated()V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;->onProfileSettingsChanged()V

    return-void
.end method

.method private chooseEqualizerSettinginUI(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/dolby/daxappUI/MainActivity;

    iget-object v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/dolby/daxappCoreUI/DsClientSettings;->setIeqPreset(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/dolby/daxappUI/FragEqualizerPresets;->selectIEqPresetInUI(I)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/FragEqualizerPresets;->chooseEqualizerSetting(I)V

    return-void
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 4

    iget-boolean v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getActivity()Landroid/app/Activity;

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

    invoke-direct {p0, v2}, Lcom/dolby/daxappUI/FragEqualizerPresets;->chooseEqualizerSettinginUI(I)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getView()Landroid/view/View;

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

    invoke-direct {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->resetGEqOnUserClick()V

    goto :goto_0
.end method

.method private resetGEqOnUserClick()V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;->resetEqUserGains()V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;->onProfileSettingsChanged()V

    return-void
.end method


# virtual methods
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

    iput-object v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iput-object p1, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/daxappUI/IDsFragObserver;->getDsClient()Lcom/dolby/api/DsGlobalEx;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mDsClient:Lcom/dolby/api/DsGlobalEx;

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

    const-string/jumbo v4, " must implement IDsFragEqualizerPresetsObserver"

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

    iget-object v1, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;

    const v2, 0x7f060032

    const v3, 0x7f060033

    invoke-interface {v1, p1, v2, v3}, Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;->displayTooltip(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/FragEqualizerPresets;->onDolbyClientUseClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClientConnected()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const v10, 0x7f0c0015

    const v9, 0x7f0c0014

    const/4 v6, 0x0

    const v5, 0x7f030003

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v7, 0x7f090000

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    filled-new-array {v9, v10}, [I

    move-result-object v1

    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget v0, v1, v5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-boolean v8, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/dolby/daxappUI/Assets$FontType;->LIGHT:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static {v8}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/dolby/daxappUI/Assets$FontType;->REGULAR:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static {v8}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_2
    iget-boolean v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    sget-object v5, Lcom/dolby/daxappUI/Assets$FontType;->MEDIUM:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static {v5}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    const v5, 0x7f0c0017

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v5, :cond_5

    new-instance v5, Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/dolby/daxappUI/FragEqualizerPresets$1;

    invoke-direct {v8, p0}, Lcom/dolby/daxappUI/FragEqualizerPresets$1;-><init>(Lcom/dolby/daxappUI/FragEqualizerPresets;)V

    const v9, 0x7f030001

    invoke-direct {v5, v7, v9, v8}, Lcom/dolby/daxappUI/EqualizerAdapter;-><init>(Landroid/content/Context;ILcom/dolby/daxappUI/EqualizerAdapter$IPresetListener;)V

    iput-object v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    iget-object v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    new-instance v7, Lcom/dolby/daxappUI/FragEqualizerPresets$2;

    invoke-direct {v7, p0}, Lcom/dolby/daxappUI/FragEqualizerPresets$2;-><init>(Lcom/dolby/daxappUI/FragEqualizerPresets;)V

    invoke-virtual {v5, v7}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const v5, 0x7f0c001e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_6
    const v5, 0x7f0c0016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_7
    const v5, 0x7f0c001c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    iget-object v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_8
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

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;->onEqualizerEditStart()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v1, :cond_0

    const v1, 0x7f060032

    const v2, 0x7f060033

    invoke-static {v1, v2}, Lcom/dolby/daxappUI/TooltipDialog;->newInstance(II)Lcom/dolby/daxappUI/TooltipDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/DialogFragment;->setShowsDialog(Z)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "TooltipDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v3

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onProfileSelected(I)V
    .locals 0

    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;->equalizerPresetsAreAlive()V

    :cond_0
    return-void
.end method

.method public selectIEqPresetInUI(I)V
    .locals 9

    const v8, 0x7f0c0014

    const v7, 0x7f06001b

    const v6, 0x7f060005

    const/4 v5, -0x1

    iget-boolean v4, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v4, :cond_0

    if-ne p1, v5, :cond_0

    const/4 p1, 0x3

    :cond_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v4, p1}, Lcom/dolby/daxappUI/EqualizerAdapter;->setSelection(I)V

    iget-boolean v4, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-nez v4, :cond_7

    const v4, 0x7f0c001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ne p1, v5, :cond_4

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-ne p1, v5, :cond_5

    invoke-virtual {p0, v7}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v4, 0x7f0c0015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    if-ne p1, v5, :cond_6

    const v4, 0x7f060015

    invoke-virtual {p0, v4}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    return-void

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v6}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v4, p1}, Lcom/dolby/daxappUI/EqualizerAdapter;->getItem(I)Lcom/dolby/daxappUI/EqualizerSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolby/daxappUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    const/4 v4, 0x3

    if-ne p1, v4, :cond_9

    invoke-virtual {p0, v7}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const v4, 0x7f0c0015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v4, p1}, Lcom/dolby/daxappUI/EqualizerAdapter;->getItem(I)Lcom/dolby/daxappUI/EqualizerSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolby/daxappUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v6}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method public setEnabled(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v2, p1}, Lcom/dolby/daxappUI/EqualizerAdapter;->setDolbyOnOff(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/daxappUI/EqualizerAdapter;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getView()Landroid/view/View;

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
    iget-object v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    return-void
.end method

.method public setResetEqButtonVisibility()V
    .locals 6

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    sget-object v4, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v3, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/dolby/daxappUI/MainActivity;

    iget-object v5, p0, Lcom/dolby/daxappUI/FragEqualizerPresets;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v4, v3, v5}, Lcom/dolby/daxappCoreUI/DsClientSettings;->getGeqOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->getView()Landroid/view/View;

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
    .locals 0

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    return-void
.end method

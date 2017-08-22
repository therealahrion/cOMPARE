.class public Lcom/dolby/daxappUI/FragProfilePresets;
.super Landroid/app/Fragment;
.source "FragProfilePresets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/dolby/api/IDsEvents;


# static fields
.field public static profile:I


# instance fields
.field private mDolbyClientConnected:Z

.field private mDsClient:Lcom/dolby/api/DsGlobalEx;

.field private mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

.field private mMobileLayout:Z

.field private mNativeRootContainer:Landroid/view/ViewGroup;

.field private mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

.field private mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;


# direct methods
.method static synthetic -get0(Lcom/dolby/daxappUI/FragProfilePresets;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/dolby/daxappUI/FragProfilePresets;->profile:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mDolbyClientConnected:Z

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mMobileLayout:Z

    return-void
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mDolbyClientConnected:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/daxappUI/IDsFragObserver;->useDsApiOnUiEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0c0048

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v2, v1}, Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;->profileReset(I)V

    :cond_0
    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ProfilesAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getSelection()I
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/dolby/daxappUI/ProfilesAdapter;->getSelection()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
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

    iput-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/daxappUI/IDsFragObserver;->getDsClient()Lcom/dolby/api/DsGlobalEx;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresets;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mMobileLayout:Z

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

    const-string/jumbo v4, " must implement IDsFragProfilePresetsObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/FragProfilePresets;->onDolbyClientUseClick(Landroid/view/View;)V

    return-void
.end method

.method public onClientConnected()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mDolbyClientConnected:Z

    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mMobileLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;->profilePresetsAreAlive()V

    :cond_0
    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mDolbyClientConnected:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    new-instance v3, Lcom/dolby/daxappUI/ProfilesAdapter;

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresets;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/MainActivity;

    iget-object v4, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    const v5, 0x7f03000c

    invoke-direct {v3, v2, v5, v4, p0}, Lcom/dolby/daxappUI/ProfilesAdapter;-><init>(Lcom/dolby/daxappUI/MainActivity;ILcom/dolby/api/DsGlobalEx;Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    iget-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresets;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/dolby/daxappUI/ViewTools;->determineNativeViewContainer(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public onDsOn(Z)V
    .locals 0

    return-void
.end method

.method public onDsSuspended(Z)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x7

    sput p3, Lcom/dolby/daxappUI/FragProfilePresets;->profile:I

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.dolby.LAUNCH_DAX_INSTOREDEMO_APP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/dolby/daxappUI/FragProfilePresets;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mMobileLayout:Z

    if-nez v1, :cond_4

    if-ne p3, v2, :cond_2

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v1}, Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;->chooseExploreAtmosProfile()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v1}, Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;->hideExploreAtomsProfile()V

    :cond_3
    iget-boolean v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mMobileLayout:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v1}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v0

    add-int/lit8 v1, p3, -0x1

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v1}, Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;->editProfile()V

    return-void

    :cond_4
    if-ne p3, v2, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.dolby.EXPLORE_DOLBY_ATMOS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/dolby/daxappUI/FragProfilePresets;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dolby/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresets;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    if-nez v1, :cond_7

    :cond_6
    const-string/jumbo v1, "DsUI::MainActivity"

    const-string/jumbo v2, "FragProfilePresets.onItemClick(), getView() == null or mFObserver == null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresets;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_8

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v1}, Lcom/dolby/daxappUI/IDsFragObserver;->useDsApiOnUiEvent()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;->chooseProfile(I)V

    :cond_8
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    const v2, 0x7f0c0024

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v1}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v0

    add-int/lit8 v1, p3, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/dolby/daxappUI/FragProfilePresets;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    invoke-virtual {v1, p3}, Lcom/dolby/daxappUI/ProfilesAdapter;->startEditingProfileName(I)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/dolby/daxappUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onProfileNameEditStarted()V
    .locals 3

    const-string/jumbo v1, "DsUI::MainActivity"

    const-string/jumbo v2, "Main.onProfileNameEditStarted()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresets;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/dolby/daxappCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/dolby/daxappUI/FragProfilePresets$1;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/FragProfilePresets$1;-><init>(Lcom/dolby/daxappUI/FragProfilePresets;)V

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

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

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mMobileLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;->profilePresetsAreAlive()V

    :cond_0
    return-void
.end method

.method public scheduleNotifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/dolby/daxappUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresets;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresets;->getView()Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/dolby/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    :cond_0
    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/daxappUI/ProfilesAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/daxappUI/ProfilesAdapter;->setSelection(I)V

    :cond_0
    return-void
.end method

.class public Lcom/dolby/daxappUI/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolby/api/IDsEvents;
.implements Lcom/dolby/api/IDsAccessEvents;
.implements Lcom/dolby/api/IDsProfileNameEvents;
.implements Lcom/dolby/daxappUI/IDsFragSwitchesObserver;
.implements Lcom/dolby/daxappUI/IDsFragPowerObserver;
.implements Lcom/dolby/daxappUI/IDsFragGraphicVisualizerObserver;
.implements Lcom/dolby/daxappUI/IDsFragObserver;
.implements Lcom/dolby/daxappUI/IDsFragProfilePresetsObserver;
.implements Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;
.implements Lcom/dolby/daxappUI/IDsFragEqualizerPresetsObserver;
.implements Lcom/dolby/daxappUI/IDsActivityCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/daxappUI/MainActivity$1;
    }
.end annotation


# static fields
.field private static mEditProfile:Z

.field private static mOnDestroyTimer:J


# instance fields
.field private configuration:Lcom/dolby/daxappCoreUI/Configuration;

.field private mDSLogo:Landroid/widget/ImageView;

.field private mDolbyClientConnected:Z

.field private final mDsClient:Lcom/dolby/api/DsGlobalEx;

.field private mExploreDolbyAtmosClicked:Z

.field private mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

.field private mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

.field private mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

.field private mFS:Lcom/dolby/daxappUI/FragSwitches;

.field private mIsActivityRunning:Z

.field private mIsMonoSpeaker:Z

.field private mIsScreenOn:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMobileLayout:Z

.field private mNativeRootContainer:Landroid/view/ViewGroup;

.field private mOnPauseFlag:Z

.field private mOriginX:I

.field private mOriginY:I

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mScrollview:Landroid/widget/ScrollView;

.field private mShowMainUi:Ljava/lang/Runnable;

.field private mSplashClientBound:Z

.field private mSplashScreenDelay:Ljava/lang/Runnable;

.field private mSplashScreenDialog:Landroid/app/Dialog;

.field private mSplashTimerElapsed:Z

.field private mUseDsApiOnUiEvent:Z

.field private mVisualizerRegistered:Z


# direct methods
.method static synthetic -get0(Lcom/dolby/daxappUI/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/dolby/daxappUI/MainActivity;)Lcom/dolby/api/DsGlobalEx;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    return-object v0
.end method

.method static synthetic -get2(Lcom/dolby/daxappUI/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic -get3(Lcom/dolby/daxappUI/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/MainActivity;->mOriginX:I

    return v0
.end method

.method static synthetic -get4(Lcom/dolby/daxappUI/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/MainActivity;->mOriginY:I

    return v0
.end method

.method static synthetic -set0(Lcom/dolby/daxappUI/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/daxappUI/MainActivity;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/dolby/daxappUI/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashTimerElapsed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/dolby/daxappUI/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dolby/daxappUI/MainActivity;->doInitMainUI()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/dolby/daxappUI/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dolby/daxappUI/MainActivity;->hideSplashScreen()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/dolby/daxappUI/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/MainActivity;->registerVisualizer(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolby/daxappUI/MainActivity;->mEditProfile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/dolby/api/DsGlobalEx;

    invoke-direct {v0}, Lcom/dolby/api/DsGlobalEx;-><init>()V

    iput-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    iput-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    iput-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashTimerElapsed:Z

    iput-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashClientBound:Z

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    iput-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mVisualizerRegistered:Z

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    iput-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    iput-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mIsScreenOn:Z

    iput-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mIsActivityRunning:Z

    iput-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mIsMonoSpeaker:Z

    iput-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mExploreDolbyAtmosClicked:Z

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mOnPauseFlag:Z

    new-instance v0, Lcom/dolby/daxappUI/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/MainActivity$1;-><init>(Lcom/dolby/daxappUI/MainActivity;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private displaySplashScreen()Z
    .locals 9

    const v8, 0x7f03000f

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-wide v4, Lcom/dolby/daxappUI/MainActivity;->mOnDestroyTimer:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    sget-wide v4, Lcom/dolby/daxappUI/MainActivity;->mOnDestroyTimer:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    new-instance v2, Lcom/dolby/daxappUI/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/dolby/daxappUI/MainActivity$3;-><init>(Lcom/dolby/daxappUI/MainActivity;)V

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    sget-object v2, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v2
.end method

.method private displayTooltip(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mNativeRootContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mNativeRootContainer:Landroid/view/ViewGroup;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/dolby/daxappUI/ViewTools;->showTooltip(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    return-void
.end method

.method private doInitMainUI()V
    .locals 6

    const/4 v5, 0x0

    const v2, 0x7f03000b

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/dolby/daxappUI/MainActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x7f0c0032

    invoke-virtual {p0, v2}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    invoke-static {p0}, Lcom/dolby/daxappUI/ViewTools;->determineNativeViewContainer(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mNativeRootContainer:Landroid/view/ViewGroup;

    const-string/jumbo v2, "DsUI::MainActivity"

    const-string/jumbo v3, "doInitMainUI - mDsClient.bindDsService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2, p0, p0}, Lcom/dolby/api/DsGlobalEx;->registerClient(Landroid/content/Context;Lcom/dolby/api/IDsAccessEvents;)Z

    :cond_0
    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->configuration:Lcom/dolby/daxappCoreUI/Configuration;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolby/daxappCoreUI/Configuration;->getInstance(Landroid/content/Context;)Lcom/dolby/daxappCoreUI/Configuration;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->configuration:Lcom/dolby/daxappCoreUI/Configuration;

    const-string/jumbo v2, "DsUI::MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doInitMainUI - NEW CONFIG:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->configuration:Lcom/dolby/daxappCoreUI/Configuration;

    invoke-virtual {v4}, Lcom/dolby/daxappCoreUI/Configuration;->getMaxEditGain_DS2()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->configuration:Lcom/dolby/daxappCoreUI/Configuration;

    invoke-virtual {v4}, Lcom/dolby/daxappCoreUI/Configuration;->getMinEditGain_DS2()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    iget-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/dolby/daxappUI/FragProfilePresets;

    invoke-direct {v2}, Lcom/dolby/daxappUI/FragProfilePresets;-><init>()V

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    const v4, 0x7f0c0035

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    sget-boolean v2, Lcom/dolby/daxappUI/MainActivity;->mEditProfile:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->editProfile()V

    :cond_3
    iget-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-nez v2, :cond_4

    sget v1, Lcom/dolby/daxappUI/FragProfilePresets;->profile:I

    if-eqz v1, :cond_4

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->chooseExploreAtmosProfile()V

    :cond_4
    invoke-direct {p0, v5}, Lcom/dolby/daxappUI/MainActivity;->internalOnDsOn(Z)V

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private hideSplashScreen()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashTimerElapsed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashClientBound:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private internalOnDsOn(Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/dolby/daxappUI/MainActivity;->powerOnOff(Z)V

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dolby/daxappUI/MainActivity;->chooseProfile(I)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/dolby/daxappUI/MainActivity;->registerVisualizer(Z)V

    :goto_0
    iget-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolby/daxappUI/FragProfilePresets;->scheduleNotifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/dolby/daxappUI/MainActivity;->registerVisualizer(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragProfilePresets;

    goto :goto_1
.end method

.method private registerVisualizer(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mVisualizerRegistered:Z

    if-ne v1, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mIsScreenOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mIsActivityRunning:Z

    if-eqz v1, :cond_2

    iput-boolean p1, p0, Lcom/dolby/daxappUI/MainActivity;->mVisualizerRegistered:Z

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->registerVisualizer(Z)V

    :cond_2
    return-void
.end method

.method private unbindFromDsApi()V
    .locals 2

    iget-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DsUI::MainActivity"

    const-string/jumbo v1, "MainActivity.unBindDsService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/dolby/api/DsGlobalEx;->unregisterDsEvents()V

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/dolby/api/DsGlobalEx;->abandonAccessRight()I

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/dolby/api/DsGlobalEx;->unregisterClient()V

    :cond_0
    return-void
.end method

.method private updateProfileNames()V
    .locals 5

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->checkAccessRight()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->requestAccessRight()I

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/dolby/api/DsProfileName;

    invoke-direct {v0}, Lcom/dolby/api/DsProfileName;-><init>()V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolby/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/dolby/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Lcom/dolby/api/DsGlobalEx;->setProfileName(ILcom/dolby/api/DsProfileName;)I

    new-instance v1, Lcom/dolby/api/DsProfileName;

    invoke-direct {v1}, Lcom/dolby/api/DsProfileName;-><init>()V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dolby/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/dolby/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Lcom/dolby/api/DsGlobalEx;->setProfileName(ILcom/dolby/api/DsProfileName;)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public changeScale()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v2, v2

    const/high16 v3, 0x44480000    # 800.0f

    div-float/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void

    :cond_0
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x168

    if-lt v2, v3, :cond_1

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method public chooseExploreAtmosProfile()V
    .locals 14

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/dolby/daxappUI/MainActivity;->mExploreDolbyAtmosClicked:Z

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    const v12, 0x7f0c0039

    invoke-virtual {v11, v12}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/dolby/daxappUI/FragProfilePresets;

    const/4 v11, 0x6

    invoke-virtual {v7, v11}, Lcom/dolby/daxappUI/FragProfilePresets;->getItemName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x6

    invoke-virtual {v7, v11}, Lcom/dolby/daxappUI/FragProfilePresets;->setSelection(I)V

    const/4 v11, 0x7

    invoke-virtual {p0, v11, v8}, Lcom/dolby/daxappUI/MainActivity;->onProfileNameChanged(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v6, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v6, v11, :cond_2

    const v11, 0x7f0c003b

    invoke-virtual {p0, v11}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v11, 0x7f0c0012

    invoke-virtual {p0, v11}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030002

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v11, 0x7f0c003a

    invoke-virtual {p0, v11}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v11, 0x7f0c0013

    invoke-virtual {v3, v11}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->setInitStatus()V

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v11, 0x1

    if-ne v6, v11, :cond_0

    const v11, 0x7f0c0041

    invoke-virtual {p0, v11}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    const v11, 0x7f0c0012

    invoke-virtual {p0, v11}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030002

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v11, 0x7f0c0040

    invoke-virtual {p0, v11}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v11, 0x7f0c0013

    invoke-virtual {v3, v11}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->setInitStatus()V

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public chooseProfile(I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v3

    if-eq v3, p1, :cond_1

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/dolby/api/DsGlobalEx;->checkAccessRight()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/dolby/api/DsGlobalEx;->requestAccessRight()I

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5, p1}, Lcom/dolby/api/DsGlobalEx;->setProfile(I)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v5, :cond_5

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    :goto_0
    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mExploreDolbyAtmosClicked:Z

    if-eqz v5, :cond_2

    const/4 p1, 0x6

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Lcom/dolby/daxappUI/FragProfilePresets;->getItemName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1}, Lcom/dolby/daxappUI/FragProfilePresets;->setSelection(I)V

    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v5, :cond_6

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->cancelPendingEdition()V

    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/dolby/daxappUI/MainActivity;->onProfileNameChanged(ILjava/lang/String;)V

    :cond_4
    iput-boolean v7, p0, Lcom/dolby/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->onProfileSettingsChanged()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0039

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/FragProfilePresets;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0042

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/daxappUI/FragProfilePresetEditor;

    goto :goto_1
.end method

.method public displayTooltip(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/dolby/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/dolby/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/dolby/daxappUI/MainActivity;->displayTooltip(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public editProfile()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v5

    if-eq v7, v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    if-nez v5, :cond_4

    sput-boolean v7, Lcom/dolby/daxappUI/MainActivity;->mEditProfile:Z

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0001

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v7}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->setEnableEditGraphic(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v5, 0x2002

    invoke-virtual {v2, v5}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    invoke-virtual {v2, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    new-instance v5, Lcom/dolby/daxappUI/FragProfilePresetEditor;

    invoke-direct {v5}, Lcom/dolby/daxappUI/FragProfilePresetEditor;-><init>()V

    iput-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    new-instance v5, Lcom/dolby/daxappUI/FragSwitches;

    invoke-direct {v5}, Lcom/dolby/daxappUI/FragSwitches;-><init>()V

    iput-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    new-instance v5, Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-direct {v5}, Lcom/dolby/daxappUI/FragEqualizerPresets;-><init>()V

    iput-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    const v0, 0x7f0c0035

    invoke-static {p0}, Lcom/dolby/daxappCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    const v6, 0x7f0c0034

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->setId(I)V

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x7f0c0035

    invoke-virtual {p0, v5}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    :cond_2
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v5, 0x1001

    invoke-virtual {v2, v5}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    const v6, 0x7f0c0033

    invoke-virtual {v2, v6, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    invoke-virtual {v2, v0, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-virtual {v2, v0, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    const v5, 0x7f0c0034

    invoke-virtual {p0, v5}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/dolby/daxappCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v5

    iput v5, p0, Lcom/dolby/daxappUI/MainActivity;->mOriginX:I

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    iput v5, p0, Lcom/dolby/daxappUI/MainActivity;->mOriginY:I

    :cond_3
    invoke-virtual {v4, v10, v10}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_4
    return-void
.end method

.method public equalizerPresetsAreAlive()V
    .locals 4

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-virtual {v3}, Lcom/dolby/daxappUI/FragEqualizerPresets;->onClientConnected()V

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-virtual {v3}, Lcom/dolby/daxappUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-virtual {v3, v2}, Lcom/dolby/daxappUI/FragEqualizerPresets;->setEnabled(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dolby/daxappUI/MainActivity;->chooseProfile(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfiguration()Lcom/dolby/daxappCoreUI/Configuration;
    .locals 3

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->configuration:Lcom/dolby/daxappCoreUI/Configuration;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolby/daxappCoreUI/Configuration;->getInstance(Landroid/content/Context;)Lcom/dolby/daxappCoreUI/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->configuration:Lcom/dolby/daxappCoreUI/Configuration;

    const-string/jumbo v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConfiguration - NEW CONFIG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->configuration:Lcom/dolby/daxappCoreUI/Configuration;

    invoke-virtual {v2}, Lcom/dolby/daxappCoreUI/Configuration;->getMaxEditGain_DS2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->configuration:Lcom/dolby/daxappCoreUI/Configuration;

    invoke-virtual {v2}, Lcom/dolby/daxappCoreUI/Configuration;->getMinEditGain_DS2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->configuration:Lcom/dolby/daxappCoreUI/Configuration;

    return-object v0
.end method

.method public getDsClient()Lcom/dolby/api/DsGlobalEx;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    return-object v0
.end method

.method public getProfileSelected()I
    .locals 3

    iget-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dolby/daxappUI/FragProfilePresets;->getSelection()I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0039

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragProfilePresets;

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public hideExploreAtomsProfile()V
    .locals 14

    const v13, 0x7f0c0013

    const v12, 0x7f0c0012

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/dolby/daxappUI/MainActivity;->mExploreDolbyAtmosClicked:Z

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v7, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_2

    const v10, 0x7f0c003a

    invoke-virtual {p0, v10}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v12}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v3, v13}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const v10, 0x7f0c003b

    invoke-virtual {p0, v10}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v10, 0x1

    if-ne v7, v10, :cond_1

    const v10, 0x7f0c0040

    invoke-virtual {p0, v10}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v12}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v3, v13}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_3
    const v10, 0x7f0c0041

    invoke-virtual {p0, v10}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public isDolbyClientConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    return v0
.end method

.method public isMonoSpeaker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mIsMonoSpeaker:Z

    return v0
.end method

.method public onAccessAvailable()V
    .locals 2

    const-string/jumbo v0, "DsUI::MainActivity"

    const-string/jumbo v1, "onAccessAvailable() ------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/dolby/api/DsGlobalEx;->checkAccessRight()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/dolby/api/DsGlobalEx;->requestAccessRight()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolby/daxappUI/MainActivity;->onDsClientUseChanged(Z)V

    return-void
.end method

.method public onAccessForceReleased(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "DsUI::MainActivity"

    const-string/jumbo v1, "onAccessForceReleased() ------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAccessRequested(Ljava/lang/String;I)Z
    .locals 2

    const-string/jumbo v0, "DsUI::MainActivity"

    const-string/jumbo v1, "onAccessRequested() ------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 9

    const v8, 0x7f0c0035

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    if-eqz v4, :cond_3

    sput-boolean v7, Lcom/dolby/daxappUI/MainActivity;->mEditProfile:Z

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0c0001

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->hideEqualizer()V

    invoke-virtual {v2, v7}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->setEnableEditGraphic(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v4, 0x2002

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    iput-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    iput-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    iput-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-static {p0}, Lcom/dolby/daxappCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v8}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mScrollview:Landroid/widget/ScrollView;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v4, 0x1001

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    invoke-virtual {v1, v8, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :goto_1
    return-void

    :cond_2
    const v4, 0x7f0c0034

    invoke-virtual {p0, v4}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    if-eqz v3, :cond_1

    new-instance v4, Lcom/dolby/daxappUI/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/dolby/daxappUI/MainActivity$4;-><init>(Lcom/dolby/daxappUI/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c0032

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0001

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->hideEqualizer()V

    :cond_0
    return-void
.end method

.method public onClientConnected()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string/jumbo v5, "DsUI::MainActivity"

    const-string/jumbo v6, "onClientConnected() ------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5, p0}, Lcom/dolby/api/DsGlobalEx;->registerDsEvents(Lcom/dolby/api/IDsEvents;)V

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/dolby/api/DsGlobalEx;->requestAccessRight()I

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v5, "DsUI::MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onClientConnected() request audio focuse failed, result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v5, "DsUI::MainActivity"

    const-string/jumbo v6, "onClientConnected() request audio focuse successfully!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    iput-boolean v8, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashClientBound:Z

    invoke-direct {p0}, Lcom/dolby/daxappUI/MainActivity;->updateProfileNames()V

    :try_start_0
    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/dolby/api/DsGlobalEx;->isMonoSpeaker()Z

    move-result v5

    iput-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mIsMonoSpeaker:Z

    const-string/jumbo v5, "DsUI::MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsMonoSpeaker = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/dolby/daxappUI/MainActivity;->mIsMonoSpeaker:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/dolby/daxappUI/MainActivity;->hideSplashScreen()V

    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v5, :cond_5

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/dolby/daxappUI/FragProfilePresets;->onClientConnected()V

    :cond_1
    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v5, :cond_6

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->onClientConnected()V

    :cond_2
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0001

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->onClientConnected()V

    :cond_3
    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-virtual {v5}, Lcom/dolby/daxappUI/FragEqualizerPresets;->onClientConnected()V

    :cond_4
    iput-boolean v9, p0, Lcom/dolby/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    invoke-virtual {p0, v8}, Lcom/dolby/daxappUI/MainActivity;->onDsClientUseChanged(Z)V

    iput-boolean v8, p0, Lcom/dolby/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->onDsApiError()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0039

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/dolby/daxappUI/FragProfilePresets;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0042

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/FragProfilePresetEditor;

    goto :goto_1
.end method

.method public onClientDisconnected()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->onClientDisconnected()V

    :cond_0
    iget-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-virtual {v3}, Lcom/dolby/daxappUI/FragEqualizerPresets;->onClientDisconnected()V

    :cond_1
    iget-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->onClientDisconnected()V

    :cond_2
    iget-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/dolby/daxappUI/FragProfilePresets;->onClientDisconnected()V

    :cond_3
    iput-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    invoke-virtual {p0, v5}, Lcom/dolby/daxappUI/MainActivity;->onDsClientUseChanged(Z)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0c0042

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/daxappUI/FragProfilePresetEditor;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0c0039

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/FragProfilePresets;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappCoreUI/DAXApplication;

    invoke-virtual {v2}, Lcom/dolby/daxappCoreUI/DAXApplication;->printScreenSpecs()V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/dolby/daxappCoreUI/Constants;->STATUS_BAR_HEIGHT:I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->changeScale()V

    invoke-static {p0}, Lcom/dolby/daxappUI/Assets;->init(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/dolby/daxappUI/MainActivity;->requestWindowFeature(I)Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/dolby/daxappUI/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/dolby/daxappUI/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    iput-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mIsScreenOn:Z

    new-instance v2, Lcom/dolby/daxappUI/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/dolby/daxappUI/MainActivity$2;-><init>(Lcom/dolby/daxappUI/MainActivity;)V

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/dolby/daxappUI/MainActivity;->displaySplashScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f040000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    const/16 v3, 0x3e9

    const v4, 0x7f060021

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/dolby/daxappUI/MainActivity;->mOnDestroyTimer:J

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/dolby/daxappUI/MainActivity;->hideSplashScreen()V

    :cond_0
    invoke-direct {p0}, Lcom/dolby/daxappUI/MainActivity;->unbindFromDsApi()V

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->configuration:Lcom/dolby/daxappCoreUI/Configuration;

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dolby/daxappUI/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDsApiError()V
    .locals 0

    invoke-direct {p0}, Lcom/dolby/daxappUI/MainActivity;->unbindFromDsApi()V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->finish()V

    return-void
.end method

.method public onDsClientUseChanged(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0c0013

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->setInitStatus()V

    :cond_0
    if-eqz p1, :cond_5

    iget-boolean v4, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0c0001

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->updateGraphicEqInUI()V

    :cond_1
    iget-boolean v4, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-virtual {v4}, Lcom/dolby/daxappUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    :cond_2
    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v4}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v4

    if-ne v0, v4, :cond_4

    :goto_0
    invoke-direct {p0, v0}, Lcom/dolby/daxappUI/MainActivity;->internalOnDsOn(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Lcom/dolby/daxappUI/MainActivity;->registerVisualizer(Z)V

    goto :goto_1
.end method

.method public onDsOn(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/MainActivity;->internalOnDsOn(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    return-void
.end method

.method public onDsSuspended(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/dolby/daxappUI/MainActivity;->onDsOn(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onEqualizerEditStart()V
    .locals 4

    iget-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    :cond_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->setUserProfilePopulated()V

    iget-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/dolby/daxappUI/FragProfilePresets;->scheduleNotifyDataSetChanged()V

    :cond_1
    iget-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/daxappUI/FragProfilePresets;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0042

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragProfilePresetEditor;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.dolby.LAUNCH_DAX_INSTOREDEMO_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dolby/daxappUI/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mOnPauseFlag:Z

    invoke-virtual {p0, v2}, Lcom/dolby/daxappUI/MainActivity;->onDsClientUseChanged(Z)V

    iput-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mIsActivityRunning:Z

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/dolby/api/DsGlobalEx;->abandonAccessRight()I

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/dolby/api/DsGlobalEx;->unregisterDsEvents()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 4

    iget-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/dolby/daxappUI/FragProfilePresets;->onProfileNameChanged(ILjava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->onProfileNameChanged(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/daxappUI/FragProfilePresets;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0042

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragProfilePresetEditor;

    goto :goto_1
.end method

.method public onProfileNameEditEnded()V
    .locals 0

    return-void
.end method

.method public onProfileNameEditStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0039

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragProfilePresets;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolby/daxappUI/FragProfilePresets;->onProfileNameEditStarted()V

    :cond_0
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v1}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/dolby/daxappUI/MainActivity;->internalOnDsOn(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProfileSettingsChanged()V
    .locals 7

    const-string/jumbo v5, "DsUI::MainActivity"

    const-string/jumbo v6, "onProfileSettingsChanged()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v5, :cond_4

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/dolby/daxappUI/FragProfilePresets;->scheduleNotifyDataSetChanged()V

    :cond_0
    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v5, :cond_5

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    :cond_1
    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v5, :cond_6

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/dolby/daxappUI/FragSwitches;->onProfileSettingsChanged()V

    :cond_2
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0001

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    :cond_3
    sget-object v5, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v5, p0, v6}, Lcom/dolby/daxappCoreUI/DsClientSettings;->getIeqPreset(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)I

    move-result v1

    const/4 v5, -0x1

    if-ne v5, v1, :cond_7

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0039

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/dolby/daxappUI/FragProfilePresets;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0042

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/FragProfilePresetEditor;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c003e

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/dolby/daxappUI/FragSwitches;

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->selectIEqPresetInUI(I)V

    :cond_8
    iget-boolean v5, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-virtual {v5}, Lcom/dolby/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/dolby/daxappUI/FragEqualizerPresets;->selectIEqPresetInUI(I)V

    :cond_9
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 3

    const-string/jumbo v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProfileSettingsChanged(), profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->onProfileSettingsChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mOnPauseFlag:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mOnPauseFlag:Z

    iput-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashClientBound:Z

    :try_start_0
    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    iput-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/dolby/daxappUI/MainActivity;->displaySplashScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v1, p0}, Lcom/dolby/api/DsGlobalEx;->registerDsEvents(Lcom/dolby/api/IDsEvents;)V

    :cond_1
    invoke-direct {p0}, Lcom/dolby/daxappUI/MainActivity;->updateProfileNames()V

    iput-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mIsActivityRunning:Z

    invoke-virtual {p0, v3}, Lcom/dolby/daxappUI/MainActivity;->onDsClientUseChanged(Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public powerOnOff(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0c0031

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/dolby/daxappUI/FragPower;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lcom/dolby/daxappUI/FragPower;->setEnabled(Z)V

    :cond_0
    iget-object v7, p0, Lcom/dolby/daxappUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    const v6, 0x7f02000f

    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v6, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    if-nez v6, :cond_8

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lcom/dolby/daxappUI/FragProfilePresets;->setEnabled(Z)V

    :cond_1
    iget-boolean v6, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v6, :cond_a

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->setEnabled(Z)V

    :cond_2
    iget-boolean v6, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v6, :cond_b

    iget-object v5, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    :goto_3
    if-eqz v5, :cond_3

    invoke-virtual {v5, p1}, Lcom/dolby/daxappUI/FragSwitches;->setEnabled(Z)V

    :cond_3
    iget-boolean v6, p0, Lcom/dolby/daxappUI/MainActivity;->mIsScreenOn:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0c0001

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->setEnabled(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0c0013

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/dolby/daxappUI/FragExploreDolbyAtmos;->setInitStatus()V

    :cond_5
    iget-boolean v6, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/dolby/daxappUI/MainActivity;->mFEP:Lcom/dolby/daxappUI/FragEqualizerPresets;

    invoke-virtual {v6, p1}, Lcom/dolby/daxappUI/FragEqualizerPresets;->setEnabled(Z)V

    :cond_6
    return-void

    :cond_7
    const v6, 0x7f020011

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0c0039

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/dolby/daxappUI/FragProfilePresets;

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0c0042

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/FragProfilePresetEditor;

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0c003e

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/dolby/daxappUI/FragSwitches;

    goto :goto_3
.end method

.method public profileEditorIsAlive()V
    .locals 4

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    invoke-virtual {v3}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->onClientConnected()V

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    invoke-virtual {v3, v2}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->setEnabled(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/daxappUI/MainActivity;->mFPPE:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    invoke-virtual {v3, v1}, Lcom/dolby/daxappUI/FragProfilePresets;->getItemName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->onProfileNameChanged(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public profilePresetsAreAlive()V
    .locals 6

    iget-boolean v4, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v4}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mFPP:Lcom/dolby/daxappUI/FragProfilePresets;

    invoke-virtual {v4, v0}, Lcom/dolby/daxappUI/FragProfilePresets;->setEnabled(Z)V

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v4}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v2

    const v4, 0x7f0c0024

    invoke-virtual {p0, v4}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/dolby/daxappUI/MainActivity;->chooseProfile(I)V

    const v4, 0x7f0c0034

    invoke-virtual {p0, v4}, Lcom/dolby/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    if-eqz v3, :cond_1

    new-instance v4, Lcom/dolby/daxappUI/MainActivity$5;

    invoke-direct {v4, p0, v2}, Lcom/dolby/daxappUI/MainActivity$5;-><init>(Lcom/dolby/daxappUI/MainActivity;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public profileReset(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->resetUserGains(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolby/daxappUI/MainActivity;->chooseProfile(I)V

    return-void
.end method

.method public resetEqUserGains()V
    .locals 3

    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/FragGraphicVisualizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolby/daxappUI/FragGraphicVisualizer;->resetUserGains()V

    :cond_0
    return-void
.end method

.method public setUserProfilePopulated()V
    .locals 0

    return-void
.end method

.method public switchesAreAlive()V
    .locals 4

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    invoke-virtual {v3, v2}, Lcom/dolby/daxappUI/FragSwitches;->setEnabled(Z)V

    iget-boolean v2, p0, Lcom/dolby/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/dolby/daxappUI/MainActivity;->mFS:Lcom/dolby/daxappUI/FragSwitches;

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolby/daxappUI/FragSwitches;->onProfileSettingsChanged()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/dolby/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c003e

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dolby/daxappUI/FragSwitches;

    goto :goto_1
.end method

.method public useDsApiOnUiEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    return v0
.end method

.class public Lcom/dolby/daxappUI/FragSwitches;
.super Landroid/app/Fragment;
.source "FragSwitches.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/daxappUI/FragSwitches$1;
    }
.end annotation


# instance fields
.field private mA2dpConnectionState:I

.field private mActivity:Landroid/app/Activity;

.field private mDsClient:Lcom/dolby/api/DsGlobalEx;

.field private mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

.field private mHeadset_active:Z

.field private mHeadset_disabled:Z

.field mHeadset_plug:I

.field private mMobileLayout:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSpecificObserver:Lcom/dolby/daxappUI/IDsFragSwitchesObserver;

.field private mUsbHeadset_plugged:Z

.field private mdeButton:Landroid/widget/ToggleButton;

.field private mdeText:Landroid/widget/TextView;

.field private mqm_de:Landroid/widget/ImageView;

.field private mqm_sv:Landroid/widget/ImageView;

.field private mqm_vl:Landroid/widget/ImageView;

.field private msvButton:Landroid/widget/ToggleButton;

.field private msvText:Landroid/widget/TextView;

.field private mvlButton:Landroid/widget/ToggleButton;

.field private mvlText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/dolby/daxappUI/FragSwitches;)I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mA2dpConnectionState:I

    return v0
.end method

.method static synthetic -get1(Lcom/dolby/daxappUI/FragSwitches;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/dolby/daxappUI/FragSwitches;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_disabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/dolby/daxappUI/FragSwitches;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mUsbHeadset_plugged:Z

    return v0
.end method

.method static synthetic -get4(Lcom/dolby/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic -get5(Lcom/dolby/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic -set0(Lcom/dolby/daxappUI/FragSwitches;I)I
    .locals 0

    iput p1, p0, Lcom/dolby/daxappUI/FragSwitches;->mA2dpConnectionState:I

    return p1
.end method

.method static synthetic -set1(Lcom/dolby/daxappUI/FragSwitches;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_active:Z

    return p1
.end method

.method static synthetic -set2(Lcom/dolby/daxappUI/FragSwitches;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_disabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/dolby/daxappUI/FragSwitches;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/daxappUI/FragSwitches;->mUsbHeadset_plugged:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/dolby/daxappUI/FragSwitches;)Z
    .locals 1

    invoke-direct {p0}, Lcom/dolby/daxappUI/FragSwitches;->getVirtualizer()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/dolby/daxappUI/FragSwitches;)Z
    .locals 1

    invoke-direct {p0}, Lcom/dolby/daxappUI/FragSwitches;->isHeadsetActive()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mMobileLayout:Z

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_disabled:Z

    iput v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_plug:I

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mUsbHeadset_plugged:Z

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_active:Z

    iput v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mA2dpConnectionState:I

    new-instance v0, Lcom/dolby/daxappUI/FragSwitches$1;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/FragSwitches$1;-><init>(Lcom/dolby/daxappUI/FragSwitches;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getVirtualizer()Z
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/MainActivity;->isMonoSpeaker()Z

    move-result v0

    iget-boolean v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_active:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/dolby/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v1, v2, v3}, Lcom/dolby/daxappCoreUI/DsClientSettings;->getHeadphoneVirtualizerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z

    move-result v2

    return v2

    :cond_0
    iget v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mA2dpConnectionState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    return v4

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/dolby/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v1, v2, v3}, Lcom/dolby/daxappCoreUI/DsClientSettings;->getSpeakerVirtualizerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z

    move-result v2

    return v2

    :cond_2
    return v4
.end method

.method private isHeadsetActive()Z
    .locals 6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    const-string/jumbo v3, "FragSwitches"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Active device is 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v3, 0x4000

    if-eq v1, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setVirtualizer(Z)V
    .locals 4

    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v1}, Lcom/dolby/daxappUI/MainActivity;->isMonoSpeaker()Z

    move-result v0

    iget-boolean v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_active:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_active:Z

    if-eqz v1, :cond_2

    sget-object v2, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/dolby/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2, v1, v3, p1}, Lcom/dolby/daxappCoreUI/DsClientSettings;->setHeadphoneVirtualizerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;Z)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    sget-object v2, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/dolby/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2, v1, v3, p1}, Lcom/dolby/daxappCoreUI/DsClientSettings;->setSpeakerVirtualizerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;Z)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/dolby/daxappUI/IDsFragObserver;

    move-object v4, v0

    iput-object v4, p0, Lcom/dolby/daxappUI/FragSwitches;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/daxappUI/IDsFragSwitchesObserver;

    move-object v4, v0

    iput-object v4, p0, Lcom/dolby/daxappUI/FragSwitches;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragSwitchesObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v4, p0, Lcom/dolby/daxappUI/FragSwitches;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v4}, Lcom/dolby/daxappUI/IDsFragObserver;->getDsClient()Lcom/dolby/api/DsGlobalEx;

    move-result-object v4

    iput-object v4, p0, Lcom/dolby/daxappUI/FragSwitches;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    iget-object v4, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    :goto_0
    iput v4, p0, Lcom/dolby/daxappUI/FragSwitches;->mA2dpConnectionState:I

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/dolby/daxappUI/FragSwitches;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " must implement IDsFragObserver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v2

    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " must implement IDsFragSwitchesObserver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v3}, Lcom/dolby/daxappUI/IDsFragSwitchesObserver;->onProfileSettingsChanged()V

    return-void

    :pswitch_1
    :try_start_0
    iget-boolean v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_active:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v3}, Lcom/dolby/daxappUI/MainActivity;->isMonoSpeaker()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/dolby/daxappUI/FragSwitches;->updateSVButtonImage(ZI)V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->cancelLongPress()V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/dolby/daxappUI/FragSwitches;->setVirtualizer(Z)V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v3}, Lcom/dolby/daxappUI/IDsFragSwitchesObserver;->setUserProfilePopulated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/daxappUI/IDsFragObserver;->onDsApiError()V

    return-void

    :pswitch_2
    :try_start_1
    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->cancelLongPress()V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/dolby/daxappUI/MainActivity;

    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    iget-object v4, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/dolby/daxappUI/MainActivity;

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2, v4, v8}, Lcom/dolby/daxappCoreUI/DsClientSettings;->getDialogEnhancerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v2, v3, v7, v5}, Lcom/dolby/daxappCoreUI/DsClientSettings;->setDialogEnhancerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;Z)Z

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v3}, Lcom/dolby/daxappUI/IDsFragSwitchesObserver;->setUserProfilePopulated()V

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->cancelLongPress()V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/dolby/daxappUI/MainActivity;

    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    iget-object v4, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/dolby/daxappUI/MainActivity;

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2, v4, v8}, Lcom/dolby/daxappCoreUI/DsClientSettings;->getVolumeLevellerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {v2, v3, v7, v4}, Lcom/dolby/daxappCoreUI/DsClientSettings;->setVolumeLevellerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;Z)Z

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v3}, Lcom/dolby/daxappUI/IDsFragSwitchesObserver;->setUserProfilePopulated()V

    goto/16 :goto_0

    :cond_2
    move v4, v6

    goto :goto_2

    :pswitch_4
    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragSwitchesObserver;

    const v4, 0x7f060034

    const v5, 0x7f060035

    invoke-interface {v3, p1, v4, v5}, Lcom/dolby/daxappUI/IDsFragSwitchesObserver;->displayTooltip(Landroid/view/View;II)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragSwitchesObserver;

    const v4, 0x7f060036

    const v5, 0x7f060037

    invoke-interface {v3, p1, v4, v5}, Lcom/dolby/daxappUI/IDsFragSwitchesObserver;->displayTooltip(Landroid/view/View;II)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragSwitchesObserver;

    const v4, 0x7f060038

    const v5, 0x7f060039

    invoke-interface {v3, p1, v4, v5}, Lcom/dolby/daxappUI/IDsFragSwitchesObserver;->displayTooltip(Landroid/view/View;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c0027
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13

    const v10, 0x7f030009

    const/4 v11, 0x0

    invoke-virtual {p1, v10, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragSwitches;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f090000

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mMobileLayout:Z

    const v10, 0x7f0c002a

    const v11, 0x7f0c0028

    const v12, 0x7f0c0026

    filled-new-array {v10, v11, v12}, [I

    move-result-object v5

    const/4 v10, 0x0

    array-length v11, v5

    :goto_0
    if-ge v10, v11, :cond_2

    aget v2, v5, v10

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-boolean v12, p0, Lcom/dolby/daxappUI/FragSwitches;->mMobileLayout:Z

    if-eqz v12, :cond_1

    sget-object v12, Lcom/dolby/daxappUI/Assets$FontType;->LIGHT:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static {v12}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    sget-object v12, Lcom/dolby/daxappUI/Assets$FontType;->REGULAR:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static {v12}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/dolby/daxappUI/ToggleSlideListener;

    invoke-direct {v4}, Lcom/dolby/daxappUI/ToggleSlideListener;-><init>()V

    const v10, 0x7f0c002b

    const v11, 0x7f0c0029

    const v12, 0x7f0c0027

    filled-new-array {v10, v11, v12}, [I

    move-result-object v1

    const/4 v10, 0x0

    array-length v11, v1

    :goto_2
    if-ge v10, v11, :cond_4

    aget v0, v1, v10

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v12, p0, Lcom/dolby/daxappUI/FragSwitches;->mMobileLayout:Z

    if-eqz v12, :cond_3

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    const v10, 0x7f0c002c

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mqm_sv:Landroid/widget/ImageView;

    const v10, 0x7f0c002e

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mqm_de:Landroid/widget/ImageView;

    const v10, 0x7f0c0030

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mqm_vl:Landroid/widget/ImageView;

    const v10, 0x7f0c002b

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    iput-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v10, 0x7f0c0029

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    iput-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    const v10, 0x7f0c0027

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    iput-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    const v10, 0x7f0c002a

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    const v10, 0x7f0c0028

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mdeText:Landroid/widget/TextView;

    const v10, 0x7f0c0026

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mvlText:Landroid/widget/TextView;

    const-string/jumbo v10, "EE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v10, "et"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_5
    const/4 v10, 0x3

    new-array v9, v10, [Landroid/view/View;

    iget-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mqm_sv:Landroid/widget/ImageView;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mqm_de:Landroid/widget/ImageView;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/dolby/daxappUI/FragSwitches;->mqm_vl:Landroid/widget/ImageView;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const/4 v10, 0x0

    array-length v11, v9

    :goto_3
    if-ge v10, v11, :cond_7

    aget-object v3, v9, v10

    if-eqz v3, :cond_6

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    return-object v7
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-boolean v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mMobileLayout:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    if-ne p1, v1, :cond_1

    const v1, 0x7f060038

    const v2, 0x7f060039

    invoke-static {v1, v2}, Lcom/dolby/daxappUI/TooltipDialog;->newInstance(II)Lcom/dolby/daxappUI/TooltipDialog;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    if-ne p1, v1, :cond_2

    const v1, 0x7f060036

    const v2, 0x7f060037

    invoke-static {v1, v2}, Lcom/dolby/daxappUI/TooltipDialog;->newInstance(II)Lcom/dolby/daxappUI/TooltipDialog;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-ne p1, v1, :cond_3

    const v1, 0x7f060034

    const v2, 0x7f060035

    invoke-static {v1, v2}, Lcom/dolby/daxappUI/TooltipDialog;->newInstance(II)Lcom/dolby/daxappUI/TooltipDialog;

    move-result-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragSwitches;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "TooltipDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onProfileSettingsChanged()V
    .locals 4

    sget-object v0, Lcom/dolby/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/dolby/daxappCoreUI/DsClientSettings;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Lcom/dolby/daxappUI/FragSwitches;->getVirtualizer()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/dolby/daxappUI/FragSwitches;->updateSVButtonImage(ZI)V

    :cond_0
    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/dolby/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v0, v1, v3}, Lcom/dolby/daxappCoreUI/DsClientSettings;->getDialogEnhancerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/dolby/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/dolby/daxappUI/FragSwitches;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v0, v1, v3}, Lcom/dolby/daxappCoreUI/DsClientSettings;->getVolumeLevellerOn(Lcom/dolby/daxappUI/MainActivity;Lcom/dolby/api/DsGlobalEx;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-direct {p0}, Lcom/dolby/daxappUI/FragSwitches;->isHeadsetActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_active:Z

    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mMobileLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragSwitchesObserver;->switchesAreAlive()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    iget-object v4, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/dolby/daxappUI/FragSwitches;->updateSVButtonImage(ZI)V

    iget-boolean v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_active:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/MainActivity;->isMonoSpeaker()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    iget-object v4, p0, Lcom/dolby/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/dolby/daxappUI/FragSwitches;->updateSVButtonImage(ZI)V

    :cond_0
    const/4 v2, 0x7

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mdeText:Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mvlText:Landroid/widget/TextView;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mqm_sv:Landroid/widget/ImageView;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mqm_de:Landroid/widget/ImageView;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/dolby/daxappUI/FragSwitches;->mqm_vl:Landroid/widget/ImageView;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateSVButtonImage(ZI)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne v1, p2, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    if-ne v1, p2, :cond_2

    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    if-ne v1, p2, :cond_4

    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/dolby/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

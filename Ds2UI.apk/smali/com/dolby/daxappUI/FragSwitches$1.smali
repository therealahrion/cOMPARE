.class Lcom/dolby/daxappUI/FragSwitches$1;
.super Landroid/content/BroadcastReceiver;
.source "FragSwitches.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/daxappUI/FragSwitches;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/FragSwitches;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/FragSwitches;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    const-string/jumbo v10, "state"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_plug:I

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget v9, v9, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_plug:I

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v9}, Lcom/dolby/daxappUI/FragSwitches;->-get1(Lcom/dolby/daxappUI/FragSwitches;)Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "audio"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    const-string/jumbo v9, "FragSwitches"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Active device is 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x4

    if-eq v3, v9, :cond_0

    const/16 v9, 0x8

    if-eq v3, v9, :cond_0

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iput v8, v9, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_plug:I

    :cond_0
    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v9, v8}, Lcom/dolby/daxappUI/FragSwitches;->-set2(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget v8, v8, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_plug:I

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v8, v7}, Lcom/dolby/daxappUI/FragSwitches;->-set1(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    :goto_0
    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v7}, Lcom/dolby/daxappUI/FragSwitches;->-get5(Lcom/dolby/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v7

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v8}, Lcom/dolby/daxappUI/FragSwitches;->-wrap0(Lcom/dolby/daxappUI/FragSwitches;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v8}, Lcom/dolby/daxappUI/FragSwitches;->-get4(Lcom/dolby/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/dolby/daxappUI/FragSwitches;->setEnabled(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v8}, Lcom/dolby/daxappUI/FragSwitches;->-wrap1(Lcom/dolby/daxappUI/FragSwitches;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/dolby/daxappUI/FragSwitches;->-set1(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v9, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "device"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v9

    if-ge v5, v9, :cond_1

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v9

    if-ne v9, v7, :cond_6

    const-string/jumbo v9, "FragSwitches"

    const-string/jumbo v10, "USB headphone plugged"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v9, v7}, Lcom/dolby/daxappUI/FragSwitches;->-set3(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v9}, Lcom/dolby/daxappUI/FragSwitches;->-get0(Lcom/dolby/daxappUI/FragSwitches;)I

    move-result v9

    if-ne v9, v11, :cond_5

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget-object v10, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v10}, Lcom/dolby/daxappUI/FragSwitches;->-get2(Lcom/dolby/daxappUI/FragSwitches;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget v10, v10, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_plug:I

    if-eqz v10, :cond_4

    :goto_3
    invoke-static {v9, v7}, Lcom/dolby/daxappUI/FragSwitches;->-set1(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    :goto_4
    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v7}, Lcom/dolby/daxappUI/FragSwitches;->-get5(Lcom/dolby/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v7

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v8}, Lcom/dolby/daxappUI/FragSwitches;->-wrap0(Lcom/dolby/daxappUI/FragSwitches;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v8}, Lcom/dolby/daxappUI/FragSwitches;->-get4(Lcom/dolby/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/dolby/daxappUI/FragSwitches;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    move v7, v8

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v8, v7}, Lcom/dolby/daxappUI/FragSwitches;->-set1(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    const-string/jumbo v9, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string/jumbo v9, "FragSwitches"

    const-string/jumbo v10, "USB headphone unplugged"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v9, v8}, Lcom/dolby/daxappUI/FragSwitches;->-set3(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget-object v10, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v10}, Lcom/dolby/daxappUI/FragSwitches;->-get2(Lcom/dolby/daxappUI/FragSwitches;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget v10, v10, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_plug:I

    if-eqz v10, :cond_8

    move v8, v7

    :cond_8
    invoke-static {v9, v8}, Lcom/dolby/daxappUI/FragSwitches;->-set1(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v7}, Lcom/dolby/daxappUI/FragSwitches;->-get5(Lcom/dolby/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v7

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v8}, Lcom/dolby/daxappUI/FragSwitches;->-wrap0(Lcom/dolby/daxappUI/FragSwitches;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v8}, Lcom/dolby/daxappUI/FragSwitches;->-get4(Lcom/dolby/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/dolby/daxappUI/FragSwitches;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v9, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    const-string/jumbo v10, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/dolby/daxappUI/FragSwitches;->-set0(Lcom/dolby/daxappUI/FragSwitches;I)I

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v9}, Lcom/dolby/daxappUI/FragSwitches;->-get0(Lcom/dolby/daxappUI/FragSwitches;)I

    move-result v9

    if-ne v9, v11, :cond_b

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget v9, v9, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_plug:I

    if-ne v9, v7, :cond_a

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v9, v7}, Lcom/dolby/daxappUI/FragSwitches;->-set2(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    :cond_a
    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v7, v8}, Lcom/dolby/daxappUI/FragSwitches;->-set1(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    :goto_5
    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v7}, Lcom/dolby/daxappUI/FragSwitches;->-get5(Lcom/dolby/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v7

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v8}, Lcom/dolby/daxappUI/FragSwitches;->-wrap0(Lcom/dolby/daxappUI/FragSwitches;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v7, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget-object v8, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v8}, Lcom/dolby/daxappUI/FragSwitches;->-get4(Lcom/dolby/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/dolby/daxappUI/FragSwitches;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v9}, Lcom/dolby/daxappUI/FragSwitches;->-get2(Lcom/dolby/daxappUI/FragSwitches;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v9, v8}, Lcom/dolby/daxappUI/FragSwitches;->-set2(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    :cond_c
    iget-object v9, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget-object v10, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    invoke-static {v10}, Lcom/dolby/daxappUI/FragSwitches;->-get3(Lcom/dolby/daxappUI/FragSwitches;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/dolby/daxappUI/FragSwitches$1;->this$0:Lcom/dolby/daxappUI/FragSwitches;

    iget v10, v10, Lcom/dolby/daxappUI/FragSwitches;->mHeadset_plug:I

    if-eqz v10, :cond_e

    :cond_d
    :goto_6
    invoke-static {v9, v7}, Lcom/dolby/daxappUI/FragSwitches;->-set1(Lcom/dolby/daxappUI/FragSwitches;Z)Z

    goto :goto_5

    :cond_e
    move v7, v8

    goto :goto_6
.end method

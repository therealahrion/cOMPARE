.class public Lcom/dolby/daxappUI/EqualizerAdapter;
.super Landroid/widget/BaseAdapter;
.source "EqualizerAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/daxappUI/EqualizerAdapter$1;,
        Lcom/dolby/daxappUI/EqualizerAdapter$IPresetListener;
    }
.end annotation


# instance fields
.field private mDobyOn:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayout:I

.field private final mListener:Lcom/dolby/daxappUI/EqualizerAdapter$IPresetListener;

.field private mNewLayout:Z

.field private final mNotifyDataSetChanged:Ljava/lang/Runnable;

.field private final mSelectedBg:Landroid/graphics/drawable/Drawable;

.field private mSelectedPosition:I

.field private final mSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolby/daxappUI/EqualizerSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/dolby/daxappUI/EqualizerAdapter$IPresetListener;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mDobyOn:Z

    iput-boolean v1, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mNewLayout:Z

    new-instance v0, Lcom/dolby/daxappUI/EqualizerAdapter$1;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/EqualizerAdapter$1;-><init>(Lcom/dolby/daxappUI/EqualizerAdapter;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mListener:Lcom/dolby/daxappUI/EqualizerAdapter$IPresetListener;

    const v0, 0x7f020035

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSelectedBg:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mLayout:I

    iput v1, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mNewLayout:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/dolby/daxappUI/EqualizerSetting;

    const v2, 0x7f060011

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020014

    const v4, 0x7f020012

    const v5, 0x7f020013

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dolby/daxappUI/EqualizerSetting;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/dolby/daxappUI/EqualizerSetting;

    const v2, 0x7f060012

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020017

    const v4, 0x7f020015

    const v5, 0x7f020016

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dolby/daxappUI/EqualizerSetting;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/dolby/daxappUI/EqualizerSetting;

    const v2, 0x7f060013

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02001a

    const v4, 0x7f020018

    const v5, 0x7f020019

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dolby/daxappUI/EqualizerSetting;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mNewLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/dolby/daxappUI/EqualizerSetting;

    const v2, 0x7f060015

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02001d

    const v4, 0x7f02001b

    const v5, 0x7f02001c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dolby/daxappUI/EqualizerSetting;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/dolby/daxappUI/EqualizerSetting;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/daxappUI/EqualizerSetting;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/daxappUI/EqualizerAdapter;->getItem(I)Lcom/dolby/daxappUI/EqualizerSetting;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelection()I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x0

    move-object v3, p2

    if-nez p2, :cond_0

    iget-object v6, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mLayout:I

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v6, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolby/daxappUI/EqualizerSetting;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    iget v6, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    if-ne p1, v6, :cond_1

    move v4, v0

    :goto_0
    const v6, 0x7f0c0002

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v0}, Lcom/dolby/daxappUI/EqualizerSetting;->getIcon(ZZ)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v6, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mNewLayout:Z

    if-eqz v6, :cond_3

    if-eqz v4, :cond_2

    const v5, 0x7f020035

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v3

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const v5, 0x7f020034

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSelectedBg:Landroid/graphics/drawable/Drawable;

    :cond_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mDobyOn:Z

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    if-ne v4, v0, :cond_3

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mListener:Lcom/dolby/daxappUI/EqualizerAdapter$IPresetListener;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mListener:Lcom/dolby/daxappUI/EqualizerAdapter$IPresetListener;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/dolby/daxappUI/EqualizerAdapter$IPresetListener;->onPresetChanged(I)V

    :cond_2
    return v4

    :cond_3
    return v3
.end method

.method public scheduleNotifyDataSetChanged()V
    .locals 2

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDolbyOnOff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mDobyOn:Z

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/dolby/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/dolby/daxappUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    :cond_0
    return-void
.end method

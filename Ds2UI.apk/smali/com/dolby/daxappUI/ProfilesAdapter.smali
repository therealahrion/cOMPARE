.class public Lcom/dolby/daxappUI/ProfilesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProfilesAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/daxappUI/ProfilesAdapter$1;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/dolby/daxappUI/MainActivity;

.field private mCurrentlyEditName:Ljava/lang/String;

.field private mCurrentlyEditedProfile:I

.field private final mDefaultProfileNames:[Ljava/lang/String;

.field private final mDsClient:Lcom/dolby/api/DsGlobalEx;

.field private mEditable:Z

.field private mIsProfileNameModified:Z

.field private final mLayout:I

.field private mNewLayout:Z

.field private final mNotifyDataSetChanged:Ljava/lang/Runnable;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mProfiles:[Lcom/dolby/daxappUI/Profile;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Lcom/dolby/daxappUI/MainActivity;ILcom/dolby/api/DsGlobalEx;Landroid/view/View$OnClickListener;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    const v5, 0x7f020056

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mSelectedPosition:I

    iput v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    iput-boolean v3, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mNewLayout:Z

    iput-boolean v3, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mEditable:Z

    iput-boolean v3, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mIsProfileNameModified:Z

    new-instance v0, Lcom/dolby/daxappUI/ProfilesAdapter$1;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/ProfilesAdapter$1;-><init>(Lcom/dolby/daxappUI/ProfilesAdapter;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    iput p2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mLayout:I

    iput-object p3, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    iput-object p4, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Lcom/dolby/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mNewLayout:Z

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f060021

    invoke-virtual {p1, v1}, Lcom/dolby/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f06000a

    invoke-virtual {p1, v1}, Lcom/dolby/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f06000b

    invoke-virtual {p1, v1}, Lcom/dolby/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f06000c

    invoke-virtual {p1, v1}, Lcom/dolby/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f06000d

    invoke-virtual {p1, v1}, Lcom/dolby/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f06000e

    invoke-virtual {p1, v1}, Lcom/dolby/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f06000f

    invoke-virtual {p1, v1}, Lcom/dolby/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f060026

    invoke-virtual {p1, v1}, Lcom/dolby/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dolby/daxappUI/Profile;

    iput-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    new-instance v1, Lcom/dolby/daxappUI/Profile;

    invoke-direct {v1, v5, v5, v5}, Lcom/dolby/daxappUI/Profile;-><init>(III)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    new-instance v1, Lcom/dolby/daxappUI/Profile;

    const v2, 0x7f020045

    const v3, 0x7f020044

    const v4, 0x7f020043

    invoke-direct {v1, v2, v3, v4}, Lcom/dolby/daxappUI/Profile;-><init>(III)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    new-instance v1, Lcom/dolby/daxappUI/Profile;

    const v2, 0x7f020048

    const v3, 0x7f020047

    const v4, 0x7f020046

    invoke-direct {v1, v2, v3, v4}, Lcom/dolby/daxappUI/Profile;-><init>(III)V

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    new-instance v1, Lcom/dolby/daxappUI/Profile;

    const v2, 0x7f020038

    const v3, 0x7f020037

    const v4, 0x7f020036

    invoke-direct {v1, v2, v3, v4}, Lcom/dolby/daxappUI/Profile;-><init>(III)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    new-instance v1, Lcom/dolby/daxappUI/Profile;

    const v2, 0x7f02007d

    const v3, 0x7f02007c

    const v4, 0x7f02007b

    invoke-direct {v1, v2, v3, v4}, Lcom/dolby/daxappUI/Profile;-><init>(III)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    new-instance v1, Lcom/dolby/daxappUI/Profile;

    const v2, 0x7f020050

    const v3, 0x7f02004f

    const v4, 0x7f02004e

    invoke-direct {v1, v2, v3, v4}, Lcom/dolby/daxappUI/Profile;-><init>(III)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    new-instance v1, Lcom/dolby/daxappUI/Profile;

    const v2, 0x7f020053

    const v3, 0x7f020052

    const v4, 0x7f020051

    invoke-direct {v1, v2, v3, v4}, Lcom/dolby/daxappUI/Profile;-><init>(III)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    new-instance v1, Lcom/dolby/daxappUI/Profile;

    invoke-direct {v1, v5, v5, v5}, Lcom/dolby/daxappUI/Profile;-><init>(III)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-void
.end method

.method private getProfileName(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2, p1}, Lcom/dolby/api/DsGlobalEx;->getProfileName(I)Lcom/dolby/api/DsProfileName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :cond_1
    return-object v3

    :cond_2
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public endEditingProfileName(Z)V
    .locals 7

    const/4 v3, 0x5

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    if-ne v2, v5, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mIsProfileNameModified:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_5

    new-instance v0, Lcom/dolby/api/DsProfileName;

    invoke-direct {v0}, Lcom/dolby/api/DsProfileName;-><init>()V

    invoke-virtual {v0, v4}, Lcom/dolby/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/dolby/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->checkAccessRight()I

    move-result v2

    if-eq v2, v6, :cond_2

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->requestAccessRight()I

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_1
    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/dolby/api/DsGlobalEx;->setProfileName(ILcom/dolby/api/DsProfileName;)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iput-object v4, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    :cond_4
    iput v5, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    invoke-virtual {p0}, Lcom/dolby/daxappUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v2}, Lcom/dolby/daxappCoreUI/Tools;->hideVirtualKeyboard(Landroid/app/Activity;)Z

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/MainActivity;->onProfileNameEditEnded()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    new-instance v0, Lcom/dolby/api/DsProfileName;

    invoke-direct {v0}, Lcom/dolby/api/DsProfileName;-><init>()V

    invoke-virtual {v0, v4}, Lcom/dolby/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/dolby/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->checkAccessRight()I

    move-result v2

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->requestAccessRight()I

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Lcom/dolby/api/DsGlobalEx;->setProfileName(ILcom/dolby/api/DsProfileName;)I
    :try_end_1
    .catch Lcom/dolby/api/DsAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/dolby/daxappUI/Profile;
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dolby/daxappUI/ProfilesAdapter;->getItem(I)Lcom/dolby/daxappUI/Profile;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemName(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x4

    if-le p1, v2, :cond_0

    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    return-object v2

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, p1, -0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/dolby/daxappUI/ProfilesAdapter;->getProfileName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v1, v2, p1

    goto :goto_1
.end method

.method public getSelection()I
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mSelectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v3

    move-object/from16 v15, p2

    if-nez p2, :cond_b

    if-nez p1, :cond_9

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f03000d

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/daxappUI/Profile;

    move-object/from16 v19, v0

    aget-object v9, v19, p1

    const/4 v13, 0x0

    if-lez p1, :cond_1

    const/16 v19, 0x7

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    move-object/from16 v19, v0

    add-int/lit8 v20, p1, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/dolby/api/DsGlobalEx;->isProfileSettingsModified(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    :cond_1
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v7

    const/4 v10, 0x0

    const/16 v19, 0x4

    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    const/16 v19, 0x7

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v10, v19, p1

    const/4 v6, 0x1

    :cond_3
    :goto_2
    if-eqz v6, :cond_10

    move v6, v7

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mSelectedPosition:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    move/from16 v16, v7

    :goto_4
    const v19, 0x7f0c0046

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v19, 0x7f0c0002

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v19, 0x7f0c0048

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v12, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    if-eqz v6, :cond_12

    const v19, 0x7f050008

    :goto_5
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mNewLayout:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    sget-object v19, Lcom/dolby/daxappUI/Assets$FontType;->LIGHT:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static/range {v19 .. v19}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mNewLayout:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/dolby/daxappCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_15

    :cond_4
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_7
    move/from16 v0, v16

    invoke-virtual {v9, v0, v6}, Lcom/dolby/daxappUI/Profile;->getIcon(ZZ)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v14, :cond_7

    if-eqz v16, :cond_18

    const/16 v18, 0x4

    if-eqz v3, :cond_6

    if-eqz v13, :cond_6

    const/16 v18, 0x0

    :cond_6
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v19, 0x7f02005d

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    if-eqz v16, :cond_19

    const v19, 0x7f020039

    :goto_9
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v19, 0x7f0c0047

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    if-eqz v11, :cond_8

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/dolby/daxappUI/ProfilesAdapter;->mEditable:Z

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_a
    if-lez p1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    move/from16 v19, v0

    add-int/lit8 v20, p1, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    const/16 v19, 0x7

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    new-instance v20, Landroid/text/InputFilter$LengthFilter;

    const/16 v21, 0xa

    invoke-direct/range {v20 .. v21}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    sget-object v19, Lcom/dolby/daxappUI/Assets$FontType;->REGULAR:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static/range {v19 .. v19}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/text/Editable;->length()I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/high16 v19, 0x2000000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_8
    :goto_b
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v15

    :cond_9
    const/16 v19, 0x7

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f03000e

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mLayout:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_c

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f03000d

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :cond_c
    const/16 v19, 0x7

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f03000e

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mLayout:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_e
    const/4 v10, 0x0

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p1}, Lcom/dolby/daxappUI/ProfilesAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v10

    :cond_f
    const/4 v6, 0x1

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v10, v19, p1

    goto/16 :goto_2

    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_12
    if-eqz v16, :cond_13

    const v19, 0x7f05000b

    goto/16 :goto_5

    :cond_13
    const v19, 0x7f05000a

    goto/16 :goto_5

    :cond_14
    sget-object v19, Lcom/dolby/daxappUI/Assets$FontType;->REGULAR:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static/range {v19 .. v19}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_6

    :cond_15
    if-eqz p1, :cond_16

    const/16 v19, 0x7

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    :cond_16
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_17
    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_18
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_19
    const/16 v19, 0x0

    goto/16 :goto_9

    :catch_1
    move-exception v4

    goto/16 :goto_a

    :cond_1a
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_b
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    const v1, 0x7f0c0047

    if-ne v0, v1, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-virtual {p0, v3}, Lcom/dolby/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    return v3

    :cond_2
    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    :cond_3
    return v2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0047

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/dolby/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mIsProfileNameModified:Z

    return-void
.end method

.method public scheduleNotifyDataSetChanged()V
    .locals 2

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/dolby/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    iget v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mSelectedPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/dolby/daxappUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public startEditingProfileName(I)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mEditable:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/dolby/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    iput-boolean v3, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mIsProfileNameModified:Z

    const/4 v2, 0x4

    if-le p1, v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/dolby/daxappUI/ProfilesAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    iput v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    iput-object v1, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    invoke-static {v2}, Lcom/dolby/daxappCoreUI/Tools;->showVirtualKeyboard(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    iget-object v2, p0, Lcom/dolby/daxappUI/ProfilesAdapter;->mActivity:Lcom/dolby/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/dolby/daxappUI/MainActivity;->onProfileNameEditStarted()V

    :cond_2
    return-void

    :cond_3
    return-void
.end method

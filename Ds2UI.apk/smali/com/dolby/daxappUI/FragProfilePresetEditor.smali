.class public Lcom/dolby/daxappUI/FragProfilePresetEditor;
.super Landroid/app/Fragment;
.source "FragProfilePresetEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/dolby/api/IDsEvents;


# instance fields
.field private mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

.field private mDolbyClientConnected:Z

.field private mDsClient:Lcom/dolby/api/DsGlobalEx;

.field private mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

.field private mIsProfileNameModified:Z

.field private mMobileLayout:Z

.field private mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;


# direct methods
.method static synthetic -set0(Lcom/dolby/daxappUI/FragProfilePresetEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mIsProfileNameModified:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mMobileLayout:Z

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mIsProfileNameModified:Z

    return-void
.end method

.method private endEditingProfileName(Z)V
    .locals 8

    const/4 v4, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/dolby/daxappUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mIsProfileNameModified:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

    iget v3, v3, Lcom/dolby/daxappUI/ProfileEditInfo;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_5

    new-instance v0, Lcom/dolby/api/DsProfileName;

    invoke-direct {v0}, Lcom/dolby/api/DsProfileName;-><init>()V

    invoke-virtual {v0, v5}, Lcom/dolby/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/dolby/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->checkAccessRight()I

    move-result v3

    if-eq v3, v7, :cond_0

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->requestAccessRight()I

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Lcom/dolby/api/DsGlobalEx;->setProfileName(ILcom/dolby/api/DsProfileName;)I
    :try_end_0
    .catch Lcom/dolby/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/dolby/daxappUI/ProfileEditInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/dolby/daxappCoreUI/Tools;->hideVirtualKeyboard(Landroid/app/Activity;)Z

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/dolby/daxappUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/dolby/daxappUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/dolby/daxappUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/dolby/daxappUI/ProfileEditInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v5, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

    :cond_3
    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;

    invoke-interface {v3}, Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;->onProfileNameEditEnded()V

    :cond_4
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

    iget v3, v3, Lcom/dolby/daxappUI/ProfileEditInfo;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    new-instance v0, Lcom/dolby/api/DsProfileName;

    invoke-direct {v0}, Lcom/dolby/api/DsProfileName;-><init>()V

    invoke-virtual {v0, v5}, Lcom/dolby/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/dolby/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->checkAccessRight()I

    move-result v3

    if-eq v3, v7, :cond_6

    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/dolby/api/DsGlobalEx;->requestAccessRight()I

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Lcom/dolby/api/DsGlobalEx;->setProfileName(ILcom/dolby/api/DsProfileName;)I
    :try_end_1
    .catch Lcom/dolby/api/DsAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/dolby/api/DsAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v2, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/daxappUI/IDsFragObserver;->useDsApiOnUiEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0c0022

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;

    invoke-interface {v2, v1}, Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;->profileReset(I)V

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method private startEditingProfileName(Landroid/widget/TextView;Landroid/widget/EditText;I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    iput-boolean v3, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mIsProfileNameModified:Z

    if-le p3, v4, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    sget-object v0, Lcom/dolby/daxappUI/Assets$FontType;->REGULAR:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static {v0}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/high16 v0, 0x2000000

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    new-instance v0, Lcom/dolby/daxappUI/FragProfilePresetEditor$1;

    invoke-direct {v0, p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor$1;-><init>(Lcom/dolby/daxappUI/FragProfilePresetEditor;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/dolby/daxappCoreUI/Tools;->showVirtualKeyboard(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    :goto_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/EditText;->setSelection(II)V

    new-instance v0, Lcom/dolby/daxappUI/ProfileEditInfo;

    add-int/lit8 v1, p3, -0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/dolby/daxappUI/ProfileEditInfo;-><init>(ILandroid/widget/TextView;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/daxappUI/ProfileEditInfo;

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;->onProfileNameEditStarted()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method


# virtual methods
.method public cancelPendingEdition()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

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

    iput-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/daxappUI/IDsFragObserver;->getDsClient()Lcom/dolby/api/DsGlobalEx;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

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

    const-string/jumbo v4, " must implement IDsFragProfileEditorObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->onDolbyClientUseClick(Landroid/view/View;)V

    return-void
.end method

.method public onClientConnected()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const v8, 0x7f0c0021

    const/4 v5, 0x0

    const v6, 0x7f030007

    invoke-virtual {p1, v6, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x1

    new-array v1, v6, [I

    aput v8, v1, v5

    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_1

    aget v0, v1, v5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    sget-object v7, Lcom/dolby/daxappUI/Assets$FontType;->REGULAR:Lcom/dolby/daxappUI/Assets$FontType;

    invoke-static {v7}, Lcom/dolby/daxappUI/Assets;->getFont(Lcom/dolby/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    const v5, 0x7f0c0022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f090000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mMobileLayout:Z

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

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    const v1, 0x7f0c0023

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
    invoke-direct {p0, v3}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

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

    const v1, 0x7f0c0023

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0021

    if-ne v0, v1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;

    invoke-interface {v1}, Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;->getProfileSelected()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->startEditingProfileName(Landroid/widget/TextView;Landroid/widget/EditText;I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-boolean v0, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mMobileLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;

    invoke-interface {v0}, Lcom/dolby/daxappUI/IDsFragProfileEditorObserver;->profileEditorIsAlive()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getView()Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    const v3, 0x7f0c0021

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    const v3, 0x7f060014

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    const v3, 0x7f0c0022

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x4

    goto :goto_0
.end method

.method public setResetProfileVisibility()V
    .locals 8

    const/4 v5, 0x4

    iget-boolean v6, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v6}, Lcom/dolby/api/DsGlobalEx;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-eq v7, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, ""

    iget-object v6, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v6}, Lcom/dolby/api/DsGlobalEx;->getProfile()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0c0021

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0c0022

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    const v6, 0x7f02005d

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v6, v1}, Lcom/dolby/api/DsGlobalEx;->isProfileSettingsModified(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    :cond_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void

    :pswitch_0
    const v6, 0x7f06000a

    invoke-virtual {p0, v6}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    const v6, 0x7f06000b

    invoke-virtual {p0, v6}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    const v6, 0x7f06000c

    invoke-virtual {p0, v6}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    const v6, 0x7f06000d

    invoke-virtual {p0, v6}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    invoke-virtual {v6, v5}, Lcom/dolby/api/DsGlobalEx;->getProfileName(I)Lcom/dolby/api/DsProfileName;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    iget-object v6, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/dolby/api/DsGlobalEx;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/dolby/api/DsGlobalEx;->getProfileName(I)Lcom/dolby/api/DsProfileName;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolby/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

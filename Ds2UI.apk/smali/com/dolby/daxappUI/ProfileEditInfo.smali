.class public Lcom/dolby/daxappUI/ProfileEditInfo;
.super Ljava/lang/Object;
.source "ProfileEditInfo.java"


# instance fields
.field public mEditText:Landroid/widget/EditText;

.field public mPosition:I

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(ILandroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dolby/daxappUI/ProfileEditInfo;->mPosition:I

    iput-object p2, p0, Lcom/dolby/daxappUI/ProfileEditInfo;->mTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/dolby/daxappUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    return-void
.end method

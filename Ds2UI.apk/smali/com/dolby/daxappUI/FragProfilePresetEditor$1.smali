.class Lcom/dolby/daxappUI/FragProfilePresetEditor$1;
.super Ljava/lang/Object;
.source "FragProfilePresetEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/daxappUI/FragProfilePresetEditor;->startEditingProfileName(Landroid/widget/TextView;Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/FragProfilePresetEditor;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/FragProfilePresetEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor$1;->this$0:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/dolby/daxappUI/FragProfilePresetEditor$1;->this$0:Lcom/dolby/daxappUI/FragProfilePresetEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolby/daxappUI/FragProfilePresetEditor;->-set0(Lcom/dolby/daxappUI/FragProfilePresetEditor;Z)Z

    return-void
.end method

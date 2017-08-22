.class Lcom/dolby/daxappUI/ProfilesAdapter$1;
.super Ljava/lang/Object;
.source "ProfilesAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/daxappUI/ProfilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/daxappUI/ProfilesAdapter;


# direct methods
.method constructor <init>(Lcom/dolby/daxappUI/ProfilesAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/daxappUI/ProfilesAdapter$1;->this$0:Lcom/dolby/daxappUI/ProfilesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/dolby/daxappUI/ProfilesAdapter$1;->this$0:Lcom/dolby/daxappUI/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/dolby/daxappUI/ProfilesAdapter;->notifyDataSetChanged()V

    return-void
.end method

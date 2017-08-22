.class public final Lcom/google/common/base/MoreObjects$ToStringHelper;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private holderHead:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;)V

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderHead:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iget-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderHead:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/MoreObjects$ToStringHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    .locals 2

    new-instance v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;)V

    iget-object v1, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder()Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    iput-object p1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder()Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    iput-object p2, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v2, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    const-string/jumbo v1, ""

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v5, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderHead:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iget-object v3, v4, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    :goto_0
    if-eqz v3, :cond_3

    if-eqz v2, :cond_0

    iget-object v4, v3, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    iget-object v4, v3, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v4, v3, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v3, v3, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    goto :goto_0

    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

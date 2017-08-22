.class public Lcom/dolby/dax/db/QueryIterator;
.super Ljava/lang/Object;
.source "QueryIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelImpl::",
        "Lcom/dolby/dax/model/Model;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TModelImpl;>;"
    }
.end annotation


# instance fields
.field final cursor:Landroid/database/Cursor;

.field final provider:Lcom/dolby/dax/db/ModelProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolby/dax/db/ModelProvider",
            "<TModelImpl;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/dolby/dax/db/ModelProvider;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/db/ModelProvider",
            "<TModelImpl;>;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dolby/dax/db/QueryIterator;->cursor:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/dolby/dax/db/QueryIterator;->provider:Lcom/dolby/dax/db/ModelProvider;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/dolby/dax/db/QueryIterator;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolby/dax/db/QueryIterator;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/db/QueryIterator;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Lcom/dolby/dax/model/Model;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TModelImpl;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dolby/dax/db/QueryIterator;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    iget-object v0, p0, Lcom/dolby/dax/db/QueryIterator;->provider:Lcom/dolby/dax/db/ModelProvider;

    iget-object v1, p0, Lcom/dolby/dax/db/QueryIterator;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/dolby/dax/db/ModelProvider;->read(Landroid/database/Cursor;)Lcom/dolby/dax/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/dolby/dax/db/QueryIterator;->next()Lcom/dolby/dax/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

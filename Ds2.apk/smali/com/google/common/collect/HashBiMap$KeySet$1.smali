.class Lcom/google/common/collect/HashBiMap$KeySet$1;
.super Lcom/google/common/collect/HashBiMap$Itr;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap",
        "<TK;TV;>.Itr<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$KeySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$KeySet;Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$KeySet$1;->this$1:Lcom/google/common/collect/HashBiMap$KeySet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap$Itr;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

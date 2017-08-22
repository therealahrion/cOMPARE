.class public interface abstract Lcom/google/common/hash/Hasher;
.super Ljava/lang/Object;
.source "Hasher.java"

# interfaces
.implements Lcom/google/common/hash/PrimitiveSink;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# virtual methods
.method public abstract hash()Lcom/google/common/hash/HashCode;
.end method

.method public abstract putByte(B)Lcom/google/common/hash/Hasher;
.end method

.method public abstract putBytes([B)Lcom/google/common/hash/Hasher;
.end method

.method public abstract putBytes([BII)Lcom/google/common/hash/Hasher;
.end method

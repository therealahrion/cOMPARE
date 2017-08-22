.class public Lcom/dolby/dax/xml/ParserUtils;
.super Ljava/lang/Object;
.source "ParserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asIntArray(I)[I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    return-object v0
.end method

.method public static asIntArray(Ljava/util/Collection;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public static asIntArray(Z)[I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

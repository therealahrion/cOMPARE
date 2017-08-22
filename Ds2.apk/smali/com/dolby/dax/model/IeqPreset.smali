.class public Lcom/dolby/dax/model/IeqPreset;
.super Lcom/dolby/dax/model/ParameterValues;
.source "IeqPreset.java"

# interfaces
.implements Lcom/dolby/dax/model/Model;


# static fields
.field public static final validParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final id:J

.field protected final type:Lcom/dolby/dax/model/PresetType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/dolby/dax/model/Parameter;->ieq_frequency:Lcom/dolby/dax/model/Parameter;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dolby/dax/model/Parameter;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->ieq_target:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/model/IeqPreset;->validParams:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(JLcom/dolby/dax/model/PresetType;)V
    .locals 1

    invoke-direct {p0}, Lcom/dolby/dax/model/ParameterValues;-><init>()V

    iput-wide p1, p0, Lcom/dolby/dax/model/IeqPreset;->id:J

    iput-object p3, p0, Lcom/dolby/dax/model/IeqPreset;->type:Lcom/dolby/dax/model/PresetType;

    return-void
.end method

.method public constructor <init>(Lcom/dolby/dax/model/PresetType;)V
    .locals 2

    invoke-direct {p0}, Lcom/dolby/dax/model/ParameterValues;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolby/dax/model/IeqPreset;->id:J

    iput-object p1, p0, Lcom/dolby/dax/model/IeqPreset;->type:Lcom/dolby/dax/model/PresetType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/dax/model/IeqPreset;->dirty:Z

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/dolby/dax/model/IeqPreset;->id:J

    return-wide v0
.end method

.method public getType()Lcom/dolby/dax/model/PresetType;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/IeqPreset;->type:Lcom/dolby/dax/model/PresetType;

    return-object v0
.end method

.method public getValidParams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dolby/dax/model/IeqPreset;->validParams:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IeqPreset{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dolby/dax/model/IeqPreset;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/IeqPreset;->type:Lcom/dolby/dax/model/PresetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/dax/model/IeqPreset;->valuesToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

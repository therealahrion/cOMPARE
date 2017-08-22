.class public Lcom/dolby/dax/model/ProfilePort;
.super Lcom/dolby/dax/model/ParameterValues;
.source "ProfilePort.java"

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

.field protected final port:Lcom/dolby/dax/model/Port;

.field protected final profileType:Lcom/dolby/dax/model/ProfileType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/dolby/dax/model/Parameter;->volume_leveler_in_target:Lcom/dolby/dax/model/Parameter;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dolby/dax/model/Parameter;

    sget-object v2, Lcom/dolby/dax/model/Parameter;->volume_leveler_out_target:Lcom/dolby/dax/model/Parameter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/model/ProfilePort;->validParams:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(JLcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Port;)V
    .locals 1

    invoke-direct {p0}, Lcom/dolby/dax/model/ParameterValues;-><init>()V

    iput-wide p1, p0, Lcom/dolby/dax/model/ProfilePort;->id:J

    iput-object p3, p0, Lcom/dolby/dax/model/ProfilePort;->profileType:Lcom/dolby/dax/model/ProfileType;

    iput-object p4, p0, Lcom/dolby/dax/model/ProfilePort;->port:Lcom/dolby/dax/model/Port;

    return-void
.end method

.method public constructor <init>(Lcom/dolby/dax/model/ProfileType;Lcom/dolby/dax/model/Port;)V
    .locals 2

    invoke-direct {p0}, Lcom/dolby/dax/model/ParameterValues;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolby/dax/model/ProfilePort;->id:J

    iput-object p1, p0, Lcom/dolby/dax/model/ProfilePort;->profileType:Lcom/dolby/dax/model/ProfileType;

    iput-object p2, p0, Lcom/dolby/dax/model/ProfilePort;->port:Lcom/dolby/dax/model/Port;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/dax/model/ProfilePort;->dirty:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Lcom/dolby/dax/model/ProfilePort;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/dax/model/ProfilePort;

    iget-object v2, p0, Lcom/dolby/dax/model/ProfilePort;->port:Lcom/dolby/dax/model/Port;

    iget-object v3, v0, Lcom/dolby/dax/model/ProfilePort;->port:Lcom/dolby/dax/model/Port;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/dolby/dax/model/ProfilePort;->profileType:Lcom/dolby/dax/model/ProfileType;

    iget-object v3, v0, Lcom/dolby/dax/model/ProfilePort;->profileType:Lcom/dolby/dax/model/ProfileType;

    if-ne v2, v3, :cond_2

    invoke-super {p0, p1}, Lcom/dolby/dax/model/ParameterValues;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/dolby/dax/model/ProfilePort;->id:J

    return-wide v0
.end method

.method public getPort()Lcom/dolby/dax/model/Port;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/ProfilePort;->port:Lcom/dolby/dax/model/Port;

    return-object v0
.end method

.method public getProfileType()Lcom/dolby/dax/model/ProfileType;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/ProfilePort;->profileType:Lcom/dolby/dax/model/ProfileType;

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

    sget-object v0, Lcom/dolby/dax/model/ProfilePort;->validParams:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Lcom/dolby/dax/model/ParameterValues;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dolby/dax/model/ProfilePort;->profileType:Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v2}, Lcom/dolby/dax/model/ProfileType;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dolby/dax/model/ProfilePort;->port:Lcom/dolby/dax/model/Port;

    invoke-virtual {v2}, Lcom/dolby/dax/model/Port;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProfilePort{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dolby/dax/model/ProfilePort;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", profileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/ProfilePort;->profileType:Lcom/dolby/dax/model/ProfileType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/ProfilePort;->port:Lcom/dolby/dax/model/Port;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolby/dax/model/ProfilePort;->valuesToString()Ljava/lang/String;

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

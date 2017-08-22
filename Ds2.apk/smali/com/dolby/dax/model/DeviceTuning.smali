.class public Lcom/dolby/dax/model/DeviceTuning;
.super Ljava/lang/Object;
.source "DeviceTuning.java"

# interfaces
.implements Lcom/dolby/dax/model/Model;


# instance fields
.field protected final device:Ljava/lang/String;

.field protected dirty:Z

.field protected final id:J

.field protected final port:Ljava/lang/String;

.field protected final tuning:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/dax/model/DeviceTuning;->dirty:Z

    iput-wide p1, p0, Lcom/dolby/dax/model/DeviceTuning;->id:J

    iput-object p3, p0, Lcom/dolby/dax/model/DeviceTuning;->device:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolby/dax/model/DeviceTuning;->port:Ljava/lang/String;

    iput-object p5, p0, Lcom/dolby/dax/model/DeviceTuning;->tuning:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/dax/model/DeviceTuning;->dirty:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolby/dax/model/DeviceTuning;->id:J

    iput-object p1, p0, Lcom/dolby/dax/model/DeviceTuning;->device:Ljava/lang/String;

    iput-object p2, p0, Lcom/dolby/dax/model/DeviceTuning;->port:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolby/dax/model/DeviceTuning;->tuning:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/dax/model/DeviceTuning;->dirty:Z

    return-void
.end method


# virtual methods
.method public getDevice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/DeviceTuning;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/dolby/dax/model/DeviceTuning;->id:J

    return-wide v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/DeviceTuning;->port:Ljava/lang/String;

    return-object v0
.end method

.method public getTuning()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/dax/model/DeviceTuning;->tuning:Ljava/lang/String;

    return-object v0
.end method

.method public isDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/dax/model/DeviceTuning;->dirty:Z

    return v0
.end method

.method public setDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/dax/model/DeviceTuning;->dirty:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeviceTuning{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dolby/dax/model/DeviceTuning;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", device=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/DeviceTuning;->device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", port=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/DeviceTuning;->port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tuning=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolby/dax/model/DeviceTuning;->tuning:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/dolby/instoredemoapp/AutoPilotItem;
.super Ljava/lang/Object;
.source "AutoPilotItem.java"


# static fields
.field private static UNSET:Ljava/lang/String;


# instance fields
.field private mDialogEnhancer:Ljava/lang/String;

.field private mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

.field private mId:I

.field private mIntelligentEq:Ljava/lang/String;

.field private mMasterControl:Ljava/lang/String;

.field private mProfileControl:Ljava/lang/String;

.field private mSurroundVirtualizer:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;

.field private mVolumeLeveler:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "unset"

    sput-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mId:I

    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mTimeStamp:Ljava/lang/String;

    new-instance v0, Lcom/dolby/instoredemoapp/TextInfo;

    invoke-direct {v0}, Lcom/dolby/instoredemoapp/TextInfo;-><init>()V

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/dolby/instoredemoapp/TextInfo;->text:Ljava/lang/String;

    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mMasterControl:Ljava/lang/String;

    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mProfileControl:Ljava/lang/String;

    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mSurroundVirtualizer:Ljava/lang/String;

    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDialogEnhancer:Ljava/lang/String;

    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mVolumeLeveler:Ljava/lang/String;

    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mIntelligentEq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDialogEnahancerValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDialogEnhancer:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayText()Lcom/dolby/instoredemoapp/TextInfo;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

    return-object v0
.end method

.method public getIntelligenEqValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mIntelligentEq:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterControlValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mMasterControl:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileControlValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mProfileControl:Ljava/lang/String;

    return-object v0
.end method

.method public getSurroundVirtualizerValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mSurroundVirtualizer:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeLevelerValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mVolumeLeveler:Ljava/lang/String;

    return-object v0
.end method

.method public setDialogEnhancerValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDialogEnhancer:Ljava/lang/String;

    return-void
.end method

.method public setDisplayText(Lcom/dolby/instoredemoapp/TextInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mId:I

    return-void
.end method

.method public setIntelligentEqValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mIntelligentEq:Ljava/lang/String;

    return-void
.end method

.method public setMasterControlValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mMasterControl:Ljava/lang/String;

    return-void
.end method

.method public setProfileControlValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mProfileControl:Ljava/lang/String;

    return-void
.end method

.method public setSurroundVirtualizerValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mSurroundVirtualizer:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setVolumeLevelerValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mVolumeLeveler:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "textinfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "master_control = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mMasterControl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "profile_control = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mProfileControl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "surround_virtualizer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mSurroundVirtualizer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dialog_enhancer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDialogEnhancer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "volume_leveler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mVolumeLeveler:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "intelligent_eq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mIntelligentEq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

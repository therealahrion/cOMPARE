.class public final enum Lcom/dolby/api/DsParams;
.super Ljava/lang/Enum;
.source "DsParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolby/api/DsParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dolby/api/DsParams;

.field public static final enum AudioOptimizerBandCount:Lcom/dolby/api/DsParams;

.field public static final enum AudioOptimizerBandFrequencies:Lcom/dolby/api/DsParams;

.field public static final enum AudioOptimizerBandGains:Lcom/dolby/api/DsParams;

.field public static final enum AudioOptimizerChannelCount:Lcom/dolby/api/DsParams;

.field public static final enum AudioOptimizerEnable:Lcom/dolby/api/DsParams;

.field public static final enum AudioRegulatorBandCount:Lcom/dolby/api/DsParams;

.field public static final enum AudioRegulatorBandFrequencies:Lcom/dolby/api/DsParams;

.field public static final enum AudioRegulatorBandHighThresholds:Lcom/dolby/api/DsParams;

.field public static final enum AudioRegulatorBandIsolates:Lcom/dolby/api/DsParams;

.field public static final enum AudioRegulatorBandLowThresholds:Lcom/dolby/api/DsParams;

.field public static final enum AudioRegulatorOverdrive:Lcom/dolby/api/DsParams;

.field public static final enum AudioRegulatorTimbrePreservationAmount:Lcom/dolby/api/DsParams;

.field private static final DAP1_PARAM_NAMES:[Ljava/lang/String;

.field public static final enum DialogEnhancementAmount:Lcom/dolby/api/DsParams;

.field public static final enum DialogEnhancementDucking:Lcom/dolby/api/DsParams;

.field public static final enum DialogEnhancementEnable:Lcom/dolby/api/DsParams;

.field public static final enum DolbyHeadphoneReverberationGain:Lcom/dolby/api/DsParams;

.field public static final enum DolbyHeadphoneSurroundBoost:Lcom/dolby/api/DsParams;

.field public static final enum DolbyHeadphoneVirtualizerControl:Lcom/dolby/api/DsParams;

.field public static final enum DolbyVirtualSpeakerAngle:Lcom/dolby/api/DsParams;

.field public static final enum DolbyVirtualSpeakerStartFrequency:Lcom/dolby/api/DsParams;

.field public static final enum DolbyVirtualSpeakerSurroundBoost:Lcom/dolby/api/DsParams;

.field public static final enum DolbyVirtualSpeakerVirtualizerControl:Lcom/dolby/api/DsParams;

.field public static final enum DolbyVolumeLevelerEnable:Lcom/dolby/api/DsParams;

.field public static final enum DolbyVolumeLevelerInputTarget:Lcom/dolby/api/DsParams;

.field public static final enum DolbyVolumeLevelerOutputTarget:Lcom/dolby/api/DsParams;

.field public static final enum DolbyVolumeLevelingAmount:Lcom/dolby/api/DsParams;

.field public static final enum DolbyVolumeModelerCalibration:Lcom/dolby/api/DsParams;

.field public static final enum DolbyVolumeModelerEnable:Lcom/dolby/api/DsParams;

.field public static final enum GraphicEqualizerBandCount:Lcom/dolby/api/DsParams;

.field public static final enum GraphicEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

.field public static final enum GraphicEqualizerBandGains:Lcom/dolby/api/DsParams;

.field public static final enum GraphicEqualizerEnable:Lcom/dolby/api/DsParams;

.field public static final enum IntelligentEqualizerAmount:Lcom/dolby/api/DsParams;

.field public static final enum IntelligentEqualizerBandCount:Lcom/dolby/api/DsParams;

.field public static final enum IntelligentEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

.field public static final enum IntelligentEqualizerBandTargets:Lcom/dolby/api/DsParams;

.field public static final enum IntelligentEqualizerEnable:Lcom/dolby/api/DsParams;

.field public static final enum NextGenSurroundEnable:Lcom/dolby/api/DsParams;

.field public static final enum PeakLimiterBoost:Lcom/dolby/api/DsParams;

.field public static final enum PeakLimitingProtectionMode:Lcom/dolby/api/DsParams;

.field public static final enum VolumeMaximizerBoost:Lcom/dolby/api/DsParams;

.field public static final enum VolumeMaximizerEnable:Lcom/dolby/api/DsParams;

.field private static final params:[Lcom/dolby/api/DsParams;


# instance fields
.field private id_:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyHeadphoneVirtualizerControl"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v4, v2}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVirtualSpeakerVirtualizerControl"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v5, v2}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeLevelerEnable"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v6, v2}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeModelerEnable"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v7, v2}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeModelerEnable:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "NextGenSurroundEnable"

    const/16 v2, 0x69

    invoke-direct {v0, v1, v8, v2}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->NextGenSurroundEnable:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "IntelligentEqualizerEnable"

    const/4 v2, 0x5

    const/16 v3, 0x6a

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->IntelligentEqualizerEnable:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DialogEnhancementEnable"

    const/4 v2, 0x6

    const/16 v3, 0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DialogEnhancementEnable:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "GraphicEqualizerEnable"

    const/4 v2, 0x7

    const/16 v3, 0x6c

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->GraphicEqualizerEnable:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyHeadphoneSurroundBoost"

    const/16 v2, 0x8

    const/16 v3, 0x6d

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyHeadphoneSurroundBoost:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyHeadphoneReverberationGain"

    const/16 v2, 0x9

    const/16 v3, 0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyHeadphoneReverberationGain:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVirtualSpeakerSurroundBoost"

    const/16 v2, 0xa

    const/16 v3, 0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerSurroundBoost:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVirtualSpeakerAngle"

    const/16 v2, 0xb

    const/16 v3, 0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerAngle:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVirtualSpeakerStartFrequency"

    const/16 v2, 0xc

    const/16 v3, 0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerStartFrequency:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeLevelingAmount"

    const/16 v2, 0xd

    const/16 v3, 0x72

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeLevelingAmount:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "IntelligentEqualizerBandTargets"

    const/16 v2, 0xe

    const/16 v3, 0x73

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandTargets:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "IntelligentEqualizerAmount"

    const/16 v2, 0xf

    const/16 v3, 0x74

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->IntelligentEqualizerAmount:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DialogEnhancementAmount"

    const/16 v2, 0x10

    const/16 v3, 0x75

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DialogEnhancementAmount:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DialogEnhancementDucking"

    const/16 v2, 0x11

    const/16 v3, 0x76

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DialogEnhancementDucking:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "GraphicEqualizerBandGains"

    const/16 v2, 0x12

    const/16 v3, 0x77

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->GraphicEqualizerBandGains:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioOptimizerEnable"

    const/16 v2, 0x13

    const/16 v3, 0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioOptimizerEnable:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "PeakLimiterBoost"

    const/16 v2, 0x14

    const/16 v3, 0x79

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->PeakLimiterBoost:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "PeakLimitingProtectionMode"

    const/16 v2, 0x15

    const/16 v3, 0x7a

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->PeakLimitingProtectionMode:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "VolumeMaximizerEnable"

    const/16 v2, 0x16

    const/16 v3, 0x7b

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->VolumeMaximizerEnable:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "VolumeMaximizerBoost"

    const/16 v2, 0x17

    const/16 v3, 0x7c

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->VolumeMaximizerBoost:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeLevelerInputTarget"

    const/16 v2, 0x18

    const/16 v3, 0x7d

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerInputTarget:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeLevelerOutputTarget"

    const/16 v2, 0x19

    const/16 v3, 0x7e

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerOutputTarget:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeModelerCalibration"

    const/16 v2, 0x1a

    const/16 v3, 0x7f

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeModelerCalibration:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "IntelligentEqualizerBandCount"

    const/16 v2, 0x1b

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandCount:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "IntelligentEqualizerBandFrequencies"

    const/16 v2, 0x1c

    const/16 v3, 0x81

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "GraphicEqualizerBandCount"

    const/16 v2, 0x1d

    const/16 v3, 0x82

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->GraphicEqualizerBandCount:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "GraphicEqualizerBandFrequencies"

    const/16 v2, 0x1e

    const/16 v3, 0x83

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->GraphicEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioOptimizerBandCount"

    const/16 v2, 0x1f

    const/16 v3, 0x84

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioOptimizerBandCount:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioOptimizerBandFrequencies"

    const/16 v2, 0x20

    const/16 v3, 0x85

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioOptimizerBandFrequencies:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioOptimizerBandGains"

    const/16 v2, 0x21

    const/16 v3, 0x86

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioOptimizerBandGains:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorBandCount"

    const/16 v2, 0x22

    const/16 v3, 0x87

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorBandCount:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorBandFrequencies"

    const/16 v2, 0x23

    const/16 v3, 0x88

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorBandFrequencies:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioOptimizerChannelCount"

    const/16 v2, 0x24

    const/16 v3, 0x89

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioOptimizerChannelCount:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorBandIsolates"

    const/16 v2, 0x25

    const/16 v3, 0x8a

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorBandIsolates:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorBandLowThresholds"

    const/16 v2, 0x26

    const/16 v3, 0x8b

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorBandLowThresholds:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorBandHighThresholds"

    const/16 v2, 0x27

    const/16 v3, 0x8c

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorBandHighThresholds:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorOverdrive"

    const/16 v2, 0x28

    const/16 v3, 0x8d

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorOverdrive:Lcom/dolby/api/DsParams;

    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorTimbrePreservationAmount"

    const/16 v2, 0x29

    const/16 v3, 0x8e

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorTimbrePreservationAmount:Lcom/dolby/api/DsParams;

    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/dolby/api/DsParams;

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeModelerEnable:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dolby/api/DsParams;->NextGenSurroundEnable:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerEnable:Lcom/dolby/api/DsParams;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DialogEnhancementEnable:Lcom/dolby/api/DsParams;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerEnable:Lcom/dolby/api/DsParams;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyHeadphoneSurroundBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyHeadphoneReverberationGain:Lcom/dolby/api/DsParams;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerSurroundBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerAngle:Lcom/dolby/api/DsParams;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerStartFrequency:Lcom/dolby/api/DsParams;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelingAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandTargets:Lcom/dolby/api/DsParams;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DialogEnhancementAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DialogEnhancementDucking:Lcom/dolby/api/DsParams;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerBandGains:Lcom/dolby/api/DsParams;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerEnable:Lcom/dolby/api/DsParams;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->PeakLimiterBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->PeakLimitingProtectionMode:Lcom/dolby/api/DsParams;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->VolumeMaximizerEnable:Lcom/dolby/api/DsParams;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->VolumeMaximizerBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerInputTarget:Lcom/dolby/api/DsParams;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerOutputTarget:Lcom/dolby/api/DsParams;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeModelerCalibration:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerBandGains:Lcom/dolby/api/DsParams;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerChannelCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandIsolates:Lcom/dolby/api/DsParams;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandLowThresholds:Lcom/dolby/api/DsParams;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandHighThresholds:Lcom/dolby/api/DsParams;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorOverdrive:Lcom/dolby/api/DsParams;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorTimbrePreservationAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/api/DsParams;->$VALUES:[Lcom/dolby/api/DsParams;

    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "null"

    aput-object v1, v0, v4

    const-string/jumbo v1, "vdhe"

    aput-object v1, v0, v5

    const-string/jumbo v1, "vspe"

    aput-object v1, v0, v6

    const-string/jumbo v1, "dvle"

    aput-object v1, v0, v7

    const-string/jumbo v1, "dvme"

    aput-object v1, v0, v8

    const-string/jumbo v1, "ngon"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ieon"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "deon"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "geon"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "dhsb"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "dhrg"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "dssb"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "dssa"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "dssf"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "dvla"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "iebt"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "iea"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "dea"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "ded"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "gebg"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "aoon"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "plb"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "plmd"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "vmon"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "vmb"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "dvli"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "dvlo"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "dvmc"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "ienb"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "iebf"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "genb"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "gebf"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "aonb"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "aobf"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "aobg"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "arnb"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "arbf"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "aocc"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "arbi"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "arbl"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "arbh"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "arod"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "artp"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/api/DsParams;->DAP1_PARAM_NAMES:[Ljava/lang/String;

    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/dolby/api/DsParams;

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeModelerEnable:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dolby/api/DsParams;->NextGenSurroundEnable:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerEnable:Lcom/dolby/api/DsParams;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DialogEnhancementEnable:Lcom/dolby/api/DsParams;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerEnable:Lcom/dolby/api/DsParams;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyHeadphoneSurroundBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyHeadphoneReverberationGain:Lcom/dolby/api/DsParams;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerSurroundBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerAngle:Lcom/dolby/api/DsParams;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerStartFrequency:Lcom/dolby/api/DsParams;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelingAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandTargets:Lcom/dolby/api/DsParams;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DialogEnhancementAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DialogEnhancementDucking:Lcom/dolby/api/DsParams;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerBandGains:Lcom/dolby/api/DsParams;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerEnable:Lcom/dolby/api/DsParams;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->PeakLimiterBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->PeakLimitingProtectionMode:Lcom/dolby/api/DsParams;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->VolumeMaximizerEnable:Lcom/dolby/api/DsParams;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->VolumeMaximizerBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerInputTarget:Lcom/dolby/api/DsParams;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerOutputTarget:Lcom/dolby/api/DsParams;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeModelerCalibration:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerBandGains:Lcom/dolby/api/DsParams;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerChannelCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandIsolates:Lcom/dolby/api/DsParams;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandLowThresholds:Lcom/dolby/api/DsParams;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandHighThresholds:Lcom/dolby/api/DsParams;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorOverdrive:Lcom/dolby/api/DsParams;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorTimbrePreservationAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/api/DsParams;->params:[Lcom/dolby/api/DsParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/dolby/api/DsParams;->id_:I

    return-void
.end method

.method public static FromInt(I)Lcom/dolby/api/DsParams;
    .locals 3

    const/16 v1, 0x64

    if-le p0, v1, :cond_0

    const/16 v1, 0x8f

    if-ge p0, v1, :cond_0

    sget-object v1, Lcom/dolby/api/DsParams;->params:[Lcom/dolby/api/DsParams;

    add-int/lit8 v2, p0, -0x64

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolby/api/DsParams;
    .locals 1

    const-class v0, Lcom/dolby/api/DsParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolby/api/DsParams;

    return-object v0
.end method

.method public static values()[Lcom/dolby/api/DsParams;
    .locals 1

    sget-object v0, Lcom/dolby/api/DsParams;->$VALUES:[Lcom/dolby/api/DsParams;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    iget v0, p0, Lcom/dolby/api/DsParams;->id_:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/dolby/api/DsParams;->id_:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/dolby/api/DsParams;->id_:I

    const/16 v2, 0x8f

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/dolby/api/DsParams;->DAP1_PARAM_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/dolby/api/DsParams;->id_:I

    add-int/lit8 v2, v2, -0x64

    aget-object v0, v1, v2

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "error"

    goto :goto_0
.end method

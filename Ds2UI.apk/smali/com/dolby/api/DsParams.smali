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
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyHeadphoneVirtualizerControl"

    .line 26
    const/16 v2, 0x65

    .line 18
    invoke-direct {v0, v1, v4, v2}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 26
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/dolby/api/DsParams;

    .line 27
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVirtualSpeakerVirtualizerControl"

    .line 34
    const/16 v2, 0x66

    .line 27
    invoke-direct {v0, v1, v5, v2}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 34
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/dolby/api/DsParams;

    .line 35
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeLevelerEnable"

    .line 41
    const/16 v2, 0x67

    .line 35
    invoke-direct {v0, v1, v6, v2}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 41
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/dolby/api/DsParams;

    .line 42
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeModelerEnable"

    .line 48
    const/16 v2, 0x68

    .line 42
    invoke-direct {v0, v1, v7, v2}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 48
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeModelerEnable:Lcom/dolby/api/DsParams;

    .line 49
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "NextGenSurroundEnable"

    .line 56
    const/16 v2, 0x69

    .line 49
    invoke-direct {v0, v1, v8, v2}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 56
    sput-object v0, Lcom/dolby/api/DsParams;->NextGenSurroundEnable:Lcom/dolby/api/DsParams;

    .line 57
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "IntelligentEqualizerEnable"

    const/4 v2, 0x5

    .line 63
    const/16 v3, 0x6a

    .line 57
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 63
    sput-object v0, Lcom/dolby/api/DsParams;->IntelligentEqualizerEnable:Lcom/dolby/api/DsParams;

    .line 64
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DialogEnhancementEnable"

    const/4 v2, 0x6

    .line 70
    const/16 v3, 0x6b

    .line 64
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 70
    sput-object v0, Lcom/dolby/api/DsParams;->DialogEnhancementEnable:Lcom/dolby/api/DsParams;

    .line 71
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "GraphicEqualizerEnable"

    const/4 v2, 0x7

    .line 77
    const/16 v3, 0x6c

    .line 71
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 77
    sput-object v0, Lcom/dolby/api/DsParams;->GraphicEqualizerEnable:Lcom/dolby/api/DsParams;

    .line 78
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyHeadphoneSurroundBoost"

    const/16 v2, 0x8

    .line 83
    const/16 v3, 0x6d

    .line 78
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 83
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyHeadphoneSurroundBoost:Lcom/dolby/api/DsParams;

    .line 84
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyHeadphoneReverberationGain"

    const/16 v2, 0x9

    .line 88
    const/16 v3, 0x6e

    .line 84
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 88
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyHeadphoneReverberationGain:Lcom/dolby/api/DsParams;

    .line 89
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVirtualSpeakerSurroundBoost"

    const/16 v2, 0xa

    .line 93
    const/16 v3, 0x6f

    .line 89
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 93
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerSurroundBoost:Lcom/dolby/api/DsParams;

    .line 94
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVirtualSpeakerAngle"

    const/16 v2, 0xb

    .line 98
    const/16 v3, 0x70

    .line 94
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 98
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerAngle:Lcom/dolby/api/DsParams;

    .line 99
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVirtualSpeakerStartFrequency"

    const/16 v2, 0xc

    .line 103
    const/16 v3, 0x71

    .line 99
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 103
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerStartFrequency:Lcom/dolby/api/DsParams;

    .line 104
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeLevelingAmount"

    const/16 v2, 0xd

    .line 108
    const/16 v3, 0x72

    .line 104
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 108
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeLevelingAmount:Lcom/dolby/api/DsParams;

    .line 109
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "IntelligentEqualizerBandTargets"

    const/16 v2, 0xe

    .line 113
    const/16 v3, 0x73

    .line 109
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 113
    sput-object v0, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandTargets:Lcom/dolby/api/DsParams;

    .line 114
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "IntelligentEqualizerAmount"

    const/16 v2, 0xf

    .line 118
    const/16 v3, 0x74

    .line 114
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 118
    sput-object v0, Lcom/dolby/api/DsParams;->IntelligentEqualizerAmount:Lcom/dolby/api/DsParams;

    .line 119
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DialogEnhancementAmount"

    const/16 v2, 0x10

    .line 123
    const/16 v3, 0x75

    .line 119
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 123
    sput-object v0, Lcom/dolby/api/DsParams;->DialogEnhancementAmount:Lcom/dolby/api/DsParams;

    .line 124
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DialogEnhancementDucking"

    const/16 v2, 0x11

    .line 128
    const/16 v3, 0x76

    .line 124
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 128
    sput-object v0, Lcom/dolby/api/DsParams;->DialogEnhancementDucking:Lcom/dolby/api/DsParams;

    .line 129
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "GraphicEqualizerBandGains"

    const/16 v2, 0x12

    .line 133
    const/16 v3, 0x77

    .line 129
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 133
    sput-object v0, Lcom/dolby/api/DsParams;->GraphicEqualizerBandGains:Lcom/dolby/api/DsParams;

    .line 134
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioOptimizerEnable"

    const/16 v2, 0x13

    .line 141
    const/16 v3, 0x78

    .line 134
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 141
    sput-object v0, Lcom/dolby/api/DsParams;->AudioOptimizerEnable:Lcom/dolby/api/DsParams;

    .line 142
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "PeakLimiterBoost"

    const/16 v2, 0x14

    .line 146
    const/16 v3, 0x79

    .line 142
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 146
    sput-object v0, Lcom/dolby/api/DsParams;->PeakLimiterBoost:Lcom/dolby/api/DsParams;

    .line 147
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "PeakLimitingProtectionMode"

    const/16 v2, 0x15

    .line 156
    const/16 v3, 0x7a

    .line 147
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 156
    sput-object v0, Lcom/dolby/api/DsParams;->PeakLimitingProtectionMode:Lcom/dolby/api/DsParams;

    .line 157
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "VolumeMaximizerEnable"

    const/16 v2, 0x16

    .line 164
    const/16 v3, 0x7b

    .line 157
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 164
    sput-object v0, Lcom/dolby/api/DsParams;->VolumeMaximizerEnable:Lcom/dolby/api/DsParams;

    .line 165
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "VolumeMaximizerBoost"

    const/16 v2, 0x17

    .line 169
    const/16 v3, 0x7c

    .line 165
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 169
    sput-object v0, Lcom/dolby/api/DsParams;->VolumeMaximizerBoost:Lcom/dolby/api/DsParams;

    .line 170
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeLevelerInputTarget"

    const/16 v2, 0x18

    .line 174
    const/16 v3, 0x7d

    .line 170
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 174
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerInputTarget:Lcom/dolby/api/DsParams;

    .line 175
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeLevelerOutputTarget"

    const/16 v2, 0x19

    .line 179
    const/16 v3, 0x7e

    .line 175
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 179
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerOutputTarget:Lcom/dolby/api/DsParams;

    .line 180
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "DolbyVolumeModelerCalibration"

    const/16 v2, 0x1a

    .line 184
    const/16 v3, 0x7f

    .line 180
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 184
    sput-object v0, Lcom/dolby/api/DsParams;->DolbyVolumeModelerCalibration:Lcom/dolby/api/DsParams;

    .line 185
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "IntelligentEqualizerBandCount"

    const/16 v2, 0x1b

    .line 189
    const/16 v3, 0x80

    .line 185
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 189
    sput-object v0, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandCount:Lcom/dolby/api/DsParams;

    .line 190
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "IntelligentEqualizerBandFrequencies"

    const/16 v2, 0x1c

    .line 194
    const/16 v3, 0x81

    .line 190
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 194
    sput-object v0, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

    .line 195
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "GraphicEqualizerBandCount"

    const/16 v2, 0x1d

    .line 199
    const/16 v3, 0x82

    .line 195
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 199
    sput-object v0, Lcom/dolby/api/DsParams;->GraphicEqualizerBandCount:Lcom/dolby/api/DsParams;

    .line 200
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "GraphicEqualizerBandFrequencies"

    const/16 v2, 0x1e

    .line 204
    const/16 v3, 0x83

    .line 200
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 204
    sput-object v0, Lcom/dolby/api/DsParams;->GraphicEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

    .line 205
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioOptimizerBandCount"

    const/16 v2, 0x1f

    .line 209
    const/16 v3, 0x84

    .line 205
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 209
    sput-object v0, Lcom/dolby/api/DsParams;->AudioOptimizerBandCount:Lcom/dolby/api/DsParams;

    .line 210
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioOptimizerBandFrequencies"

    const/16 v2, 0x20

    .line 214
    const/16 v3, 0x85

    .line 210
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 214
    sput-object v0, Lcom/dolby/api/DsParams;->AudioOptimizerBandFrequencies:Lcom/dolby/api/DsParams;

    .line 215
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioOptimizerBandGains"

    const/16 v2, 0x21

    .line 219
    const/16 v3, 0x86

    .line 215
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 219
    sput-object v0, Lcom/dolby/api/DsParams;->AudioOptimizerBandGains:Lcom/dolby/api/DsParams;

    .line 220
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorBandCount"

    const/16 v2, 0x22

    .line 224
    const/16 v3, 0x87

    .line 220
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 224
    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorBandCount:Lcom/dolby/api/DsParams;

    .line 225
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorBandFrequencies"

    const/16 v2, 0x23

    .line 229
    const/16 v3, 0x88

    .line 225
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 229
    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorBandFrequencies:Lcom/dolby/api/DsParams;

    .line 230
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioOptimizerChannelCount"

    const/16 v2, 0x24

    .line 234
    const/16 v3, 0x89

    .line 230
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 234
    sput-object v0, Lcom/dolby/api/DsParams;->AudioOptimizerChannelCount:Lcom/dolby/api/DsParams;

    .line 235
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorBandIsolates"

    const/16 v2, 0x25

    .line 241
    const/16 v3, 0x8a

    .line 235
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 241
    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorBandIsolates:Lcom/dolby/api/DsParams;

    .line 242
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorBandLowThresholds"

    const/16 v2, 0x26

    .line 246
    const/16 v3, 0x8b

    .line 242
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 246
    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorBandLowThresholds:Lcom/dolby/api/DsParams;

    .line 247
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorBandHighThresholds"

    const/16 v2, 0x27

    .line 251
    const/16 v3, 0x8c

    .line 247
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 251
    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorBandHighThresholds:Lcom/dolby/api/DsParams;

    .line 252
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorOverdrive"

    const/16 v2, 0x28

    .line 256
    const/16 v3, 0x8d

    .line 252
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 256
    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorOverdrive:Lcom/dolby/api/DsParams;

    .line 257
    new-instance v0, Lcom/dolby/api/DsParams;

    const-string/jumbo v1, "AudioRegulatorTimbrePreservationAmount"

    const/16 v2, 0x29

    .line 261
    const/16 v3, 0x8e

    .line 257
    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/api/DsParams;-><init>(Ljava/lang/String;II)V

    .line 261
    sput-object v0, Lcom/dolby/api/DsParams;->AudioRegulatorTimbrePreservationAmount:Lcom/dolby/api/DsParams;

    .line 16
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

    .line 397
    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "null"

    aput-object v1, v0, v4

    .line 398
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

    .line 399
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

    .line 400
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

    .line 401
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

    .line 402
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

    .line 403
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

    .line 404
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

    .line 405
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

    .line 406
    const-string/jumbo v1, "arod"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "artp"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 397
    sput-object v0, Lcom/dolby/api/DsParams;->DAP1_PARAM_NAMES:[Ljava/lang/String;

    .line 459
    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/dolby/api/DsParams;

    .line 460
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v4

    .line 461
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v5

    .line 462
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v6

    .line 463
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeModelerEnable:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v7

    .line 464
    sget-object v1, Lcom/dolby/api/DsParams;->NextGenSurroundEnable:Lcom/dolby/api/DsParams;

    aput-object v1, v0, v8

    .line 465
    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerEnable:Lcom/dolby/api/DsParams;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 466
    sget-object v1, Lcom/dolby/api/DsParams;->DialogEnhancementEnable:Lcom/dolby/api/DsParams;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 467
    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerEnable:Lcom/dolby/api/DsParams;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 468
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyHeadphoneSurroundBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 469
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyHeadphoneReverberationGain:Lcom/dolby/api/DsParams;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 470
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerSurroundBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 471
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerAngle:Lcom/dolby/api/DsParams;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 472
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVirtualSpeakerStartFrequency:Lcom/dolby/api/DsParams;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 473
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelingAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 474
    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandTargets:Lcom/dolby/api/DsParams;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 475
    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 476
    sget-object v1, Lcom/dolby/api/DsParams;->DialogEnhancementAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 477
    sget-object v1, Lcom/dolby/api/DsParams;->DialogEnhancementDucking:Lcom/dolby/api/DsParams;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 478
    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerBandGains:Lcom/dolby/api/DsParams;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 479
    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerEnable:Lcom/dolby/api/DsParams;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 480
    sget-object v1, Lcom/dolby/api/DsParams;->PeakLimiterBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 481
    sget-object v1, Lcom/dolby/api/DsParams;->PeakLimitingProtectionMode:Lcom/dolby/api/DsParams;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 482
    sget-object v1, Lcom/dolby/api/DsParams;->VolumeMaximizerEnable:Lcom/dolby/api/DsParams;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 483
    sget-object v1, Lcom/dolby/api/DsParams;->VolumeMaximizerBoost:Lcom/dolby/api/DsParams;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 484
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerInputTarget:Lcom/dolby/api/DsParams;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 485
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeLevelerOutputTarget:Lcom/dolby/api/DsParams;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 486
    sget-object v1, Lcom/dolby/api/DsParams;->DolbyVolumeModelerCalibration:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 487
    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 488
    sget-object v1, Lcom/dolby/api/DsParams;->IntelligentEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 489
    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 490
    sget-object v1, Lcom/dolby/api/DsParams;->GraphicEqualizerBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 491
    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 492
    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 493
    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerBandGains:Lcom/dolby/api/DsParams;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 494
    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 495
    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandFrequencies:Lcom/dolby/api/DsParams;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 496
    sget-object v1, Lcom/dolby/api/DsParams;->AudioOptimizerChannelCount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 497
    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandIsolates:Lcom/dolby/api/DsParams;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 498
    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandLowThresholds:Lcom/dolby/api/DsParams;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 499
    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorBandHighThresholds:Lcom/dolby/api/DsParams;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 500
    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorOverdrive:Lcom/dolby/api/DsParams;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 501
    sget-object v1, Lcom/dolby/api/DsParams;->AudioRegulatorTimbrePreservationAmount:Lcom/dolby/api/DsParams;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 459
    sput-object v0, Lcom/dolby/api/DsParams;->params:[Lcom/dolby/api/DsParams;

    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/dolby/api/DsParams;->id_:I

    return-void
.end method

.method public static FromInt(I)Lcom/dolby/api/DsParams;
    .registers 4
    .param p0, "i"    # I

    .prologue
    .line 347
    const/16 v1, 0x64

    if-le p0, v1, :cond_11

    const/16 v1, 0x8f

    if-ge p0, v1, :cond_11

    .line 349
    sget-object v1, Lcom/dolby/api/DsParams;->params:[Lcom/dolby/api/DsParams;

    add-int/lit8 v2, p0, -0x64

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 359
    :goto_10
    return-object v0

    .line 357
    :cond_11
    const/4 v0, 0x0

    .local v0, "item":Lcom/dolby/api/DsParams;
    goto :goto_10
.end method

.method public static FromString(Ljava/lang/String;)Lcom/dolby/api/DsParams;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, "item":Lcom/dolby/api/DsParams;
    const/4 v1, 0x0

    .line 369
    .local v1, "isFound":Z
    if-eqz p0, :cond_23

    .line 371
    const/16 v0, 0x64

    .local v0, "i":I
    :goto_6
    const/16 v3, 0x8e

    if-ge v0, v3, :cond_23

    .line 373
    sget-object v3, Lcom/dolby/api/DsParams;->DAP1_PARAM_NAMES:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x64

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 375
    sget-object v3, Lcom/dolby/api/DsParams;->params:[Lcom/dolby/api/DsParams;

    add-int/lit8 v4, v0, -0x64

    aget-object v2, v3, v4

    .line 376
    .local v2, "item":Lcom/dolby/api/DsParams;
    const/4 v1, 0x1

    .line 393
    .end local v0    # "i":I
    .end local v2    # "item":Lcom/dolby/api/DsParams;
    :cond_23
    return-object v2

    .line 371
    .restart local v0    # "i":I
    .local v2, "item":Lcom/dolby/api/DsParams;
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolby/api/DsParams;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/dolby/api/DsParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolby/api/DsParams;

    return-object v0
.end method

.method public static values()[Lcom/dolby/api/DsParams;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/dolby/api/DsParams;->$VALUES:[Lcom/dolby/api/DsParams;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .registers 2

    .prologue
    .line 317
    iget v0, p0, Lcom/dolby/api/DsParams;->id_:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 325
    iget v1, p0, Lcom/dolby/api/DsParams;->id_:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_15

    iget v1, p0, Lcom/dolby/api/DsParams;->id_:I

    const/16 v2, 0x8f

    if-ge v1, v2, :cond_15

    .line 327
    sget-object v1, Lcom/dolby/api/DsParams;->DAP1_PARAM_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/dolby/api/DsParams;->id_:I

    add-int/lit8 v2, v2, -0x64

    aget-object v0, v1, v2

    .line 337
    .local v0, "name":Ljava/lang/String;
    :goto_14
    return-object v0

    .line 335
    .end local v0    # "name":Ljava/lang/String;
    :cond_15
    const-string/jumbo v0, "error"

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_14
.end method

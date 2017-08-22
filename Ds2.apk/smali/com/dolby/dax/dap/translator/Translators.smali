.class public Lcom/dolby/dax/dap/translator/Translators;
.super Ljava/lang/Object;
.source "Translators.java"


# static fields
.field static final parameterTranslators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dolby/dax/model/Parameter;",
            "Lcom/dolby/dax/dap/translator/Translator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v5, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/dolby/dax/dap/translator/Translators;->parameterTranslators:Ljava/util/Map;

    const/16 v4, 0x30

    new-array v1, v4, [Lcom/dolby/dax/dap/translator/Translator;

    new-instance v4, Lcom/dolby/dax/dap/translator/OutputModeTranslator;

    invoke-direct {v4}, Lcom/dolby/dax/dap/translator/OutputModeTranslator;-><init>()V

    aput-object v4, v1, v5

    new-instance v4, Lcom/dolby/dax/dap/translator/IeqTranslator;

    invoke-direct {v4}, Lcom/dolby/dax/dap/translator/IeqTranslator;-><init>()V

    const/4 v6, 0x1

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/GeqTranslator;

    invoke-direct {v4}, Lcom/dolby/dax/dap/translator/GeqTranslator;-><init>()V

    const/4 v6, 0x2

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_IEON:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->ieq_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/4 v6, 0x3

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_IEA:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->ieq_amount:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/4 v6, 0x4

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_GEON:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->graphic_equalizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/4 v6, 0x5

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_MDEE:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->mi_dialog_enhancer_steering_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/4 v6, 0x6

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_MDLE:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->mi_dv_leveler_steering_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/4 v6, 0x7

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_MIEE:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->mi_ieq_steering_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x8

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_MSCE:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->mi_surround_compressor_steering_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x9

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_AOON:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->audio_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0xa

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_BEON:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->bass_enhancer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0xb

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_NGON:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->surround_decoder_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0xc

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_DHRG:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->virtualizer_headphone_reverb_gain:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0xd

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/AudioOptimizerTranslator;

    invoke-direct {v4}, Lcom/dolby/dax/dap/translator/AudioOptimizerTranslator;-><init>()V

    const/16 v6, 0xe

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_BEB:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->bass_enhancer_boost:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0xf

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_BECF:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->bass_enhancer_cutoff_frequency:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x10

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_BEW:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->bass_enhancer_width:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x11

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_PLB:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->calibration_boost:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x12

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_DEA:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->dialog_enhancer_amount:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x13

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_DED:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->dialog_enhancer_ducking:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x14

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_DEON:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->dialog_enhancer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x15

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/AudioRegulatorEnableTranslator;

    invoke-direct {v4}, Lcom/dolby/dax/dap/translator/AudioRegulatorEnableTranslator;-><init>()V

    const/16 v6, 0x16

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/AudioRegulatorTranslator;

    invoke-direct {v4}, Lcom/dolby/dax/dap/translator/AudioRegulatorTranslator;-><init>()V

    const/16 v6, 0x17

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_ARDE:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->regulator_speaker_dist_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x18

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_AROD:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->regulator_overdrive:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x19

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_ARRA:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->regulator_relaxation_amount:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x1a

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_ARTP:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->regulator_timbre_preservation:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x1b

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SurroundBoostTranslator;

    invoke-direct {v4}, Lcom/dolby/dax/dap/translator/SurroundBoostTranslator;-><init>()V

    const/16 v6, 0x1c

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/VirtualBassSrcFreqTranslator;

    invoke-direct {v4}, Lcom/dolby/dax/dap/translator/VirtualBassSrcFreqTranslator;-><init>()V

    const/16 v6, 0x1d

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/VirtualBassMixFreqTranslator;

    invoke-direct {v4}, Lcom/dolby/dax/dap/translator/VirtualBassMixFreqTranslator;-><init>()V

    const/16 v6, 0x1e

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_VBM:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->virtual_bass_mode:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x1f

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_VBOG:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->virtual_bass_overall_gain:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x20

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_VBSG:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->virtual_bass_slope_gain:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x21

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_VBHG:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->virtual_bass_subgains:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x22

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP1_DSSA:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->virtualizer_speaker_angle:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x23

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP1_DSSF:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->virtualizer_speaker_start_freq:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x24

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_VMB:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->volmax_boost:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x25

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_DVLA:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->volume_leveler_amount:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x26

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_DVLE:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->volume_leveler_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x27

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_DVLI:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->volume_leveler_in_target:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x28

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_DVLO:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->volume_leveler_out_target:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x29

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_DVME:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->volume_modeler_enable:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x2a

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP_DVMC:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->volume_modeler_calibration:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x2b

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_DHFM:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->height_filter_mode:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x2c

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_DFSA:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->virtualizer_front_speaker_angle:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x2d

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_DSA:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->virtualizer_surround_speaker_angle:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x2e

    aput-object v4, v1, v6

    new-instance v4, Lcom/dolby/dax/dap/translator/SimpleTranslator;

    sget-object v6, Lcom/dolby/dax/dap/DapParameter;->DAP2_DHSA:Lcom/dolby/dax/dap/DapParameter;

    sget-object v7, Lcom/dolby/dax/model/Parameter;->virtualizer_height_speaker_angle:Lcom/dolby/dax/model/Parameter;

    invoke-direct {v4, v6, v7}, Lcom/dolby/dax/dap/translator/SimpleTranslator;-><init>(Lcom/dolby/dax/dap/DapParameter;Lcom/dolby/dax/model/Parameter;)V

    const/16 v6, 0x2f

    aput-object v4, v1, v6

    array-length v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v3, v1, v6

    invoke-interface {v3}, Lcom/dolby/dax/dap/translator/Translator;->srcParams()[Lcom/dolby/dax/model/Parameter;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_1

    aget-object v2, v8, v4

    sget-object v10, Lcom/dolby/dax/dap/translator/Translators;->parameterTranslators:Ljava/util/Map;

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/dap/translator/Translator;

    if-eqz v0, :cond_0

    const-string/jumbo v10, "Translators"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is associated with translators "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/dolby/dax/model/Parameter;)Lcom/dolby/dax/dap/translator/Translator;
    .locals 1

    sget-object v0, Lcom/dolby/dax/dap/translator/Translators;->parameterTranslators:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/dap/translator/Translator;

    return-object v0
.end method

.class public Lcom/dolby/dax/xml/TuningParser;
.super Ljava/lang/Object;
.source "TuningParser.java"


# instance fields
.field private final deviceTunings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/DeviceTuning;",
            ">;"
        }
    .end annotation
.end field

.field private final ti:Lcom/dolby/dax/xml/TagIterator;

.field private final tunings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/Tuning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolby/dax/xml/TagIterator;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/xml/TagIterator;",
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/Tuning;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/DeviceTuning;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    iput-object p2, p0, Lcom/dolby/dax/xml/TuningParser;->tunings:Ljava/util/List;

    iput-object p3, p0, Lcom/dolby/dax/xml/TuningParser;->deviceTunings:Ljava/util/List;

    return-void
.end method

.method private parseTuningDevices(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :goto_0
    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "device_id"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/dolby/dax/model/DeviceTuning;

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v3, "endpoint_port"

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/dolby/dax/model/DeviceTuning;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v1}, Lcom/dolby/dax/xml/TagIterator;->next()V

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "device_id"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->deviceTunings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parseTuningOptimizerBands(Lcom/dolby/dax/model/Tuning;Ljava/lang/String;)[[I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    const/16 v1, 0x14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v13, 0x14

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    const/16 v13, 0x14

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    const/16 v13, 0x14

    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v13, 0x14

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    const/16 v13, 0x14

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    const/16 v13, 0x14

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Ljava/util/ArrayList;

    const/16 v13, 0x14

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    const/16 v13, 0x14

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Ljava/util/ArrayList;

    const/16 v13, 0x14

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    const/16 v13, 0x14

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0x14

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "band_optimizer"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "frequency"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "gain_left"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "gain_right"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "gain_center"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "gain_lfe"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "gain_left_surround"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "gain_right_surround"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "gain_left_rear_surround"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "gain_right_rear_surround"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "gain_left_top_middle"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "gain_right_top_middle"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v13}, Lcom/dolby/dax/xml/TagIterator;->next()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v14, "band_optimizer"

    invoke-virtual {v13, v14}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/16 v14, 0x14

    if-le v13, v14, :cond_1

    new-instance v13, Lcom/dolby/dax/xml/ValidationException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v15, "Audio optimizer band count %d is higher than maximum %d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const/16 v17, 0x14

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v16, v18

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v13

    :cond_1
    const/16 v13, 0xb

    new-array v13, v13, [[I

    invoke-static {v2}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v4}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v9}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v13, v15

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v14

    const/4 v15, 0x4

    aput-object v14, v13, v15

    invoke-static {v7}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v14

    const/4 v15, 0x5

    aput-object v14, v13, v15

    invoke-static {v11}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v14

    const/4 v15, 0x6

    aput-object v14, v13, v15

    invoke-static {v6}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    invoke-static {v10}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    invoke-static {v8}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    invoke-static {v12}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v14

    const/16 v15, 0xa

    aput-object v14, v13, v15

    return-object v13
.end method

.method private parseTuningOutputMatrix(Lcom/dolby/dax/model/Tuning;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "intermediate_tuning_partial_output-mode"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "output_channels"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "mix_matrix"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "element"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "element"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "mix_matrix"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "intermediate_tuning_partial_output-mode"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    sget-object v1, Lcom/dolby/dax/model/Parameter;->output_mix_matrix:Lcom/dolby/dax/model/Parameter;

    invoke-static {v0}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    return-void
.end method

.method private parseTuningParameters(Lcom/dolby/dax/model/Tuning;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    const-string/jumbo v4, "audio-optimizer-bands"

    invoke-direct {p0, p1, v4}, Lcom/dolby/dax/xml/TuningParser;->parseTuningOptimizerBands(Lcom/dolby/dax/model/Tuning;Ljava/lang/String;)[[I

    move-result-object v0

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_frequency:Lcom/dolby/dax/model/Parameter;

    aget-object v5, v0, v9

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_l:Lcom/dolby/dax/model/Parameter;

    aget-object v5, v0, v10

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_r:Lcom/dolby/dax/model/Parameter;

    aget-object v5, v0, v7

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_c:Lcom/dolby/dax/model/Parameter;

    aget-object v5, v0, v8

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_lfe:Lcom/dolby/dax/model/Parameter;

    aget-object v5, v0, v6

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_ls:Lcom/dolby/dax/model/Parameter;

    const/4 v5, 0x5

    aget-object v5, v0, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rs:Lcom/dolby/dax/model/Parameter;

    const/4 v5, 0x6

    aget-object v5, v0, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_lrs:Lcom/dolby/dax/model/Parameter;

    const/4 v5, 0x7

    aget-object v5, v0, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rrs:Lcom/dolby/dax/model/Parameter;

    const/16 v5, 0x8

    aget-object v5, v0, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_ltm:Lcom/dolby/dax/model/Parameter;

    const/16 v5, 0x9

    aget-object v5, v0, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_gain_rtm:Lcom/dolby/dax/model/Parameter;

    const/16 v5, 0xa

    aget-object v5, v0, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    const-string/jumbo v4, "process-optimizer-bands"

    invoke-direct {p0, p1, v4}, Lcom/dolby/dax/xml/TuningParser;->parseTuningOptimizerBands(Lcom/dolby/dax/model/Tuning;Ljava/lang/String;)[[I

    move-result-object v1

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_frequency:Lcom/dolby/dax/model/Parameter;

    aget-object v5, v1, v9

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_l:Lcom/dolby/dax/model/Parameter;

    aget-object v5, v1, v10

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_r:Lcom/dolby/dax/model/Parameter;

    aget-object v5, v1, v7

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_c:Lcom/dolby/dax/model/Parameter;

    aget-object v5, v1, v8

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_lfe:Lcom/dolby/dax/model/Parameter;

    aget-object v5, v1, v6

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_ls:Lcom/dolby/dax/model/Parameter;

    const/4 v5, 0x5

    aget-object v5, v1, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_rs:Lcom/dolby/dax/model/Parameter;

    const/4 v5, 0x6

    aget-object v5, v1, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_lrs:Lcom/dolby/dax/model/Parameter;

    const/4 v5, 0x7

    aget-object v5, v1, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_rrs:Lcom/dolby/dax/model/Parameter;

    const/16 v5, 0x8

    aget-object v5, v1, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_ltm:Lcom/dolby/dax/model/Parameter;

    const/16 v5, 0x9

    aget-object v5, v1, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_gain_rtm:Lcom/dolby/dax/model/Parameter;

    const/16 v5, 0xa

    aget-object v5, v1, v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    invoke-direct {p0, p1}, Lcom/dolby/dax/xml/TuningParser;->parseTuningRegulatorBands(Lcom/dolby/dax/model/Tuning;)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->bass_enhancer_boost:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "bass-enhancer-boost"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->bass_enhancer_cutoff_frequency:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "bass-enhancer-cutoff-frequency"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->bass_enhancer_width:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "bass-enhancer-width"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->bass_extraction_cutoff_frequency:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "bass-extraction-cutoff-frequency"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->height_filter_mode:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "height-filter-mode"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_overdrive:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "regulator-overdrive"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_timbre_preservation:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "regulator-timbre-preservation"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_relaxation_amount:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "regulator-relaxation-amount"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtual_bass_overall_gain:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "virtual-bass-overall-gain"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtual_bass_slope_gain:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "virtual-bass-slope-gain"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "virtual-bass-mix-freqs"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtual_bass_mix_freq_low:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "frequency_low"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtual_bass_mix_freq_high:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "frequency_high"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "virtual-bass-mix-freqs"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "virtual-bass-src-freqs"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtual_bass_src_freq_low:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "frequency_low"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtual_bass_src_freq_high:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "frequency_high"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "virtual-bass-src-freqs"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "virtual-bass-subgains"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    new-array v2, v8, [I

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "num_gains"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v4

    array-length v5, v2

    if-eq v4, v5, :cond_0

    new-instance v4, Lcom/dolby/dax/xml/ValidationException;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "Expected %d Number of virtual bass subgains, found %d"

    new-array v7, v7, [Ljava/lang/Object;

    array-length v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v9, "num_gains"

    invoke-virtual {v8, v9}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "harmonic_2"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v9

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "harmonic_3"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v10

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "harmonic_4"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v7

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtual_bass_subgains:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p1, v4, v2}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "virtual-bass-subgains"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtualizer_speaker_angle:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "virtualizer-speaker-angle"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtualizer_speaker_start_freq:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "virtualizer-speaker-start-freq"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtualizer_front_speaker_angle:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "virtualizer-front-speaker-angle"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtualizer_height_speaker_angle:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "virtualizer-height-speaker-angle"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtualizer_surround_speaker_angle:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "virtualizer-surround-speaker-angle"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->volume_modeler_calibration:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "volume-modeler-calibration"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->audio_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "intermediate_tuning_audio-optimizer-enable"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->bass_enhancer_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "intermediate_tuning_bass-enhancer-enable"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->bass_extraction_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "intermediate_tuning_bass-extraction-enable"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->process_optimizer_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "intermediate_tuning_process-optimizer-enable"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "intermediate_tuning_regulator-enable"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_speaker_dist_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "intermediate_tuning_regulator-speaker-dist-enable"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->surround_decoder_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "intermediate_tuning_surround-decoder-enable"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->volume_modeler_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "intermediate_tuning_volume-modeler-enable"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    invoke-direct {p0, p1}, Lcom/dolby/dax/xml/TuningParser;->parseTuningOutputMatrix(Lcom/dolby/dax/model/Tuning;)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtual_bass_enable:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "intermediate_tuning_partial_virtual_bass_enable"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->virtual_bass_mode:Lcom/dolby/dax/model/Parameter;

    iget-object v5, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v6, "intermediate_tuning_partial_virtual-bass-mode"

    invoke-virtual {v5, v6}, Lcom/dolby/dax/xml/TagIterator;->consumeIntValueTag(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "intermediate_tuning_partial_virtualizer_enable"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeBoolValueTag(Ljava/lang/String;)Z

    move-result v3

    sget-object v5, Lcom/dolby/dax/model/Parameter;->virtualizer_enable:Lcom/dolby/dax/model/Parameter;

    invoke-virtual {p1}, Lcom/dolby/dax/model/Tuning;->isMono()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v9}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(I)[I

    move-result-object v4

    :goto_0
    invoke-virtual {p1, v5, v4}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Z)[I

    move-result-object v4

    goto :goto_0
.end method

.method private parseTuningRegulatorBands(Lcom/dolby/dax/model/Tuning;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "regulator-tuning"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "band_regulator"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "frequency"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "threshold_low"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "threshold_high"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "isolated_band"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->getBoolAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v4}, Lcom/dolby/dax/xml/TagIterator;->next()V

    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "band_regulator"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "regulator-tuning"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_frequency:Lcom/dolby/dax/model/Parameter;

    invoke-static {v0}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_threshold_low:Lcom/dolby/dax/model/Parameter;

    invoke-static {v3}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_threshold_high:Lcom/dolby/dax/model/Parameter;

    invoke-static {v2}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    sget-object v4, Lcom/dolby/dax/model/Parameter;->regulator_isolated_band:Lcom/dolby/dax/model/Parameter;

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/dolby/dax/model/Tuning;->set(Lcom/dolby/dax/model/Parameter;[I)V

    return-void
.end method


# virtual methods
.method parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :goto_0
    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "tuning"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/dolby/dax/model/Tuning;

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v3, "endpoint_type"

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dolby/dax/model/Endpoint;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/Endpoint;

    move-result-object v2

    iget-object v3, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v4, "mono_device"

    invoke-virtual {v3, v4}, Lcom/dolby/dax/xml/TagIterator;->getBoolAttribute(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolby/dax/model/Tuning;-><init>(Ljava/lang/String;Lcom/dolby/dax/model/Endpoint;Z)V

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v1}, Lcom/dolby/dax/xml/TagIterator;->next()V

    invoke-virtual {v0}, Lcom/dolby/dax/model/Tuning;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dolby/dax/xml/TuningParser;->parseTuningDevices(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dolby/dax/xml/TuningParser;->parseTuningParameters(Lcom/dolby/dax/model/Tuning;)V

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v2, "tuning"

    invoke-virtual {v1, v2}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolby/dax/xml/TuningParser;->tunings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.class public Lcom/dolby/dax/xml/PresetParser;
.super Ljava/lang/Object;
.source "PresetParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/dax/xml/PresetParser$PresetInfo;
    }
.end annotation


# static fields
.field private static final GEQ_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final IEQ_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final geqInfo:Lcom/dolby/dax/xml/PresetParser$PresetInfo;

.field private static final ieqInfo:Lcom/dolby/dax/xml/PresetParser$PresetInfo;


# instance fields
.field private final geqPresets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/GeqPreset;",
            ">;"
        }
    .end annotation
.end field

.field private final ieqPresets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/IeqPreset;",
            ">;"
        }
    .end annotation
.end field

.field private final ti:Lcom/dolby/dax/xml/TagIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v3, 0x7c

    const-string/jumbo v0, "ieq_(open|rich|focused)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/xml/PresetParser;->IEQ_NAME_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "geq_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-static {}, Lcom/dolby/dax/model/ProfileType;->values()[Lcom/dolby/dax/model/ProfileType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-static {}, Lcom/dolby/dax/model/PresetType;->values()[Lcom/dolby/dax/model/PresetType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolby/dax/xml/PresetParser;->GEQ_NAME_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/dolby/dax/xml/PresetParser$PresetInfo;

    const-string/jumbo v1, "ieq-bands"

    const-string/jumbo v2, "band_ieq"

    const-string/jumbo v3, "target"

    sget-object v4, Lcom/dolby/dax/model/Parameter;->ieq_frequency:Lcom/dolby/dax/model/Parameter;

    sget-object v5, Lcom/dolby/dax/model/Parameter;->ieq_target:Lcom/dolby/dax/model/Parameter;

    invoke-direct/range {v0 .. v5}, Lcom/dolby/dax/xml/PresetParser$PresetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolby/dax/model/Parameter;Lcom/dolby/dax/model/Parameter;)V

    sput-object v0, Lcom/dolby/dax/xml/PresetParser;->ieqInfo:Lcom/dolby/dax/xml/PresetParser$PresetInfo;

    new-instance v0, Lcom/dolby/dax/xml/PresetParser$PresetInfo;

    const-string/jumbo v1, "graphic-equalizer-bands"

    const-string/jumbo v2, "band_geq"

    const-string/jumbo v3, "gain"

    sget-object v4, Lcom/dolby/dax/model/Parameter;->geq_frequency:Lcom/dolby/dax/model/Parameter;

    sget-object v5, Lcom/dolby/dax/model/Parameter;->geq_gain:Lcom/dolby/dax/model/Parameter;

    invoke-direct/range {v0 .. v5}, Lcom/dolby/dax/xml/PresetParser$PresetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolby/dax/model/Parameter;Lcom/dolby/dax/model/Parameter;)V

    sput-object v0, Lcom/dolby/dax/xml/PresetParser;->geqInfo:Lcom/dolby/dax/xml/PresetParser$PresetInfo;

    return-void
.end method

.method public constructor <init>(Lcom/dolby/dax/xml/TagIterator;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/xml/TagIterator;",
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/IeqPreset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dolby/dax/model/GeqPreset;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    iput-object p2, p0, Lcom/dolby/dax/xml/PresetParser;->ieqPresets:Ljava/util/List;

    iput-object p3, p0, Lcom/dolby/dax/xml/PresetParser;->geqPresets:Ljava/util/List;

    return-void
.end method

.method private addGeqPreset(Ljava/lang/String;)Lcom/dolby/dax/model/GeqPreset;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    iget-object v4, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-static {v4, p1}, Lcom/dolby/dax/xml/PresetParser;->getGeqPresetType(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)Lcom/dolby/dax/model/PresetType;

    move-result-object v2

    iget-object v4, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-static {v4, p1}, Lcom/dolby/dax/xml/PresetParser;->getGeqProfileType(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)Lcom/dolby/dax/model/ProfileType;

    move-result-object v3

    iget-object v4, p0, Lcom/dolby/dax/xml/PresetParser;->geqPresets:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/GeqPreset;

    invoke-virtual {v0}, Lcom/dolby/dax/model/GeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v0}, Lcom/dolby/dax/model/GeqPreset;->getProfile()Lcom/dolby/dax/model/ProfileType;

    move-result-object v4

    if-ne v4, v3, :cond_0

    new-instance v4, Lcom/dolby/dax/xml/ValidationException;

    iget-object v5, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Geq preset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not unique"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v0, Lcom/dolby/dax/model/GeqPreset;

    invoke-direct {v0, v2, v3}, Lcom/dolby/dax/model/GeqPreset;-><init>(Lcom/dolby/dax/model/PresetType;Lcom/dolby/dax/model/ProfileType;)V

    iget-object v4, p0, Lcom/dolby/dax/xml/PresetParser;->geqPresets:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addIeqPreset(Ljava/lang/String;)Lcom/dolby/dax/model/IeqPreset;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    iget-object v3, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-static {v3, p1}, Lcom/dolby/dax/xml/PresetParser;->getIeqPresetType(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)Lcom/dolby/dax/model/PresetType;

    move-result-object v2

    iget-object v3, p0, Lcom/dolby/dax/xml/PresetParser;->ieqPresets:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/dax/model/IeqPreset;

    invoke-virtual {v0}, Lcom/dolby/dax/model/IeqPreset;->getType()Lcom/dolby/dax/model/PresetType;

    move-result-object v3

    if-ne v3, v2, :cond_0

    new-instance v3, Lcom/dolby/dax/xml/ValidationException;

    iget-object v4, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ieq preset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not unique"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v0, Lcom/dolby/dax/model/IeqPreset;

    invoke-direct {v0, v2}, Lcom/dolby/dax/model/IeqPreset;-><init>(Lcom/dolby/dax/model/PresetType;)V

    iget-object v3, p0, Lcom/dolby/dax/xml/PresetParser;->ieqPresets:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getGeqPresetType(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)Lcom/dolby/dax/model/PresetType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    sget-object v1, Lcom/dolby/dax/xml/PresetParser;->GEQ_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/dolby/dax/xml/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GEQ preset name is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolby/dax/model/PresetType;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/PresetType;

    move-result-object v1

    return-object v1
.end method

.method public static getGeqProfileType(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)Lcom/dolby/dax/model/ProfileType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    sget-object v1, Lcom/dolby/dax/xml/PresetParser;->GEQ_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/dolby/dax/xml/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GEQ preset name is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolby/dax/model/ProfileType;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/ProfileType;

    move-result-object v1

    return-object v1
.end method

.method public static getIeqPresetType(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)Lcom/dolby/dax/model/PresetType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    sget-object v1, Lcom/dolby/dax/xml/PresetParser;->IEQ_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/dolby/dax/xml/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IEQ preset name is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolby/dax/model/PresetType;->valueOf(Ljava/lang/String;)Lcom/dolby/dax/model/PresetType;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public parse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    :goto_0
    iget-object v4, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "preset"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v4}, Lcom/dolby/dax/xml/TagIterator;->next()V

    const-string/jumbo v4, "ieq"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Lcom/dolby/dax/xml/PresetParser;->ieqInfo:Lcom/dolby/dax/xml/PresetParser$PresetInfo;

    invoke-direct {p0, v0}, Lcom/dolby/dax/xml/PresetParser;->addIeqPreset(Ljava/lang/String;)Lcom/dolby/dax/model/IeqPreset;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/dolby/dax/xml/PresetParser;->parsePresetParams(Lcom/dolby/dax/xml/PresetParser$PresetInfo;Lcom/dolby/dax/model/ParameterValues;)V

    iget-object v4, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v5, "preset"

    invoke-virtual {v4, v5}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "geq"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v2, Lcom/dolby/dax/xml/PresetParser;->geqInfo:Lcom/dolby/dax/xml/PresetParser$PresetInfo;

    invoke-direct {p0, v0}, Lcom/dolby/dax/xml/PresetParser;->addGeqPreset(Ljava/lang/String;)Lcom/dolby/dax/model/GeqPreset;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/dolby/dax/xml/ValidationException;

    iget-object v5, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid preset type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/dolby/dax/xml/ValidationException;-><init>(Lcom/dolby/dax/xml/TagIterator;Ljava/lang/String;)V

    throw v4

    :cond_2
    return-void
.end method

.method parsePresetParams(Lcom/dolby/dax/xml/PresetParser$PresetInfo;Lcom/dolby/dax/model/ParameterValues;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dolby/dax/xml/ValidationException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    iget-object v3, p1, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->dataTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->consumeStartTag(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    iget-object v3, p1, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->rowTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->atStartTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v3, "frequency"

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    iget-object v3, p1, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->valueTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->getIntAttribute(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    invoke-virtual {v2}, Lcom/dolby/dax/xml/TagIterator;->next()V

    iget-object v2, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    iget-object v3, p1, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->rowTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    iget-object v3, p1, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->dataTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolby/dax/xml/PresetParser;->ti:Lcom/dolby/dax/xml/TagIterator;

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lcom/dolby/dax/xml/TagIterator;->consumeEndTag(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->frequency:Lcom/dolby/dax/model/Parameter;

    invoke-static {v0}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    iget-object v2, p1, Lcom/dolby/dax/xml/PresetParser$PresetInfo;->value:Lcom/dolby/dax/model/Parameter;

    invoke-static {v1}, Lcom/dolby/dax/xml/ParserUtils;->asIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/dolby/dax/model/ParameterValues;->set(Lcom/dolby/dax/model/Parameter;[I)V

    return-void
.end method

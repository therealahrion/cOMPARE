.class public Lcom/dolby/api/DsCommon;
.super Ljava/lang/Object;
.source "DsCommon.java"


# static fields
.field public static final GEQ_NAMES_XML:[[Ljava/lang/String;

.field public static final IEQ_PRESET_NAMES:[Ljava/lang/String;

.field public static final IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

.field public static final PROFILE_NAMES:[Ljava/lang/String;

.field public static final PROFILE_NAMES_XML:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Movie"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Music"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Game"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Voice"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Custom 1"

    aput-object v1, v0, v8

    const-string/jumbo v1, "Custom 2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/api/DsCommon;->PROFILE_NAMES:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Off"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Open"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Rich"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Focused"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Bright"

    aput-object v1, v0, v8

    const-string/jumbo v1, "Balanced"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Warm"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/api/DsCommon;->IEQ_PRESET_NAMES:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "movie"

    aput-object v1, v0, v4

    const-string/jumbo v1, "music"

    aput-object v1, v0, v5

    const-string/jumbo v1, "game"

    aput-object v1, v0, v6

    const-string/jumbo v1, "voice"

    aput-object v1, v0, v7

    const-string/jumbo v1, "user1"

    aput-object v1, v0, v8

    const-string/jumbo v1, "user2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ieq_off"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ieq_open"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ieq_rich"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ieq_focused"

    aput-object v1, v0, v7

    const-string/jumbo v1, "ieq_bright"

    aput-object v1, v0, v8

    const-string/jumbo v1, "ieq_balanced"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ieq_warm"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/api/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "geq_movie_off"

    aput-object v2, v1, v4

    const-string/jumbo v2, "geq_movie_open"

    aput-object v2, v1, v5

    const-string/jumbo v2, "geq_movie_rich"

    aput-object v2, v1, v6

    const-string/jumbo v2, "geq_movie_focused"

    aput-object v2, v1, v7

    const-string/jumbo v2, "geq_movie_bright"

    aput-object v2, v1, v8

    const-string/jumbo v2, "geq_movie_balanced"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "geq_movie_warm"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "geq_music_off"

    aput-object v2, v1, v4

    const-string/jumbo v2, "geq_music_open"

    aput-object v2, v1, v5

    const-string/jumbo v2, "geq_music_rich"

    aput-object v2, v1, v6

    const-string/jumbo v2, "geq_music_focused"

    aput-object v2, v1, v7

    const-string/jumbo v2, "geq_music_bright"

    aput-object v2, v1, v8

    const-string/jumbo v2, "geq_music_balanced"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "geq_music_warm"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "geq_game_off"

    aput-object v2, v1, v4

    const-string/jumbo v2, "geq_game_open"

    aput-object v2, v1, v5

    const-string/jumbo v2, "geq_game_rich"

    aput-object v2, v1, v6

    const-string/jumbo v2, "geq_game_focused"

    aput-object v2, v1, v7

    const-string/jumbo v2, "geq_game_bright"

    aput-object v2, v1, v8

    const-string/jumbo v2, "geq_game_balanced"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "geq_game_warm"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "geq_voice_off"

    aput-object v2, v1, v4

    const-string/jumbo v2, "geq_voice_open"

    aput-object v2, v1, v5

    const-string/jumbo v2, "geq_voice_rich"

    aput-object v2, v1, v6

    const-string/jumbo v2, "geq_voice_focused"

    aput-object v2, v1, v7

    const-string/jumbo v2, "geq_voice_bright"

    aput-object v2, v1, v8

    const-string/jumbo v2, "geq_voice_balanced"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "geq_voice_warm"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    aput-object v1, v0, v7

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "geq_user1_off"

    aput-object v2, v1, v4

    const-string/jumbo v2, "geq_user1_open"

    aput-object v2, v1, v5

    const-string/jumbo v2, "geq_user1_rich"

    aput-object v2, v1, v6

    const-string/jumbo v2, "geq_user1_focused"

    aput-object v2, v1, v7

    const-string/jumbo v2, "geq_user1_bright"

    aput-object v2, v1, v8

    const-string/jumbo v2, "geq_user1_balanced"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "geq_user1_warm"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    aput-object v1, v0, v8

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "geq_user2_off"

    aput-object v2, v1, v4

    const-string/jumbo v2, "geq_user2_open"

    aput-object v2, v1, v5

    const-string/jumbo v2, "geq_user2_rich"

    aput-object v2, v1, v6

    const-string/jumbo v2, "geq_user2_focused"

    aput-object v2, v1, v7

    const-string/jumbo v2, "geq_user2_bright"

    aput-object v2, v1, v8

    const-string/jumbo v2, "geq_user2_balanced"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "geq_user2_warm"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/dolby/api/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/dolby/api/IDs;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v7, "DsCommon"

    const-string/jumbo v8, "getServiceIntent() resolveInfos=null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const-string/jumbo v7, "DsCommon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getServiceIntent() resolveInfos.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

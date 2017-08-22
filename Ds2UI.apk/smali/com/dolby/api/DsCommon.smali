.class public Lcom/dolby/api/DsCommon;
.super Ljava/lang/Object;
.source "DsCommon.java"


# static fields
.field public static final ACCESS_AVAILABLE_MSG:I = 0x8

.field public static final ACCESS_RELEASED_MSG:I = 0x7

.field public static final ACCESS_REQUESTED_MSG:I = 0x9

.field public static final CMDINIT:Ljava/lang/String; = "init"

.field public static final CMDNAME:Ljava/lang/String; = "cmd"

.field public static final CMDONOFF:Ljava/lang/String; = "on off"

.field public static final CMDSELECTGAME:I = 0x2

.field public static final CMDSELECTMOVIE:I = 0x0

.field public static final CMDSELECTMUSIC:I = 0x1

.field public static final CMDSELECTPRESET1:I = 0x4

.field public static final CMDSELECTPRESET2:I = 0x5

.field public static final CMDSELECTVOICE:I = 0x3

.field public static final CODE_DS_OFF:I = 0x10

.field public static final CODE_DS_ON:I = 0x11

.field public static final CODE_LAUNCH_APP:I = 0x30

.field public static final CODE_SET_PROFILE_0:I = 0x20

.field public static final CODE_SET_PROFILE_1:I = 0x21

.field public static final CODE_SET_PROFILE_2:I = 0x22

.field public static final CODE_SET_PROFILE_3:I = 0x23

.field public static final CODE_SET_PROFILE_4:I = 0x24

.field public static final CODE_SET_PROFILE_5:I = 0x25

.field public static final DAP1_PARAM_ID_END:I = 0x8f

.field public static final DAP1_PARAM_ID_START:I = 0x64

.field public static final DAP_CPDP_PARAM_ID_END:I = 0xf8

.field public static final DAP_CPDP_PARAM_ID_START:I = 0xc8

.field public static final DS_ACCESS_LOCK_NOT_AVAILABLE:I = -0x5

.field public static final DS_ALREADY_INITIALIZED:I = 0x2

.field public static final DS_AUDIOFOCUS_ABANDON:I = 0x2

.field public static final DS_AUDIOFOCUS_GAIN:I = 0x0

.field public static final DS_AUDIOFOCUS_LOSS:I = 0x1

.field public static final DS_CANNOT_LOAD_SETTINGS:I = -0x3

.field public static final DS_CANNOT_LOAD_TUNINGS:I = -0x4

.field public static final DS_CLIENT_VER_ONE:I = 0x1

.field public static final DS_CLIENT_VER_TWO:I = 0x2

.field public static final DS_INVALID_ARGUMENT:I = -0x1

.field public static final DS_NOT_INITIALIZED:I = 0x3

.field public static final DS_NOT_RUNNING:I = -0x2

.field public static final DS_NO_ERROR:I = 0x0

.field public static final DS_OUT_OF_BOUNDS:I = 0x1

.field public static final DS_PROFILE_NAME_AND_SETTINGS_MODIFIED:I = 0x3

.field public static final DS_PROFILE_NAME_MODIFIED:I = 0x2

.field public static final DS_PROFILE_NOT_MODIFIED:I = 0x0

.field public static final DS_PROFILE_SETTINGS_MODIFIED:I = 0x1

.field public static final DS_SETTING_NOT_PERMITTED:I = 0x4

.field public static final DS_STATUS_CHANGED_MSG:I = 0x1

.field public static final DS_STATUS_SUSPENDED_MSG:I = 0x6

.field public static final DS_UNKNOWN_ERROR:I = -0x6

.field public static final GEQ_NAMES_XML:[[Ljava/lang/String;

.field public static final IEQ_PRESET_NAMES:[Ljava/lang/String;

.field public static final IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

.field public static final INIT_ACTION:Ljava/lang/String; = "com.dolby.ds.srvcmd.init"

.field public static final LAUNCH_DOLBY_APP_ACTION:Ljava/lang/String; = "com.dolby.ds.srvcmd.launchapp"

.field public static final LEGACY_CLIENT_SETTING_MSG:I = 0xb

.field public static final ONOFF_ACTION:Ljava/lang/String; = "com.dolby.ds.srvcmd.toggleonoff"

.field public static final PROFILE_NAMES:[Ljava/lang/String;

.field public static final PROFILE_NAMES_XML:[Ljava/lang/String;

.field public static final PROFILE_NAME_CHANGED_MSG:I = 0xa

.field public static final PROFILE_SELECTED_MSG:I = 0x2

.field public static final PROFILE_SETTINGS_CHANGED_MSG:I = 0x3

.field public static final SELECTPROFILE_ACTION:Ljava/lang/String; = "com.dolby.ds.srvcmd.select"

.field public static final VISUALIZER_SUSPENDED_MSG:I = 0x5

.field public static final VISUALIZER_UPDATED_MSG:I = 0x4

.field public static final WIDGET_CLASS:Ljava/lang/String; = "widget class"


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
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

    .line 82
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

    .line 87
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

    .line 92
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

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    .line 98
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

    .line 99
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

    .line 100
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

    .line 101
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

    .line 102
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

    .line 103
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

    .line 97
    sput-object v0, Lcom/dolby/api/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/dolby/api/IDs;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 201
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v0, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 203
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v5, :cond_21

    .line 205
    const-string/jumbo v7, "DsCommon"

    const-string/jumbo v8, "getServiceIntent() resolveInfos=null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v10

    .line 210
    :cond_21
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_47

    .line 212
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

    .line 213
    return-object v10

    .line 216
    :cond_47
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 217
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 218
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 219
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 222
    return-object v0
.end method

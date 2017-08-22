.class public Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;
.super Landroid/app/Activity;
.source "DlbInStoreDemoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private mApController:Lcom/dolby/instoredemoapp/DlbApController;

.field private mAutoPilotDataStream:Ljava/io/InputStream;

.field private mExitBtn:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mIsManualStop:Z

.field private mIsPlayingLoopMedia:Z

.field private mIsPrepared:Z

.field private mIsResumed:Z

.field private mReplayBtn:Landroid/widget/ImageButton;

.field private mReplayEnabled:Z

.field private mStopBtn:Landroid/widget/ImageButton;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method static synthetic -get0(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Lcom/dolby/instoredemoapp/DlbApController;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    return v0
.end method

.method static synthetic -get3(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsResumed:Z

    return v0
.end method

.method static synthetic -get4(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get5(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get7(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z

    return p1
.end method

.method static synthetic -set1(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    return p1
.end method

.method static synthetic -set2(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getDemoUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getLoopUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Ljava/io/InputStream;
    .locals 1

    invoke-direct {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getAutoPilotXmlFile()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsResumed:Z

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;

    return-void
.end method

.method private getAutoPilotXmlFile()Ljava/io/InputStream;
    .locals 3

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "instore_demo_autopilot.xml"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DlbInStoreDemoPlayer"

    const-string/jumbo v2, "DlbInstoreDemoPlayer.getAutoPilotXmlFile, the file does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7e1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private getDemoUri()Landroid/net/Uri;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getLoopUri()Landroid/net/Uri;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x7f040000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string/jumbo v0, "DlbInStoreDemoPlayer"

    const-string/jumbo v1, "onCompletion called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7df

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "DlbInStoreDemoPlayer"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->setContentView(I)V

    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance v0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;

    invoke-direct {v0, p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;-><init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;

    invoke-direct {v1, p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;-><init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;

    invoke-direct {v1, p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;-><init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mExitBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mExitBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$4;

    invoke-direct {v1, p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$4;-><init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "DlbInStoreDemoPlayer"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-virtual {v1}, Lcom/dolby/instoredemoapp/DlbApController;->onExit()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const-string/jumbo v0, "DlbInStoreDemoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError called, what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "DlbInStoreDemoPlayer"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsResumed:Z

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-virtual {v1}, Lcom/dolby/instoredemoapp/DlbApController;->abandonAFandAR()V

    :cond_0
    iget-boolean v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string/jumbo v0, "DlbInStoreDemoPlayer"

    const-string/jumbo v1, "onPrepared called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/DlbApController;->sendApMessages()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    const-string/jumbo v0, "DlbInStoreDemoPlayer"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/DlbApController;->requestAFandAR()Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsResumed:Z

    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string/jumbo v0, "DlbInStoreDemoPlayer"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dolby/instoredemoapp/DlbApController;

    invoke-direct {v0, p0}, Lcom/dolby/instoredemoapp/DlbApController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/dolby/instoredemoapp/DlbApController;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-direct {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getAutoPilotXmlFile()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolby/instoredemoapp/DlbApController;->setApInfoFile(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v4, 0x7df

    const/4 v3, 0x0

    const-string/jumbo v0, "DlbInStoreDemoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchEvent called action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.class public final Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.super Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;
    }
.end annotation


# static fields
.field private static final GL_CALLBACK_CMD_ON_BIND_FRAMEBUFFER:I = 0x1f40

.field private static final GL_CALLBACK_CMD_ON_POST_RENDER_BUFFER:I = 0x1f42

.field private static final GL_CALLBACK_CMD_ON_PRE_RENDER_BUFFER:I = 0x1f41

.field public static HARDWAREDECODER:I = 0x1

.field private static final JITTER_DEFAULT:I = 0x7d0

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_CAPTURE_COMPLETE:I = 0x12c

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_FIRST_BUFFERING_COMPLETE:I = 0x12d

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_NO_LIVE:I = 0x65

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field protected static final MEDIA_SET_VIDEO_SAR:I = 0x2711

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static SDK_VERSION:I = 0x2711

.field public static SOFTWAREDECODER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "tv.danmaku.ijk.media.player.IjkMediaPlayer"

.field public static final lock:Ljava/lang/Object;

.field private static mDevMode:I = 0x0

.field private static volatile mIsLibLoaded:Z = false

.field private static volatile mIsNativeInitialized:Z = false

.field private static mNotifyIsFreeStreamListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener; = null

.field private static mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics; = null

.field private static mStatLogUrl:Ljava/lang/String; = "http://query.v.cc.163.com/query?content="

.field private static sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

.field private static staticVideoUrl:Ljava/lang/String;


# instance fields
.field private DEBUG_GET_VIDEO_PLAY_URL:Ljava/lang/String;

.field private GET_CID_URL:Ljava/lang/String;

.field private anchorCCid:I

.field private buffer_time:I

.field private can_fwd_:Z

.field private cdn:Ljava/lang/String;

.field private cell_playersetting_:Z

.field public defaultOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

.field private default_player_setting_:Z

.field private fwdextime_:I

.field private fwdnew_:Z

.field private gametype:I

.field private is_free_cdn_:I

.field private mCurrentState:I

.field private mDataSource:Ljava/lang/String;

.field private mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

.field private mFFConcatContent:Ljava/lang/String;

.field private mListenerContext:I
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeMediaPlayer:J
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativePlayerConfig:J
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativePlayerStat:J
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeSurfaceTexture:I
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

.field private mOnGetVideoUrlListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;

.field private mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

.field public mOnRequestUpdateTexture:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;

.field private mPanorama:I

.field private final mSTMatrix:[F

.field private mScreenOnWhilePlaying:Z

.field private mSoftDecodeTextureId:I

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureId:I

.field private mVbrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoHeight:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxjitter_:I

.field private mbPause:Z

.field private minjitter_:I

.field private mode:I

.field private myOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

.field private no_playersetting_:Z

.field private panorama:I

.field public picHeight:I

.field public picWidth:I

.field playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

.field private roomId:I

.field private scopHeight:I

.field private scopMode:Z

.field private scopWidth:I

.field private sdkSource:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private strGameUid:Ljava/lang/String;

.field private strLogExtraInfo:Ljava/lang/String;

.field private subId:I

.field private volatile surface:Landroid/view/Surface;

.field private surfaceview_height:I

.field private surfaceview_width:I

.field private templateType:I

.field private uid:J

.field private urs:Ljava/lang/String;

.field private vbrSelect:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    const-string v0, ""

    .line 173
    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->staticVideoUrl:Ljava/lang/String;

    .line 194
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;-><init>()V

    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    const/4 v0, 0x0

    .line 201
    sput-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    .line 214
    sput-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    const/4 v0, 0x0

    .line 279
    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

    .line 281
    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mNotifyIsFreeStreamListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 234
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 242
    sget-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V

    return-void
.end method

.method private constructor <init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V
    .locals 4

    .line 467
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 136
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 137
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mPanorama:I

    const-string v2, "http://192.168.229.158:50000/info_by_urs?urs="

    .line 139
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->GET_CID_URL:Ljava/lang/String;

    const-string v2, "http://192.168.229.163:8282/video_play_url_mobile/"

    .line 140
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->DEBUG_GET_VIDEO_PLAY_URL:Ljava/lang/String;

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVbrList:Ljava/util/List;

    .line 143
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surfaceview_width:I

    .line 144
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surfaceview_height:I

    .line 146
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    .line 147
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSoftDecodeTextureId:I

    .line 150
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mbPause:Z

    .line 161
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->anchorCCid:I

    .line 162
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->templateType:I

    .line 163
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->roomId:I

    .line 164
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->subId:I

    .line 165
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->panorama:I

    .line 166
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->gametype:I

    const-wide/16 v2, 0x0

    .line 167
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->uid:J

    const-string v2, ""

    .line 168
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->strGameUid:Ljava/lang/String;

    const-string v2, ""

    .line 172
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->videoUrl:Ljava/lang/String;

    const-string v2, ""

    .line 174
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->urs:Ljava/lang/String;

    const-string v2, ""

    .line 175
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sid:Ljava/lang/String;

    const-string v2, ""

    .line 176
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->vbrSelect:Ljava/lang/String;

    const-string v2, ""

    .line 177
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->strLogExtraInfo:Ljava/lang/String;

    const/4 v2, 0x1

    .line 179
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->can_fwd_:Z

    .line 180
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->fwdnew_:Z

    .line 181
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->buffer_time:I

    .line 182
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->fwdextime_:I

    .line 183
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->minjitter_:I

    .line 184
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->maxjitter_:I

    .line 185
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->cell_playersetting_:Z

    .line 186
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->default_player_setting_:Z

    .line 187
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->no_playersetting_:Z

    .line 188
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->is_free_cdn_:I

    .line 189
    new-instance v1, Ltv/danmaku/ijk/media/player/PlayerConfig;

    invoke-direct {v1}, Ltv/danmaku/ijk/media/player/PlayerConfig;-><init>()V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    const/16 v1, 0x10

    .line 245
    new-array v1, v1, [F

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrix:[F

    .line 277
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnGetVideoUrlListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;

    .line 409
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->defaultOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

    .line 468
    invoke-direct {p0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initPlayer(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 238
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V

    return-void
.end method

.method private static OnVideoDecoderSelectedFromNative(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 441
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->myOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

    if-eqz v0, :cond_2

    .line 447
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;->OnVideoDecoderSelected(Ljava/lang/String;)V

    .line 448
    :cond_2
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->defaultOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;->OnVideoDecoderSelected(Ljava/lang/String;)V

    return-void
.end method

.method private native _captureFrame()V
.end method

.method private native _getAudioCodecInfo()Ljava/lang/String;
.end method

.method private static final native _getColorFormatName(I)Ljava/lang/String;
.end method

.method private native _getMediaMeta()Landroid/os/Bundle;
.end method

.method private native _getTextureId()I
.end method

.method private native _getVideoCodecInfo()Ljava/lang/String;
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pausedisplay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset(I)V
.end method

.method private native _resumedisplay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setAvCodecOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setFrameDrop(I)V
.end method

.method private native _setMediaCodecEnabled(Z)V
.end method

.method private native _setOpenSLESEnabled(Z)V
.end method

.method private native _setOverlayFormat(I)V
.end method

.method private native _setPlayerConfig(Ltv/danmaku/ijk/media/player/PlayerConfig;)V
.end method

.method private native _setStartSeekPos(I)V
.end method

.method private native _setSwScaleOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$0(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 156
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:I

    return-void
.end method

.method static synthetic access$1(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 143
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surfaceview_width:I

    return p0
.end method

.method static synthetic access$10(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 129
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$11(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 130
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$12(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 131
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return p0
.end method

.method static synthetic access$13(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 132
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return p0
.end method

.method static synthetic access$14(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J
    .locals 2

    .line 167
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->uid:J

    return-wide v0
.end method

.method static synthetic access$15(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 175
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$16()Ljava/lang/String;
    .locals 1

    .line 173
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->staticVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->src:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$18()I
    .locals 1

    .line 84
    sget v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->SDK_VERSION:I

    return v0
.end method

.method static synthetic access$19(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 169
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->cdn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 154
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->scopWidth:I

    return-void
.end method

.method static synthetic access$20(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 162
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->templateType:I

    return p0
.end method

.method static synthetic access$21(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 163
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->roomId:I

    return p0
.end method

.method static synthetic access$22(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 164
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->subId:I

    return p0
.end method

.method static synthetic access$23(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V
    .locals 0

    .line 1077
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->onCCPlayerFirstBufferingComplete()V

    return-void
.end method

.method static synthetic access$24(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/util/List;
    .locals 0

    .line 142
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVbrList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$25(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->cdn:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 161
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->anchorCCid:I

    return-void
.end method

.method static synthetic access$28(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 162
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->templateType:I

    return-void
.end method

.method static synthetic access$29(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 166
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->gametype:I

    return-void
.end method

.method static synthetic access$3(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 144
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surfaceview_height:I

    return p0
.end method

.method static synthetic access$30(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->vbrSelect:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 163
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->roomId:I

    return-void
.end method

.method static synthetic access$32(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 164
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->subId:I

    return-void
.end method

.method static synthetic access$33(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 188
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->is_free_cdn_:I

    return-void
.end method

.method static synthetic access$34(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->no_playersetting_:Z

    return p0
.end method

.method static synthetic access$35(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z
    .locals 0

    .line 186
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->default_player_setting_:Z

    return p0
.end method

.method static synthetic access$36(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->can_fwd_:Z

    return-void
.end method

.method static synthetic access$37(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->fwdnew_:Z

    return-void
.end method

.method static synthetic access$38(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 181
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->buffer_time:I

    return-void
.end method

.method static synthetic access$39(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 183
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->minjitter_:I

    return-void
.end method

.method static synthetic access$4(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 155
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->scopHeight:I

    return-void
.end method

.method static synthetic access$40(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 184
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->maxjitter_:I

    return-void
.end method

.method static synthetic access$41(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->can_fwd_:Z

    return p0
.end method

.method static synthetic access$42(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z
    .locals 0

    .line 180
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->fwdnew_:Z

    return p0
.end method

.method static synthetic access$43(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 181
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->buffer_time:I

    return p0
.end method

.method static synthetic access$44(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 183
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->minjitter_:I

    return p0
.end method

.method static synthetic access$45(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 184
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->maxjitter_:I

    return p0
.end method

.method static synthetic access$46(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->cell_playersetting_:Z

    return p0
.end method

.method static synthetic access$47(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 161
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->anchorCCid:I

    return p0
.end method

.method static synthetic access$48(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 174
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->urs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$49(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 166
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->gametype:I

    return p0
.end method

.method static synthetic access$5(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J
    .locals 2

    .line 109
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mNativeMediaPlayer:J

    return-wide v0
.end method

.method static synthetic access$50(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->strLogExtraInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$51(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 172
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$52(Ljava/lang/String;)V
    .locals 0

    .line 173
    sput-object p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->staticVideoUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$53(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;
    .locals 0

    .line 277
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnGetVideoUrlListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;

    return-object p0
.end method

.method static synthetic access$54(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 176
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->vbrSelect:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$55()Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;
    .locals 1

    .line 281
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mNotifyIsFreeStreamListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;

    return-object v0
.end method

.method static synthetic access$56(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 188
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->is_free_cdn_:I

    return p0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V
    .locals 0

    .line 760
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$8(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 129
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return-void
.end method

.method static synthetic access$9(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V
    .locals 0

    .line 130
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return-void
.end method

.method private checkPackageInfo(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1708
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 1710
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method private createTextureObject()I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x1

    .line 535
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 536
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 539
    aget v0, v1, v2

    const v1, 0x8d65

    .line 540
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    .line 543
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    .line 545
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v2, 0x812f

    const/16 v3, 0x2802

    .line 547
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 549
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return v0
.end method

.method public static getColorFormatName(I)Ljava/lang/String;
    .locals 0

    .line 1051
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getColorFormatName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1458
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1463
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static getPreferH264Decoder()Ljava/lang/String;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const-string v0, "video/avc"

    .line 1653
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 1656
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1657
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v3, :cond_7

    .line 1685
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    move-object v3, v0

    const/4 v0, 0x0

    .line 1687
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lt v0, v5, :cond_5

    if-eqz v3, :cond_4

    .line 1693
    iget-object v0, v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_2

    goto :goto_2

    .line 1696
    :cond_2
    iget v0, v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    sget v2, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_LAST_CHANCE:I

    if-ge v0, v2, :cond_3

    .line 1697
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "unaccetable codec: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1701
    :cond_3
    iget-object v0, v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_2
    return-object v1

    .line 1688
    :cond_5
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    .line 1689
    iget v6, v5, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    iget v7, v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    if-le v6, v7, :cond_6

    move-object v3, v5

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1661
    :cond_7
    invoke-static {v5}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 1662
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    .line 1665
    :cond_8
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_4

    .line 1669
    :cond_9
    array-length v8, v7

    const/4 v9, 0x0

    :goto_3
    if-lt v9, v8, :cond_a

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    aget-object v10, v7, v9

    .line 1670
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_5

    .line 1672
    :cond_b
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_5

    .line 1675
    :cond_c
    invoke-static {v6, v0}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->setupCandidate(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    move-result-object v10

    if-nez v10, :cond_d

    goto :goto_5

    .line 1681
    :cond_d
    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method private static initNativeOnce()V
    .locals 2

    .line 216
    const-class v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v0

    .line 217
    :try_start_0
    sget-boolean v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 218
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_init(Z)V

    .line 219
    sput-boolean v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    .line 216
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initPlayer(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V
    .locals 1

    .line 474
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 475
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initNativeOnce()V

    .line 478
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 479
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-direct {v0, p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    goto :goto_0

    .line 480
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 481
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-direct {v0, p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 483
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    .line 490
    :goto_0
    iput p3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mPanorama:I

    .line 491
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setup(Ljava/lang/Object;ZI)V

    return-void
.end method

.method private initSurface()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 496
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "IJKMEDIA"

    const-string v2, "init surface"

    .line 497
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    if-nez v1, :cond_0

    .line 499
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->createTextureObject()I

    move-result v1

    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    .line 500
    :cond_0
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 501
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$3;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$3;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 510
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    .line 496
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSurfaceWithTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 517
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "IJKMEDIA"

    const-string v2, "init surface=="

    .line 518
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 520
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$4;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$4;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 529
    new-instance p1, Landroid/view/Surface;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    .line 517
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V
    .locals 2

    .line 203
    const-class v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v0

    .line 204
    :try_start_0
    sget-boolean v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    if-nez v1, :cond_0

    const-string v1, "ijkffmpeg"

    .line 205
    invoke-interface {p0, v1}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "ijkutil"

    .line 206
    invoke-interface {p0, v1}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "ijksdl"

    .line 207
    invoke-interface {p0, v1}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "ijkplayer"

    .line 208
    invoke-interface {p0, v1}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 209
    sput-boolean p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    .line 203
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init(Z)V
.end method

.method private final native native_message_loop(Ljava/lang/Object;)V
.end method

.method private final native native_setup(Ljava/lang/Object;ZI)V
.end method

.method private native onCCPlayerFirstBufferingComplete()V
.end method

.method private static onControlResolveSegmentCount(Ljava/lang/Object;)I
    .locals 3
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .line 1235
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onControlResolveSegmentCount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    .line 1236
    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1240
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1241
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return v0

    .line 1245
    :cond_1
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    if-nez p0, :cond_2

    return v0

    .line 1249
    :cond_2
    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;->onControlResolveSegmentCount()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static onControlResolveSegmentDuration(Ljava/lang/Object;I)I
    .locals 5
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .line 1292
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onControlResolveSegmentDuration %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    .line 1293
    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1297
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1298
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return v0

    .line 1302
    :cond_1
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    if-nez p0, :cond_2

    return v0

    .line 1306
    :cond_2
    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;->onControlResolveSegmentDuration(I)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static onControlResolveSegmentOfflineMrl(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 5
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .line 1273
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onControlResolveSegmentOfflineMrl %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1274
    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1278
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1279
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return-object v0

    .line 1283
    :cond_1
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    if-nez p0, :cond_2

    return-object v0

    .line 1287
    :cond_2
    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;->onControlResolveSegmentOfflineMrl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static onControlResolveSegmentUrl(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 5
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .line 1254
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onControlResolveSegmentUrl %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1255
    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1259
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1260
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return-object v0

    .line 1264
    :cond_1
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    if-nez p0, :cond_2

    return-object v0

    .line 1268
    :cond_2
    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;->onControlResolveSegmentUrl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private native onPlayerLoadError(I)V
.end method

.method private static onSelectCodec(Ljava/lang/Object;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1324
    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1328
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1329
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez v2, :cond_1

    return-object v0

    .line 1333
    :cond_1
    iget-object p0, v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    if-nez p0, :cond_2

    .line 1335
    sget-object p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;->sInstance:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;

    :cond_2
    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 1337
    invoke-interface/range {v1 .. v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;->onMediaCodecSelect(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 1
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1200
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1208
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 1210
    :cond_2
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    if-eqz v0, :cond_3

    .line 1211
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1212
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method private releaseSurface()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 558
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 561
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 562
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    .line 558
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static requestRedraw(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 314
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p0, :cond_0

    .line 316
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnRequestUpdateTexture:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;

    if-eqz v0, :cond_0

    .line 317
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnRequestUpdateTexture:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;->onRequestUpdateTexture()V

    :cond_0
    return-void
.end method

.method private static sendHttpStat(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1426
    :cond_0
    sget-object p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

    if-eqz p0, :cond_1

    .line 1427
    sget-object p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;->reportHttpStatics(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static sendHttpStat(Ljava/lang/String;)V
    .locals 2

    .line 1432
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

    if-eqz v0, :cond_0

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStatLogUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1435
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;->reportHttpStatics(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private native setCropMode(ZII)V
.end method

.method private native setLoopNumber(I)V
.end method

.method private native setRealTimeFlag(Z)V
.end method

.method private native setVideoDisable(I)V
.end method

.method private stayAwake(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 762
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 764
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 768
    :cond_1
    :goto_0
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStayAwake:Z

    .line 769
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .line 773
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStayAwake:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public OpenCCApp(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 1

    const-string v0, "com.netease.cc"

    .line 1719
    invoke-direct {p0, v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->checkPackageInfo(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1724
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1725
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1727
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 1731
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x2

    return p1
.end method

.method public OpenCCAppWithRoomId(Landroid/app/Activity;II)I
    .locals 3

    const-string v0, "com.netease.cc"

    .line 1739
    invoke-direct {p0, v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->checkPackageInfo(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1742
    sget-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "=========no cc install==============="

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 1747
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1748
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cc://join-room/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1749
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1751
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 1755
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x2

    return p1
.end method

.method public StartPlay(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 337
    :try_start_0
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setRealTimeFlag(Z)V

    .line 338
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    const-string p1, "reconnect"

    const-string v1, "1"

    .line 339
    invoke-virtual {p0, p1, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "timeout"

    const-string v1, "20*1000*1000"

    .line 340
    invoke-virtual {p0, p1, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "probesize"

    const-string v1, "200000"

    .line 341
    invoke-virtual {p0, p1, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "analyzeduration"

    const-string v1, "12000000"

    .line 342
    invoke-virtual {p0, p1, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    return v0

    :catch_0
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, -0x4

    return p1

    :catch_1
    move-exception p1

    .line 353
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 p1, -0x3

    return p1

    :catch_2
    move-exception p1

    .line 349
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 p1, -0x2

    return p1

    :catch_3
    move-exception p1

    .line 345
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public StartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    const-string v0, " "

    const-string v1, ""

    .line 1492
    invoke-virtual {p8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1494
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    sget-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "==================call SetSdkSource Before Play=============="

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 1499
    :cond_0
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vapi.cc.easebar.com"

    .line 1500
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://vquery.cc.vapi.cc.easebar.com/query?content="

    .line 1502
    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStatLogUrl:Ljava/lang/String;

    .line 1503
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDomain()V

    .line 1505
    :cond_1
    iput-object p2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->src:Ljava/lang/String;

    .line 1506
    iput-object p3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->urs:Ljava/lang/String;

    .line 1507
    iput-object p6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sid:Ljava/lang/String;

    .line 1508
    iput-wide p4, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->uid:J

    .line 1509
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result p3

    const/16 p4, 0x800

    if-ge p3, p4, :cond_2

    .line 1510
    iput-object p8, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->strLogExtraInfo:Ljava/lang/String;

    .line 1511
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "?coplatform="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&src="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->src:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&sid="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&vbrmode=1"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p9, :cond_3

    .line 1513
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "&isfree=1"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1514
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-eq p7, p2, :cond_4

    .line 1516
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "&vbrname="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1517
    :cond_4
    sget-object p2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "=============mobile url is============"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    new-instance p2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-virtual {p2, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return p4
.end method

.method public native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public captureFrame()V
    .locals 0

    .line 460
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_captureFrame()V

    return-void
.end method

.method public disableVideo(I)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVideoDisable(I)V

    return-void
.end method

.method public draw()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 249
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:I

    sget v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->SOFTWAREDECODER:I

    if-ne v0, v1, :cond_0

    .line 250
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->redraw()V

    goto :goto_2

    .line 251
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:I

    sget v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->HARDWAREDECODER:I

    if-ne v0, v1, :cond_1

    .line 252
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 256
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 260
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 1070
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_finalize()V

    return-void
.end method

.method public getCurrentPlayVbr()Ljava/lang/String;
    .locals 1

    .line 1441
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->vbrSelect:Ljava/lang/String;

    return-object v0
.end method

.method public native getCurrentPosition()J
.end method

.method public getCurrentState()I
    .locals 1

    .line 800
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    return v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 666
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "\\."

    .line 1472
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1473
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 1475
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    .line 1476
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object p1, p1, v2

    .line 1477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public native getDuration()J
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 6

    .line 883
    new-instance v0, Ltv/danmaku/ijk/media/player/MediaInfo;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/MediaInfo;-><init>()V

    const-string v1, "ijkplayer"

    .line 884
    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mMediaPlayerName:Ljava/lang/String;

    .line 886
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getVideoCodecInfo()Ljava/lang/String;

    move-result-object v1

    .line 887
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    const-string v2, ","

    .line 888
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 889
    array-length v2, v1

    if-lt v2, v3, :cond_0

    .line 890
    aget-object v2, v1, v5

    iput-object v2, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 891
    aget-object v1, v1, v4

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    goto :goto_0

    .line 892
    :cond_0
    array-length v2, v1

    if-lt v2, v4, :cond_1

    .line 893
    aget-object v1, v1, v5

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    const-string v1, ""

    .line 894
    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    .line 898
    :cond_1
    :goto_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getAudioCodecInfo()Ljava/lang/String;

    move-result-object v1

    .line 899
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ","

    .line 900
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 901
    array-length v2, v1

    if-lt v2, v3, :cond_2

    .line 902
    aget-object v2, v1, v5

    iput-object v2, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 903
    aget-object v1, v1, v4

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    goto :goto_1

    .line 904
    :cond_2
    array-length v2, v1

    if-lt v2, v4, :cond_3

    .line 905
    aget-object v1, v1, v5

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    const-string v1, ""

    .line 906
    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    .line 911
    :cond_3
    :goto_1
    :try_start_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->parse(Landroid/os/Bundle;)Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    move-result-object v1

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 913
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public getMediaMeta()Landroid/os/Bundle;
    .locals 1

    .line 1046
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public native getPlayableDuration()J
.end method

.method public native getStatInfo(Ltv/danmaku/ijk/media/player/StatInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getTextureName()I
    .locals 2

    .line 1038
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:I

    sget v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->HARDWAREDECODER:I

    if-ne v0, v1, :cond_0

    .line 1039
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    return v0

    .line 1041
    :cond_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getTextureId()I

    move-result v0

    return v0
.end method

.method public getTransformMatrix()[F
    .locals 1

    .line 268
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrix:[F

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 785
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 795
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 790
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 780
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public native isPlaying()Z
.end method

.method public native onGLSurfaceChanged(II)V
.end method

.method public native onGLSurfaceCreated()V
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 702
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    const/4 v0, 0x4

    .line 703
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 704
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_pause()V

    return-void
.end method

.method public pauseVideoDisplay()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 716
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_pausedisplay()V

    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 675
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_prepareAsync()V

    return-void
.end method

.method public native redraw()V
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    .line 835
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 836
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 837
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 838
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->resetListeners()V

    .line 839
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 840
    iget v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:I

    sget v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->SOFTWAREDECODER:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 842
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTextureName()I

    move-result v1

    if-lez v1, :cond_2

    .line 844
    new-array v2, v3, [I

    aput v1, v2, v0

    invoke-static {v3, v2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_0

    .line 846
    :cond_0
    iget v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:I

    sget v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->HARDWAREDECODER:I

    if-ne v1, v2, :cond_2

    .line 848
    iget v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    if-lez v1, :cond_1

    .line 850
    new-array v1, v3, [I

    iget v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    aput v2, v1, v0

    invoke-static {v3, v1, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 853
    :cond_1
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->releaseSurface()V

    .line 855
    :cond_2
    :goto_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_release()V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 864
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 865
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 866
    iget v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mPanorama:I

    invoke-direct {p0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_reset(I)V

    .line 868
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 870
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    .line 871
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return-void
.end method

.method public resetListeners()V
    .locals 1

    .line 1318
    invoke-super {p0}, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->resetListeners()V

    const/4 v0, 0x0

    .line 1319
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    return-void
.end method

.method public resumeVideoDisplay()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 710
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_resumedisplay()V

    return-void
.end method

.method public native seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setAvCodecOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 943
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setAvCodecOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 939
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAvOption(Ltv/danmaku/ijk/media/player/option/AvFormatOption;)V
    .locals 1

    .line 935
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/option/AvFormatOption;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/option/AvFormatOption;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCrop(ZII)V
    .locals 0

    .line 406
    invoke-direct {p0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setCropMode(ZII)V

    return-void
.end method

.method public setCurrentState(I)V
    .locals 0

    .line 1218
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 656
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDataSource:Ljava/lang/String;

    const/4 v0, 0x0

    .line 657
    invoke-direct {p0, p1, v0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setDataSourceAsFFConcatContent(Ljava/lang/String;)V
    .locals 0

    .line 670
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mFFConcatContent:Ljava/lang/String;

    return-void
.end method

.method public setDevMode(I)V
    .locals 1

    .line 304
    sput p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDevMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "http://192.168.229.163:18899/query?content="

    .line 307
    sput-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStatLogUrl:Ljava/lang/String;

    .line 308
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDevMode(Z)V

    :cond_0
    return-void
.end method

.method public native setDevMode(Z)V
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 592
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 595
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 599
    :goto_0
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 600
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method public native setDomain()V
.end method

.method public setFrameDrop(I)V
    .locals 0

    .line 967
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setFrameDrop(I)V

    return-void
.end method

.method public setHardDecodeTexture(I)V
    .locals 0

    .line 568
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    return-void
.end method

.method public setLoopLocalFileNumber(I)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLoopNumber(I)V

    return-void
.end method

.method public setMediaCodecEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 992
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 993
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 995
    :try_start_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initSurface()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 997
    :catch_0
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setMediaCodecEnabled(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1007
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setMediaCodecEnabled(Z)V

    return-void
.end method

.method public native setMuted(I)V
.end method

.method public setNotifyIsFreeStreamListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;)V
    .locals 0

    .line 294
    sput-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mNotifyIsFreeStreamListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;

    return-void
.end method

.method public setOnControlMessageListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;)V
    .locals 0

    .line 1223
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    return-void
.end method

.method public setOnGetVbrListListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;)V
    .locals 0

    .line 289
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnGetVideoUrlListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;

    return-void
.end method

.method public setOnMediaCodecSelectListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;)V
    .locals 0

    .line 1314
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    return-void
.end method

.method public setOnReUpdateTextureListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;)V
    .locals 0

    .line 284
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnRequestUpdateTexture:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;

    return-void
.end method

.method public setOnReportStatics(Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;)V
    .locals 0

    .line 299
    sput-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

    return-void
.end method

.method public setOnVideoDecoderSelectedListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;)V
    .locals 0

    .line 432
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->myOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

    return-void
.end method

.method public setOpenSLESEnabled(Z)V
    .locals 0

    .line 1011
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOpenSLESEnabled(Z)V

    return-void
.end method

.method public setOverlayFormat(I)V
    .locals 0

    .line 957
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOverlayFormat(I)V

    return-void
.end method

.method public native setPlayControlParameters(ZZIIII)V
.end method

.method public setPlayerConfig(Ltv/danmaku/ijk/media/player/PlayerConfig;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPlayerConfig(Ltv/danmaku/ijk/media/player/PlayerConfig;)V

    return-void
.end method

.method public setPlayerSetting(ZZ)V
    .locals 0

    .line 1446
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->default_player_setting_:Z

    .line 1447
    iput-boolean p2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->cell_playersetting_:Z

    .line 1448
    iget-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->default_player_setting_:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->cell_playersetting_:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1451
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->no_playersetting_:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1449
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->no_playersetting_:Z

    :goto_1
    return-void
.end method

.method public native setRadicalRealTimeFlag(Z)V
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    .line 749
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 750
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 751
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 755
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    :cond_1
    return-void
.end method

.method public setStartSeekPos(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 1016
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setStartSeekPos(I)V

    goto :goto_0

    .line 1018
    :cond_0
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error:start seek pos  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " <= 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 624
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 625
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 628
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 629
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 630
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 972
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 976
    :try_start_0
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initSurfaceWithTexture(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    .line 977
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setMediaCodecEnabled(Z)V

    .line 978
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 982
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setMediaCodecEnabled(Z)V

    return-void

    :cond_0
    :goto_0
    return-void
.end method

.method public setSwScaleOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 947
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setSwScaleOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native setTextureId(I)V
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 732
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 734
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v2, "power"

    .line 738
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 737
    check-cast p1, Landroid/os/PowerManager;

    const/high16 v2, 0x20000000

    or-int/2addr p2, v2

    .line 740
    const-class v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 739
    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 741
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_2

    .line 743
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 684
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    const/4 v0, 0x3

    .line 685
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 686
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_start()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 693
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    const/4 v0, 0x4

    .line 694
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 695
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_stop()V

    return-void
.end method

.method public stopPlay()V
    .locals 3

    .line 367
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 368
    :cond_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_stop()V

    .line 369
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 371
    :cond_1
    invoke-direct {p0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 372
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    return-void
.end method

.method public updateTextureContent()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 379
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:I

    sget v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->SOFTWAREDECODER:I

    if-ne v0, v1, :cond_0

    .line 380
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->redraw()V

    goto :goto_1

    .line 381
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:I

    sget v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->HARDWAREDECODER:I

    if-ne v0, v1, :cond_2

    .line 383
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 389
    :try_start_1
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 393
    :try_start_2
    sget-object v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "==========updateTexImage expetion========"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

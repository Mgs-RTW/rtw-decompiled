.class public abstract Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;
.super Ltv/danmaku/ijk/media/player/BaseMediaPlayer;
.source "SimpleMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer;


# instance fields
.field private mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCaptureCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/BaseMediaPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public attachListeners(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 83
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 84
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 85
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 86
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 87
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 88
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 89
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    return-void
.end method

.method protected final notifyOnBufferingUpdate(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    :cond_0
    return-void
.end method

.method protected final notifyOnCaptureComplete(II[I)V
    .locals 1

    .line 113
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCaptureCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCaptureCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;

    invoke-interface {v0, p0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;->onCaptureComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;II[I)V

    :cond_0
    return-void
.end method

.method protected final notifyOnCompletion()V
    .locals 1

    .line 98
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnError(II)Z
    .locals 1

    .line 126
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, p0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final notifyOnInfo(II)Z
    .locals 1

    .line 132
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, p0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final notifyOnPrepared()V
    .locals 1

    .line 93
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnSeekComplete()V
    .locals 1

    .line 108
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnVideoSizeChanged(IIII)V
    .locals 7

    .line 120
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V

    :cond_0
    return-void
.end method

.method public resetListeners()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 73
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 74
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 75
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 76
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 77
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 78
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 79
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCaptureCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;

    return-void
.end method

.method public final setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public final setOnCaptureCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCaptureCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;

    return-void
.end method

.method public final setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public final setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public final setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public final setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public final setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public final setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

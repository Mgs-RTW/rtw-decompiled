.class public Lcom/netease/neox/CCPlayer;
.super Ljava/lang/Object;
.source "CCPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


# instance fields
.field private m_context:Landroid/app/Activity;

.field private m_curVbr:Ljava/lang/String;

.field private m_device_id:Ljava/lang/String;

.field private m_extra_info:Ljava/lang/String;

.field private m_game_uid:I

.field private m_handle:J

.field private m_height:I

.field private m_is_free_flow:Z

.field private m_is_video_ready:Z

.field private m_loop_count:I

.field private m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field private m_src:Ljava/lang/String;

.field private m_update_texture:Z

.field private m_url:Ljava/lang/String;

.field private m_urs:Ljava/lang/String;

.field private m_vbrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    .line 23
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 24
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_src:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_urs:Ljava/lang/String;

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/netease/neox/CCPlayer;->m_game_uid:I

    .line 27
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_device_id:Ljava/lang/String;

    const-string v2, ""

    .line 28
    iput-object v2, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/netease/neox/CCPlayer;->m_width:I

    .line 30
    iput v1, p0, Lcom/netease/neox/CCPlayer;->m_height:I

    const-string v2, ""

    .line 31
    iput-object v2, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    .line 33
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    const-wide/16 v2, 0x0

    .line 35
    iput-wide v2, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    .line 36
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    .line 37
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    .line 57
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    return-void
.end method

.method private initPlayer()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 77
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDevMode(Z)V

    .line 78
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getPreferH264Decoder()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setMediaCodecEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnGetVbrListListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;)V

    .line 81
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 82
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnReUpdateTextureListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;)V

    .line 83
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 84
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnReportStatics(Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;)V

    .line 85
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 86
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setNotifyIsFreeStreamListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;)V

    .line 87
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 88
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget v1, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLoopLocalFileNumber(I)V

    :cond_1
    return-void
.end method

.method public static native nativeOnBufferingUpdate(JI)V
.end method

.method public static native nativeOnError(J)V
.end method

.method public static native nativeOnFreeFlow(JZ)V
.end method

.method public static native nativeOnGetVbrList(JLjava/lang/String;[Ljava/lang/String;)V
.end method

.method public static native nativeOnReportStat(JLjava/lang/String;)V
.end method

.method public static native nativeOnSeekComplete(J)V
.end method

.method public static native nativeOnVideoComplete(J)V
.end method

.method public static native nativeOnVideoReady(J)V
.end method


# virtual methods
.method destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/netease/neox/CCPlayer;->setHandle(J)V

    .line 62
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    :cond_0
    return-void
.end method

.method public doUpdateExternal()V
    .locals 1

    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateTextureContent()V

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    .line 256
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableFreeFlow(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    return v0
.end method

.method public getTextureName()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTextureName()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_width:I

    return v0
.end method

.method public gotoCCApp(II)I
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->OpenCCAppWithRoomId(Landroid/app/Activity;II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFreeFlowEnabled()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_src:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/netease/neox/CCPlayer;->m_urs:Ljava/lang/String;

    return-void
.end method

.method public needUpdateExternal()Z
    .locals 2

    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 241
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    const/4 v0, 0x1

    .line 242
    monitor-exit p0

    return v0

    .line 245
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyIsFreeStream(I)V
    .locals 5

    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 435
    iget-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 436
    :goto_0
    iput-boolean p1, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    if-eqz v0, :cond_1

    .line 438
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    iget-boolean p1, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    invoke-static {v0, v1, p1}, Lcom/netease/neox/CCPlayer;->nativeOnFreeFlow(JZ)V

    .line 440
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 4

    .line 446
    monitor-enter p0

    .line 447
    :try_start_0
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 448
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {v0, v1, p2}, Lcom/netease/neox/CCPlayer;->nativeOnBufferingUpdate(JI)V

    .line 450
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 407
    iput-boolean p1, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    .line 408
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnVideoComplete(J)V

    .line 410
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 357
    invoke-virtual {p0, v0, v1}, Lcom/netease/neox/CCPlayer;->setHandle(J)V

    .line 358
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    :cond_0
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    const-string p1, "NeoXCCPlayer"

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    iget-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 383
    iget-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {p1, p2}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 384
    :cond_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPause()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pauseVideoDisplay()V

    .line 352
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setMuted(I)V

    :cond_0
    return-void
.end method

.method public onRequestUpdateTexture()V
    .locals 6

    .line 390
    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/neox/CCPlayer;->m_width:I

    .line 393
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/neox/CCPlayer;->m_height:I

    :cond_0
    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    .line 396
    iget-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 397
    iput-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    .line 398
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnVideoReady(J)V

    .line 400
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->resumeVideoDisplay()V

    .line 345
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setMuted(I)V

    :cond_0
    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .line 424
    monitor-enter p0

    .line 425
    :try_start_0
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 426
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnSeekComplete(J)V

    .line 428
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 5

    .line 280
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 285
    monitor-enter p0

    .line 286
    :try_start_1
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 287
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 289
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public playLive(Ljava/lang/String;)V
    .locals 13

    .line 93
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/netease/neox/CCPlayer;->initPlayer()V

    .line 95
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/netease/neox/CCPlayer;->m_src:Ljava/lang/String;

    const-wide/16 v11, 0x0

    if-eqz v3, :cond_8

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_8

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_urs:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v4, v0

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "mrlucc@126.com"

    goto :goto_0

    .line 111
    :goto_2
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_device_id:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    move-object v7, v0

    goto :goto_6

    .line 114
    :cond_5
    :goto_4
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 v0, 0x0

    const-string v1, "NeoXCCPlayer"

    const-string v2, "getDeviceId failed"

    .line 117
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-nez v0, :cond_4

    const-string v0, "whatever"

    goto :goto_3

    .line 122
    :goto_6
    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_game_uid:I

    int-to-long v5, v0

    iget-object v8, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->StartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_7

    .line 123
    monitor-enter p0

    .line 124
    :try_start_1
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    cmp-long p1, v0, v11

    if-eqz p1, :cond_6

    .line 125
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 127
    :cond_6
    monitor-exit p0

    goto :goto_7

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_7
    return-void

    .line 100
    :cond_8
    :goto_8
    monitor-enter p0

    .line 101
    :try_start_2
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    cmp-long p1, v0, v11

    if-eqz p1, :cond_9

    .line 102
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 104
    :cond_9
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public playVOD(Ljava/lang/String;)V
    .locals 4

    .line 140
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lcom/netease/neox/CCPlayer;->initPlayer()V

    .line 142
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->StartPlay(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 147
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 149
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public reportHttpStatics(Ljava/lang/String;)V
    .locals 5

    .line 415
    monitor-enter p0

    .line 416
    :try_start_0
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 417
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {v0, v1, p1}, Lcom/netease/neox/CCPlayer;->nativeOnReportStat(JLjava/lang/String;)V

    .line 419
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resume()V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 300
    monitor-enter p0

    .line 301
    :try_start_1
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 302
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 304
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 314
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 315
    monitor-enter p0

    .line 316
    :try_start_1
    iget-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 317
    iget-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    invoke-static {p1, p2}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 319
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 165
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    goto :goto_0

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setHandle(J)V
    .locals 0

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iput-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    .line 262
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLoopCount(I)V
    .locals 1

    .line 325
    iput p1, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    .line 326
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLoopLocalFileNumber(I)V

    :cond_0
    return-void
.end method

.method public setUserInfo(ILjava/lang/String;)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/netease/neox/CCPlayer;->m_game_uid:I

    .line 160
    iput-object p2, p0, Lcom/netease/neox/CCPlayer;->m_device_id:Ljava/lang/String;

    return-void
.end method

.method public setVbr(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 197
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 199
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_3

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 204
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 208
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_4

    .line 209
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    .line 210
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    :cond_4
    if-eqz v1, :cond_5

    .line 215
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 216
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/neox/CCPlayer;->playLive(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public setVbrList(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    .line 367
    iget-object p2, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p2, :cond_1

    .line 368
    iget-object p2, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPlayVbr()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 371
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 372
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    iget-object v2, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/netease/neox/CCPlayer;->nativeOnGetVbrList(JLjava/lang/String;[Ljava/lang/String;)V

    .line 374
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnGetVbrListListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;)V

    .line 173
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 174
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnReUpdateTextureListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;)V

    .line 175
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 176
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnReportStatics(Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;)V

    .line 177
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 178
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setNotifyIsFreeStreamListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;)V

    .line 179
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    .line 180
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    .line 181
    iput-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    :cond_0
    return-void
.end method

.method public updateExternal()V
    .locals 1

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    .line 233
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateTextureContent()V

    .line 235
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

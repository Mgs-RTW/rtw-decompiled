.class Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;
.super Ljava/lang/Object;
.source "IjkMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnVideoDecoderSelected(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "avcodec"

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    sget v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->SOFTWAREDECODER:I

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$0(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V

    goto :goto_0

    :cond_1
    const-string v0, "MediaCodec"

    .line 417
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 418
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    sget v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->HARDWAREDECODER:I

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$0(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V

    .line 419
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v0

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V

    .line 420
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v0

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V

    :cond_2
    :goto_0
    return-void
.end method

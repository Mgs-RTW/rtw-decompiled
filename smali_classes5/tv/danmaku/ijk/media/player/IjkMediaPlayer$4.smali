.class Ltv/danmaku/ijk/media/player/IjkMediaPlayer$4;
.super Ljava/lang/Object;
.source "IjkMediaPlayer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initSurfaceWithTexture(Landroid/graphics/SurfaceTexture;)V
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
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$4;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 524
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$4;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnRequestUpdateTexture:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;

    if-eqz p1, :cond_0

    .line 525
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$4;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnRequestUpdateTexture:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;->onRequestUpdateTexture()V

    :cond_0
    return-void
.end method

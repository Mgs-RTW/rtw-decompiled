.class Lio/netty/bootstrap/Bootstrap$2;
.super Ljava/lang/Object;
.source "Bootstrap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/bootstrap/Bootstrap;->doConnect0(Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$channel:Lio/netty/channel/Channel;

.field private final synthetic val$localAddress:Ljava/net/SocketAddress;

.field private final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field private final synthetic val$regFuture:Lio/netty/channel/ChannelFuture;

.field private final synthetic val$remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method constructor <init>(Lio/netty/channel/ChannelFuture;Ljava/net/SocketAddress;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/bootstrap/Bootstrap$2;->val$regFuture:Lio/netty/channel/ChannelFuture;

    iput-object p2, p0, Lio/netty/bootstrap/Bootstrap$2;->val$localAddress:Ljava/net/SocketAddress;

    iput-object p3, p0, Lio/netty/bootstrap/Bootstrap$2;->val$channel:Lio/netty/channel/Channel;

    iput-object p4, p0, Lio/netty/bootstrap/Bootstrap$2;->val$remoteAddress:Ljava/net/SocketAddress;

    iput-object p5, p0, Lio/netty/bootstrap/Bootstrap$2;->val$promise:Lio/netty/channel/ChannelPromise;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 163
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap$2;->val$regFuture:Lio/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap$2;->val$localAddress:Ljava/net/SocketAddress;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap$2;->val$channel:Lio/netty/channel/Channel;

    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap$2;->val$remoteAddress:Ljava/net/SocketAddress;

    iget-object v2, p0, Lio/netty/bootstrap/Bootstrap$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, v1, v2}, Lio/netty/channel/Channel;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap$2;->val$channel:Lio/netty/channel/Channel;

    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap$2;->val$remoteAddress:Ljava/net/SocketAddress;

    iget-object v2, p0, Lio/netty/bootstrap/Bootstrap$2;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v3, p0, Lio/netty/bootstrap/Bootstrap$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, v1, v2, v3}, Lio/netty/channel/Channel;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 169
    :goto_0
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap$2;->val$promise:Lio/netty/channel/ChannelPromise;

    sget-object v1, Lio/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    goto :goto_1

    .line 171
    :cond_1
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap$2;->val$promise:Lio/netty/channel/ChannelPromise;

    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap$2;->val$regFuture:Lio/netty/channel/ChannelFuture;

    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    :goto_1
    return-void
.end method
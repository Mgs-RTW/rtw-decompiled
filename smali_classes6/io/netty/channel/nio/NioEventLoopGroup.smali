.class public Lio/netty/channel/nio/NioEventLoopGroup;
.super Lio/netty/channel/MultithreadEventLoopGroup;
.source "NioEventLoopGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 52
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2

    const/4 v0, 0x1

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs newChild(Ljava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    new-instance v0, Lio/netty/channel/nio/NioEventLoop;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    check-cast p2, Ljava/nio/channels/spi/SelectorProvider;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/channel/nio/NioEventLoop;-><init>(Lio/netty/channel/nio/NioEventLoopGroup;Ljava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0
.end method

.method public rebuildSelectors()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoopGroup;->children()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/EventExecutor;

    .line 80
    check-cast v1, Lio/netty/channel/nio/NioEventLoop;

    invoke-virtual {v1}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector()V

    goto :goto_0
.end method

.method public setIoRatio(I)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoopGroup;->children()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/EventExecutor;

    .line 70
    check-cast v1, Lio/netty/channel/nio/NioEventLoop;

    invoke-virtual {v1, p1}, Lio/netty/channel/nio/NioEventLoop;->setIoRatio(I)V

    goto :goto_0
.end method

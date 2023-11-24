.class abstract Lio/netty/channel/AbstractChannelHandlerContext;
.super Lio/netty/util/DefaultAttributeMap;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Lio/netty/channel/ChannelHandlerContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;,
        Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;,
        Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    }
.end annotation


# instance fields
.field private final channel:Lio/netty/channel/AbstractChannel;

.field final executor:Lio/netty/util/concurrent/EventExecutor;

.field private final inbound:Z

.field private volatile invokeChannelReadCompleteTask:Ljava/lang/Runnable;

.field private volatile invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

.field private volatile invokeFlushTask:Ljava/lang/Runnable;

.field private volatile invokeReadTask:Ljava/lang/Runnable;

.field private final name:Ljava/lang/String;

.field volatile next:Lio/netty/channel/AbstractChannelHandlerContext;

.field private final outbound:Z

.field private final pipeline:Lio/netty/channel/DefaultChannelPipeline;

.field volatile prev:Lio/netty/channel/AbstractChannelHandlerContext;

.field private removed:Z

.field private succeededFuture:Lio/netty/channel/ChannelFuture;


# direct methods
.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;ZZ)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap;-><init>()V

    if-eqz p3, :cond_2

    .line 64
    iget-object v0, p1, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/AbstractChannel;

    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    .line 65
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    .line 66
    iput-object p3, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 71
    iget-object p3, p1, Lio/netty/channel/DefaultChannelPipeline;->childExecutors:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/netty/util/concurrent/EventExecutor;

    if-nez p3, :cond_0

    .line 73
    invoke-interface {p2}, Lio/netty/util/concurrent/EventExecutorGroup;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object p3

    .line 74
    iget-object p1, p1, Lio/netty/channel/DefaultChannelPipeline;->childExecutors:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    iput-object p3, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 81
    :goto_0
    iput-boolean p4, p0, Lio/netty/channel/AbstractChannelHandlerContext;->inbound:Z

    .line 82
    iput-boolean p5, p0, Lio/netty/channel/AbstractChannelHandlerContext;->outbound:Z

    return-void

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$0(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannel;
    .locals 0

    .line 39
    iget-object p0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    return-object p0
.end method

.method static synthetic access$1(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWrite(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$10(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRead(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$11(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .line 360
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadComplete()V

    return-void
.end method

.method static synthetic access$12(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritabilityChanged()V

    return-void
.end method

.method static synthetic access$13(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 453
    invoke-direct {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$14(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 494
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$15(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeClose(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$16(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 535
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDisconnect(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$17(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 597
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDeregister(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$18(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .line 627
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeRead()V

    return-void
.end method

.method static synthetic access$2(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .line 686
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush()V

    return-void
.end method

.method static synthetic access$3(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->teardown0()V

    return-void
.end method

.method static synthetic access$4(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered()V

    return-void
.end method

.method static synthetic access$5(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelUnregistered()V

    return-void
.end method

.method static synthetic access$6(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive()V

    return-void
.end method

.method static synthetic access$7(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelInactive()V

    return-void
.end method

.method static synthetic access$8(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$9(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeUserEventTriggered(Ljava/lang/Object;)V

    return-void
.end method

.method private findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 2

    move-object v0, p0

    .line 855
    :cond_0
    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 856
    iget-boolean v1, v0, Lio/netty/channel/AbstractChannelHandlerContext;->inbound:Z

    if-eqz v1, :cond_0

    return-object v0
.end method

.method private findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 2

    move-object v0, p0

    .line 863
    :cond_0
    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 864
    iget-boolean v1, v0, Lio/netty/channel/AbstractChannelHandlerContext;->outbound:Z

    if-eqz v1, :cond_0

    return-object v0
.end method

.method private static inExceptionCaught(Ljava/lang/Throwable;)Z
    .locals 6

    .line 773
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 775
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v0, v3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "exceptionCaught"

    .line 779
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 785
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    return v1
.end method

.method private invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    .line 455
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1, p2}, Lio/netty/channel/ChannelOutboundHandler;->bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 457
    invoke-static {p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    :goto_0
    return-void
.end method

.method private invokeChannelActive()V
    .locals 1

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private invokeChannelInactive()V
    .locals 1

    .line 233
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 235
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private invokeChannelRead(Ljava/lang/Object;)V
    .locals 1

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelInboundHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 335
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private invokeChannelReadComplete()V
    .locals 1

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 364
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private invokeChannelRegistered()V
    .locals 1

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 160
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private invokeChannelUnregistered()V
    .locals 1

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private invokeChannelWritabilityChanged()V
    .locals 1

    .line 391
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 393
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private invokeClose(Lio/netty/channel/ChannelPromise;)V
    .locals 1

    .line 568
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 570
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    :goto_0
    return-void
.end method

.method private invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    .line 496
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1, p2, p3}, Lio/netty/channel/ChannelOutboundHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 498
    invoke-static {p1, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    :goto_0
    return-void
.end method

.method private invokeDeregister(Lio/netty/channel/ChannelPromise;)V
    .locals 1

    .line 599
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 601
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    :goto_0
    return-void
.end method

.method private invokeDisconnect(Lio/netty/channel/ChannelPromise;)V
    .locals 1

    .line 537
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 539
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    :goto_0
    return-void
.end method

.method private invokeExceptionCaught(Ljava/lang/Throwable;)V
    .locals 2

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "An exception was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private invokeFlush()V
    .locals 1

    .line 688
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelOutboundHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 690
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private invokeRead()V
    .locals 1

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelOutboundHandler;->read(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 631
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private invokeUserEventTriggered(Ljava/lang/Object;)V
    .locals 1

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelInboundHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private invokeWrite(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    .line 658
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1, p2}, Lio/netty/channel/ChannelOutboundHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 660
    invoke-static {p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    :goto_0
    return-void
.end method

.method private notifyHandlerException(Ljava/lang/Throwable;)V
    .locals 2

    .line 759
    invoke-static {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->inExceptionCaught(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "An exception was thrown by a user handler while handling an exceptionCaught event"

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 768
    :cond_1
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    .line 747
    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-eqz v0, :cond_0

    return-void

    .line 751
    :cond_0
    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to fail the promise because it\'s done already: {}"

    invoke-interface {v0, v1, p1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V
    .locals 0

    .line 884
    :try_start_0
    invoke-interface {p0, p1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 887
    :try_start_1
    invoke-interface {p2, p0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    .line 890
    invoke-static {p3}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz p3, :cond_1

    invoke-static {p3}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 892
    :cond_1
    throw p0
.end method

.method private teardown0()V
    .locals 3

    .line 101
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v2, p0}, Lio/netty/channel/DefaultChannelPipeline;->remove0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 103
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->teardown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 103
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private validatePromise(Lio/netty/channel/ChannelPromise;Z)Z
    .locals 4

    if-eqz p1, :cond_7

    .line 820
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 825
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->isCancelled()Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    .line 828
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "promise already done: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 831
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_6

    .line 836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/netty/channel/DefaultChannelPromise;

    if-ne v0, v1, :cond_2

    return v3

    :cond_2
    if-nez p2, :cond_4

    .line 840
    instance-of p2, p1, Lio/netty/channel/VoidChannelPromise;

    if-nez p2, :cond_3

    goto :goto_0

    .line 841
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 842
    new-instance p2, Ljava/lang/StringBuilder;

    const-class v0, Lio/netty/channel/VoidChannelPromise;

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " not allowed for this operation"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 841
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 845
    :cond_4
    :goto_0
    instance-of p1, p1, Lio/netty/channel/AbstractChannel$CloseFuture;

    if-nez p1, :cond_5

    return v3

    .line 846
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 847
    new-instance p2, Ljava/lang/StringBuilder;

    const-class v0, Lio/netty/channel/AbstractChannel$CloseFuture;

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " not allowed in a pipeline"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 846
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 832
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    .line 833
    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "promise.channel does not match: %s (expected: %s)"

    .line 832
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 817
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "promise"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V
    .locals 6

    .line 713
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 715
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 716
    invoke-direct {v0, p1, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWrite(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    if-eqz p2, :cond_3

    .line 718
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush()V

    goto :goto_1

    .line 721
    :cond_0
    iget-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v2}, Lio/netty/channel/AbstractChannel;->estimatorHandle()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/netty/channel/MessageSizeEstimator$Handle;->size(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    .line 723
    iget-object v3, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v3}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    int-to-long v4, v2

    .line 726
    invoke-virtual {v3, v4, v5}, Lio/netty/channel/ChannelOutboundBuffer;->incrementPendingOutboundBytes(J)V

    :cond_1
    if-eqz p2, :cond_2

    .line 731
    invoke-static {v0, p1, v2, p3}, Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;->access$1(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;

    move-result-object p2

    goto :goto_0

    .line 733
    :cond_2
    invoke-static {v0, p1, v2, p3}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->access$1(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;

    move-result-object p2

    .line 735
    :goto_0
    invoke-static {v1, p2, p3, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 399
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, p2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 437
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 439
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    invoke-direct {v0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 442
    :cond_1
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$11;

    invoke-direct {v2, p0, v0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext$11;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    const/4 p1, 0x0

    invoke-static {v1, v2, p2, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    :goto_0
    return-object p2

    .line 430
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "localAddress"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public channel()Lio/netty/channel/Channel;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    return-object v0
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3

    const/4 v0, 0x0

    .line 545
    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 550
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 552
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    invoke-direct {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeClose(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 555
    :cond_1
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$14;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$14;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 404
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, p1, v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 409
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 8

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 473
    invoke-direct {p0, p3, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p3

    .line 478
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v3

    .line 479
    invoke-virtual {v3}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 480
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    invoke-direct {v3, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 483
    :cond_1
    new-instance v7, Lio/netty/channel/AbstractChannelHandlerContext$12;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/netty/channel/AbstractChannelHandlerContext$12;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    const/4 p1, 0x0

    invoke-static {v0, v7, p3, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    :goto_0
    return-object p3

    .line 471
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "remoteAddress"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deregister()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 424
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3

    const/4 v0, 0x0

    .line 576
    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 581
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 583
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 584
    invoke-direct {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDeregister(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 586
    :cond_1
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$15;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$15;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method public disconnect()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 414
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3

    const/4 v0, 0x0

    .line 504
    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 509
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 511
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    invoke-direct {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeClose(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 517
    :cond_1
    invoke-direct {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDisconnect(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 520
    :cond_2
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$13;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$13;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method public executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 127
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public fireChannelActive()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .line 191
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 193
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive()V

    goto :goto_0

    .line 196
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$4;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext$4;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p0
.end method

.method public fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .line 216
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 218
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelInactive()V

    goto :goto_0

    .line 221
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$5;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext$5;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p0
.end method

.method public fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    if-eqz p1, :cond_1

    .line 316
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 318
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-direct {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRead(Ljava/lang/Object;)V

    goto :goto_0

    .line 321
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$8;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$8;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p0

    .line 313
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "msg"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .line 341
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 343
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadComplete()V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadCompleteTask:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    .line 348
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$9;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext$9;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    iput-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadCompleteTask:Ljava/lang/Runnable;

    .line 355
    :cond_1
    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p0
.end method

.method public fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .line 141
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 143
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered()V

    goto :goto_0

    .line 146
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$2;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext$2;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p0
.end method

.method public fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .line 166
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 168
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelUnregistered()V

    goto :goto_0

    .line 171
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$3;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext$3;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p0
.end method

.method public fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .line 370
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 372
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritabilityChanged()V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    .line 377
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$10;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext$10;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    iput-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

    .line 384
    :cond_1
    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p0
.end method

.method public fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    if-eqz p1, :cond_2

    .line 245
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 247
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 248
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-direct {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 252
    :cond_0
    :try_start_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$6;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$6;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    sget-object v1, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    sget-object v1, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to submit an exceptionCaught() event."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "The exceptionCaught() event that was failed to submit was:"

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0

    .line 242
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cause"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    if-eqz p1, :cond_1

    .line 287
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 289
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-direct {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeUserEventTriggered(Ljava/lang/Object;)V

    goto :goto_0

    .line 292
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$7;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$7;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p0

    .line 284
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()Lio/netty/channel/ChannelHandlerContext;
    .locals 4

    .line 666
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 668
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush()V

    goto :goto_0

    .line 671
    :cond_0
    iget-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlushTask:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    .line 673
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$17;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext$17;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    iput-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlushTask:Ljava/lang/Runnable;

    .line 680
    :cond_1
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public isRemoved()Z
    .locals 1

    .line 879
    iget-boolean v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->removed:Z

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
    .locals 3

    .line 812
    new-instance v0, Lio/netty/channel/FailedChannelFuture;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lio/netty/channel/FailedChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
    .locals 3

    .line 798
    new-instance v0, Lio/netty/channel/DefaultChannelProgressivePromise;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/channel/DefaultChannelProgressivePromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0
.end method

.method public newPromise()Lio/netty/channel/ChannelPromise;
    .locals 3

    .line 793
    new-instance v0, Lio/netty/channel/DefaultChannelPromise;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0
.end method

.method public newSucceededFuture()Lio/netty/channel/ChannelFuture;
    .locals 3

    .line 803
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->succeededFuture:Lio/netty/channel/ChannelFuture;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Lio/netty/channel/SucceededChannelFuture;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/channel/SucceededChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->succeededFuture:Lio/netty/channel/ChannelFuture;

    :cond_0
    return-object v0
.end method

.method public pipeline()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 117
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    return-object v0
.end method

.method public read()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .line 607
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 609
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeRead()V

    goto :goto_0

    .line 612
    :cond_0
    iget-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeReadTask:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    .line 614
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$16;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext$16;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    iput-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeReadTask:Ljava/lang/Runnable;

    .line 621
    :cond_1
    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p0
.end method

.method setRemoved()V
    .locals 1

    const/4 v0, 0x1

    .line 874
    iput-boolean v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->removed:Z

    return-void
.end method

.method teardown()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->teardown0()V

    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$1;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannelHandlerContext$1;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 870
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 646
    invoke-direct {p0, p2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    return-object p2

    :cond_0
    const/4 v0, 0x0

    .line 651
    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V

    return-object p2

    .line 643
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "msg"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 741
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 700
    invoke-direct {p0, p2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    return-object p2

    .line 706
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V

    return-object p2

    .line 697
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "msg"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

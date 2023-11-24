.class final Lio/netty/channel/local/LocalEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "LocalEventLoop.java"


# direct methods
.method constructor <init>(Lio/netty/channel/local/LocalEventLoopGroup;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/ThreadFactory;Z)V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/local/LocalEventLoop;->takeTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 34
    invoke-virtual {p0}, Lio/netty/channel/local/LocalEventLoop;->updateLastExecutionTime()V

    .line 37
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/local/LocalEventLoop;->confirmShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

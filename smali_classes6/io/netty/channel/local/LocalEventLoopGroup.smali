.class public Lio/netty/channel/local/LocalEventLoopGroup;
.super Lio/netty/channel/MultithreadEventLoopGroup;
.source "LocalEventLoopGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lio/netty/channel/local/LocalEventLoopGroup;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lio/netty/channel/local/LocalEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs newChild(Ljava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    new-instance p2, Lio/netty/channel/local/LocalEventLoop;

    invoke-direct {p2, p0, p1}, Lio/netty/channel/local/LocalEventLoop;-><init>(Lio/netty/channel/local/LocalEventLoopGroup;Ljava/util/concurrent/ThreadFactory;)V

    return-object p2
.end method

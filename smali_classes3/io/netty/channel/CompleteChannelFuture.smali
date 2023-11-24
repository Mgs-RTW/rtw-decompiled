.class abstract Lio/netty/channel/CompleteChannelFuture;
.super Lio/netty/util/concurrent/CompleteFuture;
.source "CompleteChannelFuture.java"

# interfaces
.implements Lio/netty/channel/ChannelFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/CompleteFuture<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/netty/channel/ChannelFuture;"
    }
.end annotation


# instance fields
.field private final channel:Lio/netty/channel/Channel;


# direct methods
.method protected constructor <init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V
    .locals 0

    .line 37
    invoke-direct {p0, p2}, Lio/netty/util/concurrent/CompleteFuture;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lio/netty/channel/CompleteChannelFuture;->channel:Lio/netty/channel/Channel;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "channel"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelFuture;"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lio/netty/util/concurrent/CompleteFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-object p0
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 1
    check-cast p1, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/CompleteChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelFuture;"
        }
    .end annotation

    .line 62
    invoke-super {p0, p1}, Lio/netty/util/concurrent/CompleteFuture;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-object p0
.end method

.method public bridge varargs synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 1
    check-cast p1, [Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/CompleteChannelFuture;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public await()Lio/netty/channel/ChannelFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->await()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/channel/ChannelFuture;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->awaitUninterruptibly()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public channel()Lio/netty/channel/Channel;
    .locals 1

    .line 100
    iget-object v0, p0, Lio/netty/channel/CompleteChannelFuture;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 46
    invoke-super {p0}, Lio/netty/util/concurrent/CompleteFuture;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getNow()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->getNow()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getNow()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelFuture;"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1}, Lio/netty/util/concurrent/CompleteFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-object p0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 1
    check-cast p1, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/CompleteChannelFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelFuture;"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lio/netty/util/concurrent/CompleteFuture;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-object p0
.end method

.method public bridge varargs synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 1
    check-cast p1, [Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/CompleteChannelFuture;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public sync()Lio/netty/channel/ChannelFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->sync()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/channel/ChannelFuture;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->syncUninterruptibly()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

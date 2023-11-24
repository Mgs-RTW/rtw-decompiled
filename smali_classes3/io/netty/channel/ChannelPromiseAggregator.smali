.class public final Lio/netty/channel/ChannelPromiseAggregator;
.super Ljava/lang/Object;
.source "ChannelPromiseAggregator.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# instance fields
.field private final aggregatePromise:Lio/netty/channel/ChannelPromise;

.field private pendingPromises:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/channel/ChannelPromise;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelPromise;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lio/netty/channel/ChannelPromiseAggregator;->aggregatePromise:Lio/netty/channel/ChannelPromise;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "aggregatePromise"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs add([Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromiseAggregator;
    .locals 4

    if-eqz p1, :cond_5

    .line 52
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 55
    :cond_0
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 58
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 59
    array-length v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 63
    :goto_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v1, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    .line 65
    :cond_2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_3

    .line 55
    monitor-exit p0

    return-object p0

    .line 65
    :cond_3
    aget-object v2, p1, v1

    if-nez v2, :cond_4

    goto :goto_2

    .line 69
    :cond_4
    iget-object v3, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v2, p0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 50
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "promises"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 79
    iget-object p1, p0, Lio/netty/channel/ChannelPromiseAggregator;->aggregatePromise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    goto :goto_1

    .line 81
    :cond_0
    iget-object v0, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lio/netty/channel/ChannelPromiseAggregator;->aggregatePromise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 84
    iget-object v0, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelPromise;

    .line 85
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lio/netty/channel/ChannelPromiseAggregator;->aggregatePromise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/channel/ChannelPromiseAggregator;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

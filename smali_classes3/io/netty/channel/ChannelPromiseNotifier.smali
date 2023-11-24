.class public final Lio/netty/channel/ChannelPromiseNotifier;
.super Ljava/lang/Object;
.source "ChannelPromiseNotifier.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# instance fields
.field private final promises:[Lio/netty/channel/ChannelPromise;


# direct methods
.method public varargs constructor <init>([Lio/netty/channel/ChannelPromise;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 34
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 39
    invoke-virtual {p1}, [Lio/netty/channel/ChannelPromise;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/netty/channel/ChannelPromise;

    iput-object p1, p0, Lio/netty/channel/ChannelPromiseNotifier;->promises:[Lio/netty/channel/ChannelPromise;

    return-void

    .line 34
    :cond_0
    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "promises contains null ChannelPromise"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "promises"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lio/netty/channel/ChannelPromiseNotifier;->promises:[Lio/netty/channel/ChannelPromise;

    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    aget-object p1, v0, v1

    .line 46
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lio/netty/channel/ChannelPromiseNotifier;->promises:[Lio/netty/channel/ChannelPromise;

    array-length v2, v0

    :goto_1
    if-lt v1, v2, :cond_2

    return-void

    :cond_2
    aget-object v3, v0, v1

    .line 53
    invoke-interface {v3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
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

    invoke-virtual {p0, p1}, Lio/netty/channel/ChannelPromiseNotifier;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

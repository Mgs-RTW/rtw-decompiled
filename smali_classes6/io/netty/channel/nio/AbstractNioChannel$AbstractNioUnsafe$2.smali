.class Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$2;
.super Ljava/lang/Object;
.source "AbstractNioChannel.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;


# direct methods
.method constructor <init>(Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$2;->this$1:Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    iget-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$2;->this$1:Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    invoke-static {p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->access$0(Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;)Lio/netty/channel/nio/AbstractNioChannel;

    move-result-object p1

    invoke-static {p1}, Lio/netty/channel/nio/AbstractNioChannel;->access$6(Lio/netty/channel/nio/AbstractNioChannel;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$2;->this$1:Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    invoke-static {p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->access$0(Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;)Lio/netty/channel/nio/AbstractNioChannel;

    move-result-object p1

    invoke-static {p1}, Lio/netty/channel/nio/AbstractNioChannel;->access$6(Lio/netty/channel/nio/AbstractNioChannel;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 229
    :cond_0
    iget-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$2;->this$1:Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    invoke-static {p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->access$0(Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;)Lio/netty/channel/nio/AbstractNioChannel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/netty/channel/nio/AbstractNioChannel;->access$3(Lio/netty/channel/nio/AbstractNioChannel;Lio/netty/channel/ChannelPromise;)V

    .line 230
    iget-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$2;->this$1:Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$2;->this$1:Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    :cond_1
    return-void
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

    invoke-virtual {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$2;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

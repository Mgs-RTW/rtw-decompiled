.class Lio/netty/handler/ssl/SslHandler$7;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler;->safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field final synthetic val$timeoutFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler;Ljava/util/concurrent/ScheduledFuture;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1242
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$7;->this$0:Lio/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lio/netty/handler/ssl/SslHandler$7;->val$timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    iput-object p3, p0, Lio/netty/handler/ssl/SslHandler$7;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput-object p4, p0, Lio/netty/handler/ssl/SslHandler$7;->val$promise:Lio/netty/channel/ChannelPromise;

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

    .line 1246
    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler$7;->val$timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    .line 1247
    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler$7;->val$timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1251
    :cond_0
    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler$7;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$7;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1242
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslHandler$7;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

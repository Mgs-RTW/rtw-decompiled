.class Lio/netty/handler/ssl/SslHandler$2;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$tasks:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1033
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$2;->this$0:Lio/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lio/netty/handler/ssl/SslHandler$2;->val$tasks:Ljava/util/List;

    iput-object p3, p0, Lio/netty/handler/ssl/SslHandler$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1037
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$2;->val$tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1038
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1041
    :try_start_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$2;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$300(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1043
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.class final Lio/netty/util/concurrent/DefaultEventExecutor;
.super Lio/netty/util/concurrent/SingleThreadEventExecutor;
.source "DefaultEventExecutor.java"


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/DefaultEventExecutorGroup;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/ThreadFactory;Z)V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultEventExecutor;->takeTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 37
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultEventExecutor;->updateLastExecutionTime()V

    .line 40
    :cond_1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultEventExecutor;->confirmShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

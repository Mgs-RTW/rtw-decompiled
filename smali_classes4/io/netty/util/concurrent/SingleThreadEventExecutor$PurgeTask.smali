.class final Lio/netty/util/concurrent/SingleThreadEventExecutor$PurgeTask;
.super Ljava/lang/Object;
.source "SingleThreadEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/SingleThreadEventExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PurgeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;


# direct methods
.method private constructor <init>(Lio/netty/util/concurrent/SingleThreadEventExecutor;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$PurgeTask;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/concurrent/SingleThreadEventExecutor;Lio/netty/util/concurrent/SingleThreadEventExecutor$PurgeTask;)V
    .locals 0

    .line 858
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor$PurgeTask;-><init>(Lio/netty/util/concurrent/SingleThreadEventExecutor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 861
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$PurgeTask;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    iget-object v0, v0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->delayedTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 862
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 863
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 864
    invoke-virtual {v1}, Lio/netty/util/concurrent/ScheduledFutureTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

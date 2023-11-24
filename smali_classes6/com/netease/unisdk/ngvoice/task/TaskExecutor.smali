.class public Lcom/netease/unisdk/ngvoice/task/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# static fields
.field private static sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    invoke-virtual {v0, p0}, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->executeTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static init(III)V
    .locals 1

    .line 19
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;-><init>(III)V

    sput-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    :cond_0
    return-void
.end method

.method public static removeScheduledTask(Ljava/lang/Runnable;)Z
    .locals 1

    .line 56
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    invoke-virtual {v0, p0}, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->removeScheduledTask(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeScheduledTaskOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    invoke-virtual {v0, p0}, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->removeScheduledTaskOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static runTaskOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 75
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    invoke-virtual {v0, p0}, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static scheduleTask(JLjava/lang/Runnable;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->scheduleTask(JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static scheduleTaskAtFixedRateIgnoringTaskRunningTime(JJLjava/lang/Runnable;)V
    .locals 7

    .line 44
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 45
    sget-object v1, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->scheduleTaskAtFixedRateIgnoringTaskRunningTime(JJLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static scheduleTaskAtFixedRateIncludingTaskRunningTime(JJLjava/lang/Runnable;)V
    .locals 7

    .line 50
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 51
    sget-object v1, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->scheduleTaskAtFixedRateIncludingTaskRunningTime(JJLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static scheduleTaskOnUiThread(JLjava/lang/Runnable;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->scheduleTaskOnUiThread(JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 81
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    invoke-virtual {v0}, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->shutdown()V

    const/4 v0, 0x0

    .line 83
    sput-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    :cond_0
    return-void
.end method

.method public static submitTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;

    invoke-virtual {v0, p0}, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->submitTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.class public Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# static fields
.field private static sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeTask(Ljava/lang/Runnable;)V
    .locals 4

    .line 25
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;-><init>(III)V

    sput-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    .line 28
    :cond_0
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    invoke-virtual {v0, p0}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static init(III)V
    .locals 1

    .line 19
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;-><init>(III)V

    sput-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    :cond_0
    return-void
.end method

.method public static removeScheduledTask(Ljava/lang/Runnable;)Z
    .locals 1

    .line 57
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p0}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;->removeScheduledTask(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeScheduledTaskOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 70
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p0}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;->removeScheduledTaskOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static runTaskOnUiThread(Ljava/lang/Runnable;)V
    .locals 4

    .line 76
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;-><init>(III)V

    sput-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    .line 79
    :cond_0
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    invoke-virtual {v0, p0}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static scheduleTask(JLjava/lang/Runnable;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;->scheduleTask(JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static scheduleTaskAtFixedRateIgnoringTaskRunningTime(JJLjava/lang/Runnable;)V
    .locals 6

    .line 45
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;->scheduleTaskAtFixedRateIgnoringTaskRunningTime(JJLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static scheduleTaskAtFixedRateIncludingTaskRunningTime(JJLjava/lang/Runnable;)V
    .locals 6

    .line 51
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;->scheduleTaskAtFixedRateIncludingTaskRunningTime(JJLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static scheduleTaskOnUiThread(JLjava/lang/Runnable;)V
    .locals 1

    .line 64
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;->scheduleTaskOnUiThread(JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 83
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;->shutdown()V

    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

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

    .line 32
    sget-object v0, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->sThreadPoolExecutorWrapper:Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p0}, Lcom/netease/unisdk/gmbridge5/task/ThreadPoolExecutorWrapper;->submitTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

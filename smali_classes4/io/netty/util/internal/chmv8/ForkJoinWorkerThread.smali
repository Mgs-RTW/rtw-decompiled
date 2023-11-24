.class public Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# instance fields
.field final pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

.field final workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;


# direct methods
.method protected constructor <init>(Lio/netty/util/internal/chmv8/ForkJoinPool;)V
    .locals 1

    const-string v0, "aForkJoinWorkerThread"

    .line 66
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 68
    invoke-virtual {p1, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->registerWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;)Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    return-void
.end method


# virtual methods
.method public getPool()Lio/netty/util/internal/chmv8/ForkJoinPool;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    return-object v0
.end method

.method public getPoolIndex()I
    .locals 1

    .line 91
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    iget-short v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poolIndex:S

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->onStart()V

    .line 126
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    iget-object v2, p0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->runWorker(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :catch_0
    :goto_0
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    invoke-virtual {v1, p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->deregisterWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    invoke-virtual {v2, p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->deregisterWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 131
    :try_start_2
    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 136
    :goto_1
    iget-object v2, p0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    invoke-virtual {v2, p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->deregisterWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    invoke-virtual {v2, p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->deregisterWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_2
    throw v1

    :catch_3
    move-exception v0

    .line 131
    :try_start_3
    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v1

    .line 136
    iget-object v2, p0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    invoke-virtual {v2, p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->deregisterWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v1

    :goto_3
    return-void
.end method

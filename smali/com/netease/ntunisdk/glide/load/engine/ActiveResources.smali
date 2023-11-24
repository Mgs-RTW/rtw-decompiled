.class final Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;
.super Ljava/lang/Object;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;,
        Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    }
.end annotation


# instance fields
.field final activeEngineResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            "Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cb:Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$DequeuedResourceCallback;

.field private final isActiveResourceRetentionAllowed:Z

.field private volatile isShutdown:Z

.field private listener:Lcom/netease/ntunisdk/glide/load/engine/EngineResource$ResourceListener;

.field private final monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

.field private final resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/netease/ntunisdk/glide/load/engine/EngineResource<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 33
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$1;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$1;-><init>()V

    .line 35
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;-><init>(ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(ZLjava/util/concurrent/Executor;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 55
    iput-boolean p1, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    .line 56
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

    .line 58
    new-instance p1, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$2;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$2;-><init>(Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method declared-synchronized activate(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/engine/EngineResource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            "Lcom/netease/ntunisdk/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;-><init>(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 80
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method cleanReferenceQueue()V
    .locals 1

    .line 127
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->isShutdown:Z

    if-nez v0, :cond_1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 130
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;)V

    .line 133
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->cb:Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$DequeuedResourceCallback;->onResourceDequeued()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method cleanupActiveReference(Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    .locals 7

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    iget-object v1, p1, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/netease/ntunisdk/glide/load/Key;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-boolean v0, p1, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;->isCacheable:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/netease/ntunisdk/glide/load/engine/Resource;

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/EngineResource;

    iget-object v2, p1, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/netease/ntunisdk/glide/load/engine/Resource;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/netease/ntunisdk/glide/load/Key;

    iget-object v6, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->listener:Lcom/netease/ntunisdk/glide/load/engine/EngineResource$ResourceListener;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/glide/load/engine/EngineResource;-><init>(Lcom/netease/ntunisdk/glide/load/engine/Resource;ZZLcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/engine/EngineResource$ResourceListener;)V

    .line 121
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->listener:Lcom/netease/ntunisdk/glide/load/engine/EngineResource$ResourceListener;

    iget-object p1, p1, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/netease/ntunisdk/glide/load/Key;

    invoke-interface {v1, p1, v0}, Lcom/netease/ntunisdk/glide/load/engine/EngineResource$ResourceListener;->onResourceReleased(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/engine/EngineResource;)V

    return-void

    .line 114
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized deactivate(Lcom/netease/ntunisdk/glide/load/Key;)V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized get(Lcom/netease/ntunisdk/glide/load/Key;)Lcom/netease/ntunisdk/glide/load/engine/EngineResource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 97
    monitor-exit p0

    return-object p1

    .line 100
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/load/engine/EngineResource;

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setDequeuedResourceCallback(Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$DequeuedResourceCallback;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->cb:Lcom/netease/ntunisdk/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    return-void
.end method

.method setListener(Lcom/netease/ntunisdk/glide/load/engine/EngineResource$ResourceListener;)V
    .locals 1

    .line 68
    monitor-enter p1

    .line 69
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->listener:Lcom/netease/ntunisdk/glide/load/engine/EngineResource$ResourceListener;

    .line 71
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 71
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    .line 72
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method shutdown()V
    .locals 2

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->isShutdown:Z

    .line 157
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/ActiveResources;->monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 158
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 159
    invoke-static {v0}, Lcom/netease/ntunisdk/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    return-void
.end method

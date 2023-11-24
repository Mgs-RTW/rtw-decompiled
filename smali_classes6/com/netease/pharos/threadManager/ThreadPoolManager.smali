.class public Lcom/netease/pharos/threadManager/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ThreadPoolManager"

.field private static sThreadPoolManager:Lcom/netease/pharos/threadManager/ThreadPoolManager;


# instance fields
.field private mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 14
    iput-object v0, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/threadManager/ThreadPoolManager;
    .locals 3

    .line 23
    const-class v0, Lcom/netease/pharos/threadManager/ThreadPoolManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/netease/pharos/threadManager/ThreadPoolManager;->sThreadPoolManager:Lcom/netease/pharos/threadManager/ThreadPoolManager;

    if-nez v1, :cond_0

    const-string v1, "ThreadPoolManager"

    const-string v2, "ThreadPoolManager [getInstance] new ThreadPoolManager"

    .line 25
    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/netease/pharos/threadManager/ThreadPoolManager;

    invoke-direct {v1}, Lcom/netease/pharos/threadManager/ThreadPoolManager;-><init>()V

    sput-object v1, Lcom/netease/pharos/threadManager/ThreadPoolManager;->sThreadPoolManager:Lcom/netease/pharos/threadManager/ThreadPoolManager;

    .line 28
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sget-object v0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->sThreadPoolManager:Lcom/netease/pharos/threadManager/ThreadPoolManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private supportPatch()V
    .locals 2

    .line 66
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public closeFixedThreadPool()V
    .locals 2

    .line 54
    const-class v0, Lcom/netease/pharos/threadManager/ThreadPoolManager;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 59
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFixedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 34
    const-class v0, Lcom/netease/pharos/threadManager/ThreadPoolManager;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "ThreadPoolManager"

    const-string v2, "ThreadPoolManager [getFixedThreadPool] newFixedThreadPool"

    .line 36
    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 37
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 44
    const-class v0, Lcom/netease/pharos/threadManager/ThreadPoolManager;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    const-string v1, "ThreadPoolManager"

    const-string v2, "ThreadPoolManager [getFixedThreadPool] newSingleThreadExecutor"

    .line 46
    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 49
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lcom/netease/pharos/threadManager/ThreadPoolManager;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0

    :catchall_0
    move-exception v1

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.class public Lcom/netease/ntunisdk/glide/provider/LoadPathCache;
.super Ljava/lang/Object;
.source "LoadPathCache.java"


# static fields
.field private static final NO_PATHS_SIGNAL:Lcom/netease/ntunisdk/glide/load/engine/LoadPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/engine/LoadPath<",
            "***>;"
        }
    .end annotation
.end field


# instance fields
.field private final cache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/netease/ntunisdk/glide/util/MultiClassKey;",
            "Lcom/netease/ntunisdk/glide/load/engine/LoadPath<",
            "***>;>;"
        }
    .end annotation
.end field

.field private final keyRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/netease/ntunisdk/glide/util/MultiClassKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 19
    new-instance v6, Lcom/netease/ntunisdk/glide/load/engine/LoadPath;

    const-class v1, Ljava/lang/Object;

    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DecodePath;

    const-class v8, Ljava/lang/Object;

    const-class v9, Ljava/lang/Object;

    const-class v10, Ljava/lang/Object;

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/netease/ntunisdk/glide/load/resource/transcode/UnitTranscoder;

    invoke-direct {v12}, Lcom/netease/ntunisdk/glide/load/resource/transcode/UnitTranscoder;-><init>()V

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/netease/ntunisdk/glide/load/engine/DecodePath;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;Landroidx/core/util/Pools$Pool;)V

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/glide/load/engine/LoadPath;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroidx/core/util/Pools$Pool;)V

    sput-object v6, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->NO_PATHS_SIGNAL:Lcom/netease/ntunisdk/glide/load/engine/LoadPath;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->keyRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private getKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/util/MultiClassKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/netease/ntunisdk/glide/util/MultiClassKey;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->keyRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/util/MultiClassKey;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/netease/ntunisdk/glide/util/MultiClassKey;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/util/MultiClassKey;-><init>()V

    .line 83
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/glide/util/MultiClassKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/load/engine/LoadPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lcom/netease/ntunisdk/glide/load/engine/LoadPath<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->getKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/util/MultiClassKey;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    monitor-enter p2

    .line 58
    :try_start_0
    iget-object p3, p0, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    invoke-virtual {p3, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netease/ntunisdk/glide/load/engine/LoadPath;

    .line 59
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->keyRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p3

    :catchall_0
    move-exception p1

    .line 59
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isEmptyLoadPath(Lcom/netease/ntunisdk/glide/load/engine/LoadPath;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/LoadPath<",
            "***>;)Z"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->NO_PATHS_SIGNAL:Lcom/netease/ntunisdk/glide/load/engine/LoadPath;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/engine/LoadPath;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/load/engine/LoadPath<",
            "***>;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    new-instance v2, Lcom/netease/ntunisdk/glide/util/MultiClassKey;

    invoke-direct {v2, p1, p2, p3}, Lcom/netease/ntunisdk/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    if-eqz p4, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget-object p4, Lcom/netease/ntunisdk/glide/provider/LoadPathCache;->NO_PATHS_SIGNAL:Lcom/netease/ntunisdk/glide/load/engine/LoadPath;

    .line 71
    :goto_0
    invoke-virtual {v1, v2, p4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

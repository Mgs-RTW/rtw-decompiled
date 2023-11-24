.class Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lcom/netease/ntunisdk/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;,
        Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;,
        Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DiskCacheProvider;,
        Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;,
        Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;,
        Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;,
        Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DecodeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob<",
        "*>;>;",
        "Lcom/netease/ntunisdk/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private callback:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback<",
            "TR;>;"
        }
    .end annotation
.end field

.field private currentAttemptingKey:Lcom/netease/ntunisdk/glide/load/Key;

.field private currentData:Ljava/lang/Object;

.field private currentDataSource:Lcom/netease/ntunisdk/glide/load/DataSource;

.field private currentFetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile currentGenerator:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;

.field private currentSourceKey:Lcom/netease/ntunisdk/glide/load/Key;

.field private currentThread:Ljava/lang/Thread;

.field private final decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final deferredEncodeManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager<",
            "*>;"
        }
    .end annotation
.end field

.field private final diskCacheProvider:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private diskCacheStrategy:Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

.field private glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

.field private height:I

.field private volatile isCallbackNotified:Z

.field private volatile isCancelled:Z

.field private isLoadingFromAlternateCacheKey:Z

.field private loadKey:Lcom/netease/ntunisdk/glide/load/engine/EngineKey;

.field private model:Ljava/lang/Object;

.field private onlyRetrieveFromCache:Z

.field private options:Lcom/netease/ntunisdk/glide/load/Options;

.field private order:I

.field private final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/netease/ntunisdk/glide/Priority;

.field private final releaseManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;

.field private runReason:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;

.field private signature:Lcom/netease/ntunisdk/glide/load/Key;

.field private stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

.field private startFetchTime:J

.field private final stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

.field private final throwables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DiskCacheProvider;Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob<",
            "*>;>;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    .line 48
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;->newInstance()Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    .line 51
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;

    .line 52
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->releaseManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;

    .line 83
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 84
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->pool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private decodeFromData(Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/DataSource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
            "*>;TData;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/glide/load/engine/GlideException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 486
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->cleanup()V

    return-object p2

    .line 479
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 480
    invoke-direct {p0, p2, p3}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeFromFetcher(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/DataSource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v2, 0x2

    .line 481
    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 482
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded result "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_1
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->cleanup()V

    throw p2
.end method

.method private decodeFromFetcher(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/DataSource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/glide/load/engine/GlideException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getLoadPath(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/load/engine/LoadPath;

    move-result-object v0

    .line 494
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runLoadPath(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/DataSource;Lcom/netease/ntunisdk/glide/load/engine/LoadPath;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method private decodeFromRetrievedData()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 418
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-wide v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->startFetchTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/netease/ntunisdk/glide/load/Key;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentFetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentFetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentDataSource:Lcom/netease/ntunisdk/glide/load/DataSource;

    invoke-direct {p0, v1, v2, v3}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeFromData(Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/DataSource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object v0
    :try_end_0
    .catch Lcom/netease/ntunisdk/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 433
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentAttemptingKey:Lcom/netease/ntunisdk/glide/load/Key;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentDataSource:Lcom/netease/ntunisdk/glide/load/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->setLoggingDetails(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/DataSource;)V

    .line 434
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_1

    .line 437
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentDataSource:Lcom/netease/ntunisdk/glide/load/DataSource;

    iget-boolean v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isLoadingFromAlternateCacheKey:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->notifyEncodeAndRelease(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/DataSource;Z)V

    goto :goto_1

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runGenerators()V

    :goto_1
    return-void
.end method

.method private getNextGenerator()Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;
    .locals 3

    .line 292
    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$1;->$SwitchMap$com$netease$ntunisdk$glide$load$engine$DecodeJob$Stage:[I

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;-><init>(Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    .line 296
    :cond_2
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DataCacheGenerator;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/glide/load/engine/DataCacheGenerator;-><init>(Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    .line 294
    :cond_3
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/ResourceCacheGenerator;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/glide/load/engine/ResourceCacheGenerator;-><init>(Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0
.end method

.method private getNextStage(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;)Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;
    .locals 3

    .line 353
    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$1;->$SwitchMap$com$netease$ntunisdk$glide$load$engine$DecodeJob$Stage:[I

    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 355
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;->decodeCachedResource()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    .line 357
    :cond_0
    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->getNextStage(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;)Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    move-result-object p1

    :goto_0
    return-object p1

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_2
    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    return-object p1

    .line 364
    :cond_3
    iget-boolean p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->onlyRetrieveFromCache:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    :goto_1
    return-object p1

    .line 359
    :cond_5
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;->decodeCachedData()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 360
    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    goto :goto_2

    .line 361
    :cond_6
    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->getNextStage(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;)Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private getOptionsWithHardwareConfig(Lcom/netease/ntunisdk/glide/load/DataSource;)Lcom/netease/ntunisdk/glide/load/Options;
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->options:Lcom/netease/ntunisdk/glide/load/Options;

    .line 500
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    return-object v0

    .line 504
    :cond_0
    sget-object v1, Lcom/netease/ntunisdk/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/netease/ntunisdk/glide/load/DataSource;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    .line 505
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->isScaleOnlyOrNoTransform()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 506
    :goto_1
    sget-object v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 510
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    return-object v0

    .line 516
    :cond_4
    new-instance v0, Lcom/netease/ntunisdk/glide/load/Options;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/Options;-><init>()V

    .line 517
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->options:Lcom/netease/ntunisdk/glide/load/Options;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/load/Options;->putAll(Lcom/netease/ntunisdk/glide/load/Options;)V

    .line 518
    sget-object v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/glide/load/Options;->set(Lcom/netease/ntunisdk/glide/load/Option;Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/load/Options;

    return-object v0
.end method

.method private getPriority()I
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->priority:Lcom/netease/ntunisdk/glide/Priority;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/Priority;->ordinal()I

    move-result v0

    return v0
.end method

.method private logWithTimeAndKey(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 538
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-static {p2, p3}, Lcom/netease/ntunisdk/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->loadKey:Lcom/netease/ntunisdk/glide/load/engine/EngineKey;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .line 549
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    .line 542
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyComplete(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/DataSource;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->setNotifiedOrThrow()V

    .line 340
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->callback:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;->onResourceReady(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/DataSource;Z)V

    return-void
.end method

.method private notifyEncodeAndRelease(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/DataSource;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 445
    instance-of v0, p1, Lcom/netease/ntunisdk/glide/load/engine/Initializable;

    if-eqz v0, :cond_0

    .line 446
    move-object v0, p1

    check-cast v0, Lcom/netease/ntunisdk/glide/load/engine/Initializable;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/engine/Initializable;->initialize()V

    :cond_0
    const/4 v0, 0x0

    .line 451
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;->hasResourceToEncode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/load/engine/LockedResource;->obtain(Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/LockedResource;

    move-result-object p1

    move-object v0, p1

    .line 456
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->notifyComplete(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/DataSource;Z)V

    .line 458
    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    .line 460
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;->hasResourceToEncode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 461
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;

    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DiskCacheProvider;

    iget-object p3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->options:Lcom/netease/ntunisdk/glide/load/Options;

    invoke-virtual {p1, p2, p3}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;->encode(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/netease/ntunisdk/glide/load/Options;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 465
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/LockedResource;->unlock()V

    .line 470
    :cond_3
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->onEncodeComplete()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    .line 465
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/LockedResource;->unlock()V

    :cond_4
    throw p1
.end method

.method private notifyFailed()V
    .locals 3

    .line 331
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->setNotifiedOrThrow()V

    .line 332
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 333
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->callback:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v1, v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;->onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;)V

    .line 334
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->onLoadFailed()V

    return-void
.end method

.method private onEncodeComplete()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->releaseManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;->onEncodeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->releaseInternal()V

    :cond_0
    return-void
.end method

.method private onLoadFailed()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->releaseManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;->onFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->releaseInternal()V

    :cond_0
    return-void
.end method

.method private releaseInternal()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->releaseManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;->reset()V

    .line 176
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;->clear()V

    .line 177
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->clear()V

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    .line 180
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->signature:Lcom/netease/ntunisdk/glide/load/Key;

    .line 181
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->options:Lcom/netease/ntunisdk/glide/load/Options;

    .line 182
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->priority:Lcom/netease/ntunisdk/glide/Priority;

    .line 183
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->loadKey:Lcom/netease/ntunisdk/glide/load/engine/EngineKey;

    .line 184
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->callback:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;

    .line 185
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    .line 186
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentGenerator:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;

    .line 187
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    .line 188
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/netease/ntunisdk/glide/load/Key;

    .line 189
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    .line 190
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentDataSource:Lcom/netease/ntunisdk/glide/load/DataSource;

    .line 191
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentFetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    const-wide/16 v2, 0x0

    .line 192
    iput-wide v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->startFetchTime:J

    .line 193
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 194
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->model:Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private runGenerators()V
    .locals 3

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    .line 308
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->startFetchTime:J

    const/4 v0, 0x0

    .line 310
    :cond_0
    iget-boolean v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isCancelled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentGenerator:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentGenerator:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;

    .line 312
    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;->startNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->getNextStage(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;)Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    .line 314
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->getNextGenerator()Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentGenerator:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;

    .line 316
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    if-ne v1, v2, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->reschedule()V

    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isCancelled:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 323
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->notifyFailed()V

    :cond_3
    return-void
.end method

.method private runLoadPath(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/DataSource;Lcom/netease/ntunisdk/glide/load/engine/LoadPath;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Lcom/netease/ntunisdk/glide/load/engine/LoadPath<",
            "TData;TResourceType;TR;>;)",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/glide/load/engine/GlideException;
        }
    .end annotation

    .line 526
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->getOptionsWithHardwareConfig(Lcom/netease/ntunisdk/glide/load/DataSource;)Lcom/netease/ntunisdk/glide/load/Options;

    move-result-object v2

    .line 527
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/GlideContext;->getRegistry()Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/Registry;->getRewinder(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/load/data/DataRewinder;

    move-result-object p1

    .line 530
    :try_start_0
    iget v3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->height:I

    new-instance v5, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DecodeCallback;

    invoke-direct {v5, p0, p2}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DecodeCallback;-><init>(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;Lcom/netease/ntunisdk/glide/load/DataSource;)V

    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/glide/load/engine/LoadPath;->load(Lcom/netease/ntunisdk/glide/load/data/DataRewinder;Lcom/netease/ntunisdk/glide/load/Options;IILcom/netease/ntunisdk/glide/load/engine/DecodePath$DecodeCallback;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/data/DataRewinder;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/data/DataRewinder;->cleanup()V

    throw p2
.end method

.method private runWrapped()V
    .locals 3

    .line 274
    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$1;->$SwitchMap$com$netease$ntunisdk$glide$load$engine$DecodeJob$RunReason:[I

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runReason:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeFromRetrievedData()V

    goto :goto_0

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runReason:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runGenerators()V

    goto :goto_0

    .line 276
    :cond_2
    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->getNextStage(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;)Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    .line 277
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->getNextGenerator()Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentGenerator:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;

    .line 278
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runGenerators()V

    :goto_0
    return-void
.end method

.method private setNotifiedOrThrow()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 345
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 347
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 349
    :cond_1
    iput-boolean v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 214
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentGenerator:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;->cancel()V

    :cond_0
    return-void
.end method

.method public compareTo(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob<",
            "*>;)I"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->getPriority()I

    move-result v0

    invoke-direct {p1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 203
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->order:I

    iget p1, p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->order:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->compareTo(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;)I

    move-result p1

    return p1
.end method

.method public getVerifier()Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method init(Lcom/netease/ntunisdk/glide/GlideContext;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/engine/EngineKey;Lcom/netease/ntunisdk/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/Priority;Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZZLcom/netease/ntunisdk/glide/load/Options;Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;I)Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/load/engine/EngineKey;",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/netease/ntunisdk/glide/Priority;",
            "Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "*>;>;ZZZ",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback<",
            "TR;>;I)",
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 105
    iget-object v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    iget-object v15, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DiskCacheProvider;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->init(Lcom/netease/ntunisdk/glide/GlideContext;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/Key;IILcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/Priority;Lcom/netease/ntunisdk/glide/load/Options;Ljava/util/Map;ZZLcom/netease/ntunisdk/glide/load/engine/DecodeJob$DiskCacheProvider;)V

    move-object/from16 v1, p1

    .line 120
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    move-object/from16 v1, p4

    .line 121
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->signature:Lcom/netease/ntunisdk/glide/load/Key;

    move-object/from16 v1, p9

    .line 122
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->priority:Lcom/netease/ntunisdk/glide/Priority;

    move-object/from16 v1, p3

    .line 123
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->loadKey:Lcom/netease/ntunisdk/glide/load/engine/EngineKey;

    move/from16 v1, p5

    .line 124
    iput v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->width:I

    move/from16 v1, p6

    .line 125
    iput v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->height:I

    move-object/from16 v1, p10

    .line 126
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    move/from16 v1, p14

    .line 127
    iput-boolean v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->onlyRetrieveFromCache:Z

    move-object/from16 v1, p15

    .line 128
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->options:Lcom/netease/ntunisdk/glide/load/Options;

    move-object/from16 v1, p16

    .line 129
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->callback:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;

    move/from16 v1, p17

    .line 130
    iput v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->order:I

    .line 131
    sget-object v1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;

    iput-object v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runReason:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;

    move-object/from16 v1, p2

    .line 132
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public onDataFetcherFailed(Lcom/netease/ntunisdk/glide/load/Key;Ljava/lang/Exception;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Lcom/netease/ntunisdk/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 405
    invoke-interface {p3}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->cleanup()V

    .line 406
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    invoke-interface {p3}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->setLoggingDetails(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/DataSource;Ljava/lang/Class;)V

    .line 408
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 410
    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runReason:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;

    .line 411
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->callback:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;

    invoke-interface {p1, p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;)V

    goto :goto_0

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runGenerators()V

    :goto_0
    return-void
.end method

.method public onDataFetcherReady(Lcom/netease/ntunisdk/glide/load/Key;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Lcom/netease/ntunisdk/glide/load/DataSource;Lcom/netease/ntunisdk/glide/load/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            ")V"
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/netease/ntunisdk/glide/load/Key;

    .line 383
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    .line 384
    iput-object p3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentFetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    .line 385
    iput-object p4, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentDataSource:Lcom/netease/ntunisdk/glide/load/DataSource;

    .line 386
    iput-object p5, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentAttemptingKey:Lcom/netease/ntunisdk/glide/load/Key;

    .line 387
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getCacheKeys()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isLoadingFromAlternateCacheKey:Z

    .line 389
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1

    .line 390
    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runReason:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;

    .line 391
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->callback:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;

    invoke-interface {p1, p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;)V

    goto :goto_0

    :cond_1
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    .line 393
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/pool/GlideTrace;->beginSection(Ljava/lang/String;)V

    .line 395
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeFromRetrievedData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/pool/GlideTrace;->endSection()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/netease/ntunisdk/glide/util/pool/GlideTrace;->endSection()V

    throw p1
.end method

.method onResourceDecoded(Lcom/netease/ntunisdk/glide/load/DataSource;Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .line 564
    invoke-interface {p2}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 567
    sget-object v0, Lcom/netease/ntunisdk/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/netease/ntunisdk/glide/load/DataSource;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {v0, v8}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getTransformation(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/load/Transformation;

    move-result-object v0

    .line 569
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    iget v3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v0, v2, p2, v3, v4}, Lcom/netease/ntunisdk/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/Resource;II)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v7, v1

    .line 572
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 573
    invoke-interface {p2}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->recycle()V

    .line 578
    :cond_1
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {p2, v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->isResourceEncoderAvailable(Lcom/netease/ntunisdk/glide/load/engine/Resource;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 579
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {p2, v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getResultEncoder(Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/ResourceEncoder;

    move-result-object v1

    .line 580
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->options:Lcom/netease/ntunisdk/glide/load/Options;

    invoke-interface {v1, p2}, Lcom/netease/ntunisdk/glide/load/ResourceEncoder;->getEncodeStrategy(Lcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    move-result-object p2

    goto :goto_1

    .line 583
    :cond_2
    sget-object p2, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->NONE:Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    :goto_1
    move-object v10, v1

    .line 587
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/netease/ntunisdk/glide/load/Key;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->isSourceKey(Lcom/netease/ntunisdk/glide/load/Key;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 588
    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v1, p1, p2}, Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;->isResourceCacheable(ZLcom/netease/ntunisdk/glide/load/DataSource;Lcom/netease/ntunisdk/glide/load/EncodeStrategy;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v10, :cond_5

    .line 594
    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$1;->$SwitchMap$com$netease$ntunisdk$glide$load$EncodeStrategy:[I

    invoke-virtual {p2}, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 599
    new-instance p1, Lcom/netease/ntunisdk/glide/load/engine/ResourceCacheKey;

    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->decodeHelper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    .line 601
    invoke-virtual {p2}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getArrayPool()Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/netease/ntunisdk/glide/load/Key;

    iget-object v4, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->signature:Lcom/netease/ntunisdk/glide/load/Key;

    iget v5, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->width:I

    iget v6, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->height:I

    iget-object v9, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->options:Lcom/netease/ntunisdk/glide/load/Options;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/netease/ntunisdk/glide/load/engine/ResourceCacheKey;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/Key;IILcom/netease/ntunisdk/glide/load/Transformation;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/Options;)V

    goto :goto_2

    .line 611
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 596
    :cond_4
    new-instance p1, Lcom/netease/ntunisdk/glide/load/engine/DataCacheKey;

    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/netease/ntunisdk/glide/load/Key;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->signature:Lcom/netease/ntunisdk/glide/load/Key;

    invoke-direct {p1, p2, v1}, Lcom/netease/ntunisdk/glide/load/engine/DataCacheKey;-><init>(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/Key;)V

    .line 614
    :goto_2
    invoke-static {v0}, Lcom/netease/ntunisdk/glide/load/engine/LockedResource;->obtain(Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/LockedResource;

    move-result-object v0

    .line 615
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {p2, p1, v10, v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DeferredEncodeManager;->init(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/ResourceEncoder;Lcom/netease/ntunisdk/glide/load/engine/LockedResource;)V

    goto :goto_3

    .line 591
    :cond_5
    new-instance p1, Lcom/netease/ntunisdk/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/netease/ntunisdk/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method release(Z)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->releaseManager:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$ReleaseManager;->release(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->releaseInternal()V

    :cond_0
    return-void
.end method

.method public reschedule()V
    .locals 1

    .line 375
    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runReason:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$RunReason;

    .line 376
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->callback:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;)V

    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "DecodeJob"

    .line 227
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->model:Ljava/lang/Object;

    const-string v2, "DecodeJob#run(model=%s)"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/glide/util/pool/GlideTrace;->beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->currentFetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    .line 232
    :try_start_0
    iget-boolean v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isCancelled:Z

    if-eqz v2, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->notifyFailed()V
    :try_end_0
    .catch Lcom/netease/ntunisdk/glide/load/engine/CallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 267
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->cleanup()V

    .line 269
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/pool/GlideTrace;->endSection()V

    return-void

    .line 236
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->runWrapped()V
    :try_end_1
    .catch Lcom/netease/ntunisdk/glide/load/engine/CallbackException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 267
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->cleanup()V

    .line 269
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/pool/GlideTrace;->endSection()V

    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x3

    .line 248
    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isCancelled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->stage:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    sget-object v3, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v3, :cond_4

    .line 256
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->notifyFailed()V

    .line 259
    :cond_4
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->isCancelled:Z

    if-nez v0, :cond_5

    .line 260
    throw v2

    .line 262
    :cond_5
    throw v2

    :catch_0
    move-exception v0

    .line 240
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_6

    .line 267
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->cleanup()V

    .line 269
    :cond_6
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/pool/GlideTrace;->endSection()V

    throw v0
.end method

.method willDecodeFromCache()Z
    .locals 2

    .line 141
    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;->getNextStage(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;)Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

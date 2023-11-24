.class public final Lcom/netease/ntunisdk/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/GlideBuilder$LogRequestOrigins;,
        Lcom/netease/ntunisdk/glide/GlideBuilder$EnableImageDecoderForBitmaps;,
        Lcom/netease/ntunisdk/glide/GlideBuilder$WaitForFramesAfterTrimMemory;,
        Lcom/netease/ntunisdk/glide/GlideBuilder$ManualOverrideHardwareBitmapMaxFdCount;
    }
.end annotation


# instance fields
.field private animationExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

.field private arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

.field private bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

.field private connectivityMonitorFactory:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;

.field private defaultRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultRequestOptionsFactory:Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;

.field private final defaultTransitionOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/TransitionOptions<",
            "**>;>;"
        }
    .end annotation
.end field

.field private diskCacheExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

.field private diskCacheFactory:Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Factory;

.field private engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

.field private final glideExperimentsBuilder:Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;

.field private isActiveResourceRetentionAllowed:Z

.field private logLevel:I

.field private memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

.field private memorySizeCalculator:Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;

.field private requestManagerFactory:Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field private sourceExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultTransitionOptions:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->glideExperimentsBuilder:Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;

    const/4 v0, 0x4

    .line 58
    iput v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->logLevel:I

    .line 59
    new-instance v0, Lcom/netease/ntunisdk/glide/GlideBuilder$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/glide/GlideBuilder$1;-><init>(Lcom/netease/ntunisdk/glide/GlideBuilder;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultRequestOptionsFactory:Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;

    return-void
.end method


# virtual methods
.method public addGlobalRequestListener(Lcom/netease/ntunisdk/glide/request/RequestListener;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netease/ntunisdk/glide/GlideBuilder;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method build(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/Glide;
    .locals 14

    .line 504
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->sourceExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;->newSourceExecutor()Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->sourceExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->diskCacheExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    if-nez v0, :cond_1

    .line 509
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;->newDiskCacheExecutor()Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->diskCacheExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->animationExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    if-nez v0, :cond_2

    .line 513
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;->newAnimationExecutor()Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->animationExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->memorySizeCalculator:Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;

    if-nez v0, :cond_3

    .line 517
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator$Builder;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator$Builder;->build()Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->memorySizeCalculator:Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;

    .line 520
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;

    if-nez v0, :cond_4

    .line 521
    new-instance v0, Lcom/netease/ntunisdk/glide/manager/DefaultConnectivityMonitorFactory;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/manager/DefaultConnectivityMonitorFactory;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;

    .line 524
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez v0, :cond_6

    .line 525
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->memorySizeCalculator:Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 527
    new-instance v1, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruBitmapPool;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    iput-object v1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    goto :goto_0

    .line 529
    :cond_5
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 533
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    if-nez v0, :cond_7

    .line 534
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->memorySizeCalculator:Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;->getArrayPoolSizeInBytes()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool;-><init>(I)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 537
    :cond_7
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

    if-nez v0, :cond_8

    .line 538
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/cache/LruResourceCache;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->memorySizeCalculator:Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;->getMemoryCacheSize()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/glide/load/engine/cache/LruResourceCache;-><init>(J)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

    .line 541
    :cond_8
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->diskCacheFactory:Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Factory;

    if-nez v0, :cond_9

    .line 542
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->diskCacheFactory:Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Factory;

    .line 545
    :cond_9
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    if-nez v0, :cond_a

    .line 546
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/Engine;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->diskCacheFactory:Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Factory;

    iget-object v4, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->diskCacheExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    iget-object v5, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->sourceExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    .line 552
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;->newUnlimitedSourceExecutor()Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->animationExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    iget-boolean v8, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->isActiveResourceRetentionAllowed:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/netease/ntunisdk/glide/load/engine/Engine;-><init>(Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Factory;Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;Z)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    .line 557
    :cond_a
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 558
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    goto :goto_1

    .line 560
    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    .line 563
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->glideExperimentsBuilder:Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;->build()Lcom/netease/ntunisdk/glide/GlideExperiments;

    move-result-object v13

    .line 564
    new-instance v7, Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->requestManagerFactory:Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    invoke-direct {v7, v0, v13}, Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;-><init>(Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever$RequestManagerFactory;Lcom/netease/ntunisdk/glide/GlideExperiments;)V

    .line 567
    new-instance v0, Lcom/netease/ntunisdk/glide/Glide;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    iget-object v4, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

    iget-object v5, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v6, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    iget-object v8, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;

    iget v9, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->logLevel:I

    iget-object v10, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultRequestOptionsFactory:Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;

    iget-object v11, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultTransitionOptions:Ljava/util/Map;

    iget-object v12, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/netease/ntunisdk/glide/Glide;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/Engine;Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;ILcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;Ljava/util/Map;Ljava/util/List;Lcom/netease/ntunisdk/glide/GlideExperiments;)V

    return-object v0
.end method

.method public setAnimationExecutor(Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->animationExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    return-object p0
.end method

.method public setArrayPool(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object p0
.end method

.method public setBitmapPool(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object p0
.end method

.method public setConnectivityMonitorFactory(Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;

    return-object p0
.end method

.method public setDefaultRequestOptions(Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 253
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultRequestOptionsFactory:Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;

    return-object p0
.end method

.method public setDefaultRequestOptions(Lcom/netease/ntunisdk/glide/request/RequestOptions;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 1

    .line 228
    new-instance v0, Lcom/netease/ntunisdk/glide/GlideBuilder$2;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/glide/GlideBuilder$2;-><init>(Lcom/netease/ntunisdk/glide/GlideBuilder;Lcom/netease/ntunisdk/glide/request/RequestOptions;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/GlideBuilder;->setDefaultRequestOptions(Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;)Lcom/netease/ntunisdk/glide/GlideBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultTransitionOptions(Ljava/lang/Class;Lcom/netease/ntunisdk/glide/TransitionOptions;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/netease/ntunisdk/glide/TransitionOptions<",
            "*TT;>;)",
            "Lcom/netease/ntunisdk/glide/GlideBuilder;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->defaultTransitionOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setDiskCache(Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Factory;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->diskCacheFactory:Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Factory;

    return-object p0
.end method

.method public setDiskCacheExecutor(Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->diskCacheExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    return-object p0
.end method

.method setEngine(Lcom/netease/ntunisdk/glide/load/engine/Engine;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    return-object p0
.end method

.method public setImageDecoderEnabledForBitmaps(Z)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->glideExperimentsBuilder:Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;

    new-instance v1, Lcom/netease/ntunisdk/glide/GlideBuilder$EnableImageDecoderForBitmaps;

    invoke-direct {v1}, Lcom/netease/ntunisdk/glide/GlideBuilder$EnableImageDecoderForBitmaps;-><init>()V

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;->update(Lcom/netease/ntunisdk/glide/GlideExperiments$Experiment;Z)Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;

    return-object p0
.end method

.method public setIsActiveResourceRetentionAllowed(Z)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->isActiveResourceRetentionAllowed:Z

    return-object p0
.end method

.method public setLogLevel(I)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 364
    iput p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->logLevel:I

    return-object p0

    .line 361
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLogRequestOrigins(Z)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->glideExperimentsBuilder:Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;

    new-instance v1, Lcom/netease/ntunisdk/glide/GlideBuilder$LogRequestOrigins;

    invoke-direct {v1}, Lcom/netease/ntunisdk/glide/GlideBuilder$LogRequestOrigins;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;->update(Lcom/netease/ntunisdk/glide/GlideExperiments$Experiment;Z)Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;

    return-object p0
.end method

.method public setMemoryCache(Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

    return-object p0
.end method

.method public setMemorySizeCalculator(Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator$Builder;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 294
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator$Builder;->build()Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/GlideBuilder;->setMemorySizeCalculator(Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;)Lcom/netease/ntunisdk/glide/GlideBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMemorySizeCalculator(Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->memorySizeCalculator:Lcom/netease/ntunisdk/glide/load/engine/cache/MemorySizeCalculator;

    return-object p0
.end method

.method setRequestManagerFactory(Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->requestManagerFactory:Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    return-void
.end method

.method public setResizeExecutor(Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/GlideBuilder;->setSourceExecutor(Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;)Lcom/netease/ntunisdk/glide/GlideBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSourceExecutor(Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;)Lcom/netease/ntunisdk/glide/GlideBuilder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder;->sourceExecutor:Lcom/netease/ntunisdk/glide/load/engine/executor/GlideExecutor;

    return-object p0
.end method

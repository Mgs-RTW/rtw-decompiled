.class Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;
.implements Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SourceGenerator"


# instance fields
.field private final cb:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field private dataToCache:Ljava/lang/Object;

.field private final helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData<",
            "*>;"
        }
    .end annotation
.end field

.field private loadDataListIndex:I

.field private originalKey:Lcom/netease/ntunisdk/glide/load/engine/DataCacheKey;

.field private sourceCacheGenerator:Lcom/netease/ntunisdk/glide/load/engine/DataCacheGenerator;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    .line 38
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->cb:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    return-void
.end method

.method private cacheData(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "SourceGenerator"

    .line 101
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/LogTime;->getLogTime()J

    move-result-wide v1

    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {v3, p1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getSourceEncoder(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/load/Encoder;

    move-result-object v3

    .line 104
    new-instance v4, Lcom/netease/ntunisdk/glide/load/engine/DataCacheWriter;

    iget-object v5, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    .line 105
    invoke-virtual {v5}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getOptions()Lcom/netease/ntunisdk/glide/load/Options;

    move-result-object v5

    invoke-direct {v4, v3, p1, v5}, Lcom/netease/ntunisdk/glide/load/engine/DataCacheWriter;-><init>(Lcom/netease/ntunisdk/glide/load/Encoder;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/Options;)V

    .line 106
    new-instance v5, Lcom/netease/ntunisdk/glide/load/engine/DataCacheKey;

    iget-object v6, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    iget-object v6, v6, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/netease/ntunisdk/glide/load/Key;

    iget-object v7, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getSignature()Lcom/netease/ntunisdk/glide/load/Key;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/netease/ntunisdk/glide/load/engine/DataCacheKey;-><init>(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/Key;)V

    iput-object v5, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->originalKey:Lcom/netease/ntunisdk/glide/load/engine/DataCacheKey;

    .line 107
    iget-object v5, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getDiskCache()Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->originalKey:Lcom/netease/ntunisdk/glide/load/engine/DataCacheKey;

    invoke-interface {v5, v6, v4}, Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache;->put(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Writer;)V

    const/4 v4, 0x2

    .line 108
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->originalKey:Lcom/netease/ntunisdk/glide/load/engine/DataCacheKey;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    iget-object p1, p1, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->cleanup()V

    .line 125
    new-instance p1, Lcom/netease/ntunisdk/glide/load/engine/DataCacheGenerator;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/netease/ntunisdk/glide/load/Key;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-direct {p1, v0, v1, p0}, Lcom/netease/ntunisdk/glide/load/engine/DataCacheGenerator;-><init>(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/netease/ntunisdk/glide/load/engine/DataCacheGenerator;

    return-void

    :catchall_0
    move-exception p1

    .line 122
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->cleanup()V

    throw p1
.end method

.method private hasNextModelLoader()Z
    .locals 2

    .line 97
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startNextLoad(Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData<",
            "*>;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    .line 70
    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getPriority()Lcom/netease/ntunisdk/glide/Priority;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator$1;

    invoke-direct {v2, p0, p1}, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator$1;-><init>(Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;)V

    .line 69
    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->loadData(Lcom/netease/ntunisdk/glide/Priority;Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, v0, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->cancel()V

    :cond_0
    return-void
.end method

.method isCurrentRequest(Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData<",
            "*>;)Z"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDataFetcherFailed(Lcom/netease/ntunisdk/glide/load/Key;Ljava/lang/Exception;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Lcom/netease/ntunisdk/glide/load/DataSource;)V
    .locals 1
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

    .line 181
    iget-object p4, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->cb:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->getDataSource()Lcom/netease/ntunisdk/glide/load/DataSource;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/netease/ntunisdk/glide/load/Key;Ljava/lang/Exception;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Lcom/netease/ntunisdk/glide/load/DataSource;)V

    return-void
.end method

.method public onDataFetcherReady(Lcom/netease/ntunisdk/glide/load/Key;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Lcom/netease/ntunisdk/glide/load/DataSource;Lcom/netease/ntunisdk/glide/load/Key;)V
    .locals 6
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

    .line 175
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->cb:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object p4, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    iget-object p4, p4, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    invoke-interface {p4}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->getDataSource()Lcom/netease/ntunisdk/glide/load/DataSource;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/netease/ntunisdk/glide/load/Key;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Lcom/netease/ntunisdk/glide/load/DataSource;Lcom/netease/ntunisdk/glide/load/Key;)V

    return-void
.end method

.method onDataReadyInternal(Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getDiskCacheStrategy()Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 141
    iget-object v1, p1, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->getDataSource()Lcom/netease/ntunisdk/glide/load/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;->isDataCacheable(Lcom/netease/ntunisdk/glide/load/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    .line 145
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->cb:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->reschedule()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->cb:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p1, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/netease/ntunisdk/glide/load/Key;

    iget-object v3, p1, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    iget-object p1, p1, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    .line 151
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->getDataSource()Lcom/netease/ntunisdk/glide/load/DataSource;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->originalKey:Lcom/netease/ntunisdk/glide/load/engine/DataCacheKey;

    move-object v2, p2

    .line 147
    invoke-interface/range {v0 .. v5}, Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/netease/ntunisdk/glide/load/Key;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Lcom/netease/ntunisdk/glide/load/DataSource;Lcom/netease/ntunisdk/glide/load/Key;)V

    :goto_0
    return-void
.end method

.method onLoadFailedInternal(Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->cb:Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->originalKey:Lcom/netease/ntunisdk/glide/load/engine/DataCacheKey;

    iget-object v2, p1, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    iget-object p1, p1, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->getDataSource()Lcom/netease/ntunisdk/glide/load/DataSource;

    move-result-object p1

    invoke-interface {v0, v1, p2, v2, p1}, Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/netease/ntunisdk/glide/load/Key;Ljava/lang/Exception;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Lcom/netease/ntunisdk/glide/load/DataSource;)V

    return-void
.end method

.method public reschedule()V
    .locals 1

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startNext()Z
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    .line 46
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->cacheData(Ljava/lang/Object;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/netease/ntunisdk/glide/load/engine/DataCacheGenerator;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/DataCacheGenerator;->startNext()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 52
    :cond_1
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/netease/ntunisdk/glide/load/engine/DataCacheGenerator;

    .line 54
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 56
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->hasNextModelLoader()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    .line 58
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    .line 59
    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->getDiskCacheStrategy()Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v3, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    invoke-interface {v3}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->getDataSource()Lcom/netease/ntunisdk/glide/load/DataSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;->isDataCacheable(Lcom/netease/ntunisdk/glide/load/DataSource;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->helper:Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v3, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    .line 60
    invoke-interface {v3}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/ntunisdk/glide/load/engine/DecodeHelper;->hasLoadPath(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->loadData:Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/load/engine/SourceGenerator;->startNextLoad(Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

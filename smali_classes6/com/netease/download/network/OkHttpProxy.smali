.class public Lcom/netease/download/network/OkHttpProxy;
.super Ljava/lang/Object;
.source "OkHttpProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OkHttpProxy"

.field private static sOkHttpProxy:Lcom/netease/download/network/OkHttpProxy;


# instance fields
.field private sOkHttpClient:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/netease/download/network/OkHttpProxy;->sOkHttpClient:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    return-void
.end method

.method public static getInstance()Lcom/netease/download/network/OkHttpProxy;
    .locals 2

    .line 35
    sget-object v0, Lcom/netease/download/network/OkHttpProxy;->sOkHttpProxy:Lcom/netease/download/network/OkHttpProxy;

    if-nez v0, :cond_0

    const-string v0, "OkHttpProxy"

    const-string v1, "OkHttpProxy [getInstance] sOkHttpProxy create"

    .line 36
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/netease/download/network/OkHttpProxy;

    invoke-direct {v0}, Lcom/netease/download/network/OkHttpProxy;-><init>()V

    sput-object v0, Lcom/netease/download/network/OkHttpProxy;->sOkHttpProxy:Lcom/netease/download/network/OkHttpProxy;

    .line 40
    :cond_0
    sget-object v0, Lcom/netease/download/network/OkHttpProxy;->sOkHttpProxy:Lcom/netease/download/network/OkHttpProxy;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 2

    const-string v0, "OkHttpProxy"

    const-string v1, "OkHttpProxy [clean] start"

    .line 164
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/netease/download/network/OkHttpProxy;->sOkHttpClient:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    return-void
.end method

.method public execute_syn(Lcom/netease/ntunisdk/okhttp3/Request$Builder;Lcom/netease/ntunisdk/okhttp3/Callback;)I
    .locals 11

    const-string v0, "OkHttpProxy"

    const-string v1, "OkHttpProxy [execute_syn] start"

    .line 45
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->addHttpCount()V

    .line 50
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/netease/download/network/OkHttpProxy;->sOkHttpClient:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v3, "OkHttpProxy"

    const-string v5, "OkHttpProxy [execute_syn] sOkHttpClient create"

    .line 54
    invoke-static {v3, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :try_start_0
    new-instance v3, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;-><init>()V

    .line 58
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v6, v7, v5}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;

    .line 59
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v5}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;

    .line 60
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v5}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;

    .line 61
    new-instance v5, Lcom/netease/ntunisdk/okhttp3/ConnectionPool;

    const/4 v6, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1e

    invoke-direct {v5, v6, v8, v9, v7}, Lcom/netease/ntunisdk/okhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v3, v5}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->connectionPool(Lcom/netease/ntunisdk/okhttp3/ConnectionPool;)Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;

    .line 62
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9, v5}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;

    const-string v5, "OkHttpProxy"

    const-string v6, "OkHttpProxy [execute_syn] CONNECT_TIMEOUT_TIME=30000"

    .line 63
    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "OkHttpProxy"

    const-string v6, "OkHttpProxy [execute_syn] READ_TIMEOUT_TIME=30000"

    .line 64
    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "OkHttpProxy"

    const-string v6, "OkHttpProxy [execute_syn] WRITE_TIMEOUT_TIME=30000"

    .line 65
    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "OkHttpProxy"

    const-string v6, "OkHttpProxy [execute_syn] KEEPALIVE_TIMEOUT=30"

    .line 66
    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "OkHttpProxy"

    const-string v6, "OkHttpProxy [execute_syn] PINGINTERVAL=30"

    .line 67
    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, v4}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;

    .line 71
    new-instance v5, Lcom/netease/ntunisdk/okhttp3/CacheControl$Builder;

    invoke-direct {v5}, Lcom/netease/ntunisdk/okhttp3/CacheControl$Builder;-><init>()V

    .line 72
    invoke-virtual {v5}, Lcom/netease/ntunisdk/okhttp3/CacheControl$Builder;->noStore()Lcom/netease/ntunisdk/okhttp3/CacheControl$Builder;

    .line 73
    invoke-virtual {v5}, Lcom/netease/ntunisdk/okhttp3/CacheControl$Builder;->build()Lcom/netease/ntunisdk/okhttp3/CacheControl;

    move-result-object v5

    .line 74
    invoke-virtual {p1, v5}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->cacheControl(Lcom/netease/ntunisdk/okhttp3/CacheControl;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 76
    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->build()Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/download/network/OkHttpProxy;->sOkHttpClient:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    .line 77
    iget-object v3, p0, Lcom/netease/download/network/OkHttpProxy;->sOkHttpClient:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->dispatcher()Lcom/netease/ntunisdk/okhttp3/Dispatcher;

    move-result-object v3

    const/16 v5, 0x1e

    invoke-virtual {v3, v5}, Lcom/netease/ntunisdk/okhttp3/Dispatcher;->setMaxRequestsPerHost(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "OkHttpProxy"

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OkHttpProxy [execute_syn] Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", header="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Headers;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "END"

    .line 86
    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "START"

    .line 89
    invoke-virtual {v2, v5}, Lcom/netease/ntunisdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    .line 93
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RANGE"

    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    :cond_2
    const-string v2, "X-Ntes-Orbit-Ver"

    const-string v3, "2.8.2"

    .line 100
    invoke-virtual {p1, v2, v3}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    const-string v2, "X-Ntes-Orbit-ID"

    .line 102
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    const/16 v2, 0xb

    .line 106
    iget-object v3, p0, Lcom/netease/download/network/OkHttpProxy;->sOkHttpClient:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->newCall(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Call;

    move-result-object p1

    const/4 v3, 0x1

    const/4 v5, 0x0

    :try_start_1
    const-string v6, "OkHttpProxy"

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OkHttpProxy [execute_syn] headers = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->execute()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v2, v7

    goto :goto_3

    :catch_1
    move-exception v7

    goto :goto_2

    :catch_2
    move-exception v7

    move-object v6, v5

    :goto_2
    :try_start_4
    const-string v8, "OkHttpProxy"

    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OkHttpProxy [execute_syn] Exception1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", headers = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-interface {p2, p1, v5}, Lcom/netease/ntunisdk/okhttp3/Callback;->onFailure(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V

    .line 123
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string v7, "OkHttpProxy"

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OkHttpProxy [execute_syn] headers = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xc8

    if-eq v7, v2, :cond_4

    const/16 v7, 0xce

    if-ne v7, v2, :cond_3

    goto :goto_4

    .line 133
    :cond_3
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->addHttpFailCount()V

    .line 134
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/netease/download/downloader/TaskHandleOp;->addHttpFailCountToMap(I)V

    .line 135
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v7

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Lcom/netease/download/downloader/TaskHandleOp;->addHttpFailFileNameMapToMap(ILcom/netease/ntunisdk/okhttp3/Headers;Ljava/lang/String;)V

    .line 136
    invoke-interface {p2, p1, v5}, Lcom/netease/ntunisdk/okhttp3/Callback;->onFailure(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V

    const/4 v4, 0x1

    goto :goto_5

    .line 128
    :cond_4
    :goto_4
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/TaskHandleOp;->addHttpSuccessCount()V

    .line 129
    invoke-interface {p2, p1, v6}, Lcom/netease/ntunisdk/okhttp3/Callback;->onResponse(Lcom/netease/ntunisdk/okhttp3/Call;Lcom/netease/ntunisdk/okhttp3/Response;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    if-eqz v6, :cond_5

    .line 147
    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/Response;->close()V

    :cond_5
    move v2, v4

    goto :goto_7

    :catch_3
    move-exception v4

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v6, v5

    goto/16 :goto_8

    :catch_4
    move-exception v4

    move-object v6, v5

    :goto_6
    :try_start_5
    const-string v7, "OkHttpProxy"

    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OkHttpProxy [execute_syn] Exception2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", headers = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v6, :cond_6

    .line 147
    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/Response;->close()V

    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    .line 153
    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Request;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 154
    invoke-interface {p2, p1, v5}, Lcom/netease/ntunisdk/okhttp3/Callback;->onFailure(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V

    const/4 v2, 0x1

    :cond_7
    const-string p2, "OkHttpProxy"

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OkHttpProxy [execute_syn] code= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p2

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p2, p1, v3, v4}, Lcom/netease/download/downloader/TaskHandleOp;->addChannelDownloadCostTimeMap(Lcom/netease/ntunisdk/okhttp3/Headers;J)V

    return v2

    :catchall_1
    move-exception p1

    :goto_8
    if-eqz v6, :cond_8

    .line 147
    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/Response;->close()V

    :cond_8
    throw p1
.end method

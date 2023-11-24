.class public Lcom/netease/cloud/nos/android/http/HttpGetTask;
.super Ljava/lang/Object;
.source "HttpGetTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field protected final callback:Lcom/netease/cloud/nos/android/core/RequestCallback;

.field protected final ctx:Landroid/content/Context;

.field protected volatile getRequest:Lorg/apache/http/client/methods/HttpGet;

.field protected final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/netease/cloud/nos/android/http/HttpGetTask;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/netease/cloud/nos/android/core/RequestCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/cloud/nos/android/core/RequestCallback;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->url:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->ctx:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->map:Ljava/util/Map;

    .line 32
    iput-object p4, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/android/core/RequestCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/cloud/nos/android/utils/Util;->newGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 41
    iget-object v1, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->map:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->map:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/Util;->setHeader(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpGet;

    iput-object v1, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/cloud/nos/android/utils/Util;->getLbsHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 46
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 47
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 48
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 49
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 50
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xc8

    if-ne v1, v5, :cond_1

    .line 52
    sget-object v5, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http get response is correct, response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v5, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_1
    sget-object v3, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    const-string v5, "http get response is failed."

    invoke-static {v3, v5}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    iget-object v3, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/android/core/RequestCallback;

    new-instance v5, Lcom/netease/cloud/nos/android/http/HttpResult;

    invoke-direct {v5, v1, v4, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    invoke-interface {v3, v5}, Lcom/netease/cloud/nos/android/core/RequestCallback;->onResult(Lcom/netease/cloud/nos/android/http/HttpResult;)V

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/android/core/RequestCallback;

    new-instance v3, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v4, 0x383

    .line 60
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v3, v4, v5, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 59
    invoke-interface {v1, v3}, Lcom/netease/cloud/nos/android/core/RequestCallback;->onResult(Lcom/netease/cloud/nos/android/http/HttpResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v2, :cond_4

    .line 69
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v2, v0

    .line 63
    :goto_2
    :try_start_3
    sget-object v3, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    const-string v4, "http get task exception"

    invoke-static {v3, v4, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    iget-object v3, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/android/core/RequestCallback;

    new-instance v4, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v5, 0x31f

    .line 65
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v4, v5, v6, v1}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 64
    invoke-interface {v3, v4}, Lcom/netease/cloud/nos/android/core/RequestCallback;->onResult(Lcom/netease/cloud/nos/android/http/HttpResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    .line 69
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 71
    :goto_3
    sget-object v2, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    const-string v3, "Consume Content exception"

    invoke-static {v2, v3, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_4
    :goto_4
    iput-object v0, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    return-void

    :catchall_1
    move-exception v1

    :goto_5
    if-eqz v2, :cond_5

    .line 69
    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v2

    .line 71
    sget-object v3, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    const-string v4, "Consume Content exception"

    invoke-static {v3, v4, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_5
    :goto_6
    iput-object v0, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 76
    throw v1
.end method

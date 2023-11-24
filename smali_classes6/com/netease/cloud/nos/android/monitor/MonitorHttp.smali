.class public Lcom/netease/cloud/nos/android/monitor/MonitorHttp;
.super Ljava/lang/Object;
.source "MonitorHttp.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 25
    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->getMonitorUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->newPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p1

    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    .line 26
    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/netease/cloud/nos/android/monitor/Monitor;->get()Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/netease/cloud/nos/android/monitor/Monitor;->getPostData(Ljava/util/List;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 30
    sget-object p0, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string p1, "post data is null"

    invoke-static {p0, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 33
    :cond_0
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/netease/cloud/nos/android/utils/Util;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 36
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 37
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 38
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    .line 39
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_1

    .line 41
    sget-object p0, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "http post response is correct, response: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_1
    sget-object v3, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http post response is failed, status code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {v3, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 49
    sget-object p0, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "http post response is failed, result: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 64
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    if-eqz v1, :cond_6

    .line 68
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 70
    sget-object p1, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string v0, "bos close exception"

    invoke-static {p1, v0, p0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 60
    :try_start_2
    sget-object p1, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string v2, "post monitor data failed with io exception"

    invoke-static {p1, v2, p0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 64
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    if-eqz v1, :cond_6

    .line 68
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 56
    :try_start_4
    sget-object p1, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string v2, "post monitor data failed with client protocol exception"

    invoke-static {p1, v2, p0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_5

    .line 64
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    if-eqz v1, :cond_6

    .line 68
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_6
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_7

    .line 64
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    if-eqz v1, :cond_8

    .line 68
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 70
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string v1, "bos close exception"

    invoke-static {v0, v1, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_8
    :goto_3
    throw p0
.end method

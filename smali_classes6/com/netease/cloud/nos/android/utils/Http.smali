.class public Lcom/netease/cloud/nos/android/utils/Http;
.super Ljava/lang/Object;
.source "Http.java"


# static fields
.field private static httpClient:Lorg/apache/http/client/HttpClient;

.field private static lbsHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildHttpClient(Landroid/content/Context;II)Lorg/apache/http/client/HttpClient;
    .locals 5

    .line 54
    new-instance p0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v0, 0xa

    .line 55
    invoke-static {p0, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 57
    invoke-static {p0, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 58
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {p0, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 60
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 61
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    .line 62
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 61
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 67
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    .line 68
    invoke-static {}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 67
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 70
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, p0, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 73
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 75
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p0

    const-string v1, "http.socket.timeout"

    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 75
    invoke-interface {p0, v1, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 77
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p0

    const-string p2, "http.connection.timeout"

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 77
    invoke-interface {p0, p2, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public static getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 2

    .line 28
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/android/utils/Http;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_1

    .line 34
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getConnectionTimeout()I

    move-result v0

    .line 35
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getSoTimeout()I

    move-result v1

    .line 33
    invoke-static {p0, v0, v1}, Lcom/netease/cloud/nos/android/utils/Http;->buildHttpClient(Landroid/content/Context;II)Lorg/apache/http/client/HttpClient;

    move-result-object p0

    sput-object p0, Lcom/netease/cloud/nos/android/utils/Http;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 37
    :cond_1
    sget-object p0, Lcom/netease/cloud/nos/android/utils/Http;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object p0
.end method

.method public static getLbsHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 2

    .line 41
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/android/utils/Http;->lbsHttpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getLbsConnectionTimeout()I

    move-result v0

    .line 48
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getLbsSoTimeout()I

    move-result v1

    .line 46
    invoke-static {p0, v0, v1}, Lcom/netease/cloud/nos/android/utils/Http;->buildHttpClient(Landroid/content/Context;II)Lorg/apache/http/client/HttpClient;

    move-result-object p0

    sput-object p0, Lcom/netease/cloud/nos/android/utils/Http;->lbsHttpClient:Lorg/apache/http/client/HttpClient;

    .line 50
    :cond_1
    sget-object p0, Lcom/netease/cloud/nos/android/utils/Http;->lbsHttpClient:Lorg/apache/http/client/HttpClient;

    return-object p0
.end method

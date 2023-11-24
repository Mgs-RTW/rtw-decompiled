.class public Lcom/netease/cloud/nos/android/core/IOManager;
.super Ljava/lang/Object;
.source "IOManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/netease/cloud/nos/android/core/IOManager;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method private static executeQueryTask(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netease/cloud/nos/android/http/HttpResult;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 60
    new-array v0, v0, [Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 61
    invoke-static {}, Lcom/netease/cloud/nos/android/utils/Util;->acquireLock()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 63
    new-instance v2, Lcom/netease/cloud/nos/android/http/HttpGetTask;

    .line 64
    new-instance v3, Lcom/netease/cloud/nos/android/core/IOManager$1;

    invoke-direct {v3, v0, v1}, Lcom/netease/cloud/nos/android/core/IOManager$1;-><init>([Lcom/netease/cloud/nos/android/http/HttpResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 63
    invoke-direct {v2, p0, p1, p2, v3}, Lcom/netease/cloud/nos/android/http/HttpGetTask;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/netease/cloud/nos/android/core/RequestCallback;)V

    .line 77
    invoke-static {}, Lcom/netease/cloud/nos/android/utils/Util;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    .line 78
    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 79
    invoke-static {v1}, Lcom/netease/cloud/nos/android/utils/Util;->setLock(Ljava/util/concurrent/CountDownLatch;)V

    const/4 p0, 0x0

    .line 80
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getLBSAddress(Landroid/content/Context;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 9

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getLbsHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getLbsIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "netease_pomelo_nos_lbs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/cloud/nos/android/utils/Util;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_0
    sget-object p2, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get lbs address with multiple urls: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, ";"

    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 34
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-lt v1, v0, :cond_2

    if-nez v3, :cond_1

    .line 52
    new-instance v3, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 p0, 0x190

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v3, p0, p1, v2}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    :cond_1
    return-object v3

    .line 34
    :cond_2
    aget-object v3, p2, v1

    .line 35
    sget-object v4, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get lbs address with url: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v3, p1}, Lcom/netease/cloud/nos/android/utils/Util;->buildLBSUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-static {v4, p0, v2}, Lcom/netease/cloud/nos/android/core/IOManager;->executeQueryTask(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 39
    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v4

    .line 40
    sget-object v5, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "LBS address result: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0, p1, v4}, Lcom/netease/cloud/nos/android/utils/Util;->setLBSData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v5

    if-ne v5, v6, :cond_3

    return-object v4

    .line 46
    :cond_3
    sget-object v5, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed to query LBS url "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " result: "

    .line 47
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg: "

    .line 48
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v5, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    move-object v3, v4

    goto/16 :goto_0
.end method

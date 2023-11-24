.class public Lcom/netease/cloud/nos/android/monitor/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# static fields
.field private static LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/cloud/nos/android/monitor/StatisticItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String;

.field private static final maxListNum:I = 0x1f4

.field private static prompt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/netease/cloud/nos/android/monitor/Monitor;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->prompt:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V
    .locals 2

    .line 69
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->isMonitorThreadEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v1, "monitor add item for thread"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {p1}, Lcom/netease/cloud/nos/android/monitor/Monitor;->set(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    sget-object p1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v0, "send monitor data immediately"

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p1, Lcom/netease/cloud/nos/android/monitor/MonitorTask;

    invoke-direct {p1, p0}, Lcom/netease/cloud/nos/android/monitor/MonitorTask;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance p0, Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void

    .line 79
    :cond_1
    invoke-static {p0, p1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->sendStatItem(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V

    return-void
.end method

.method public static declared-synchronized clean()V
    .locals 2

    const-class v0, Lcom/netease/cloud/nos/android/monitor/Monitor;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 63
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/cloud/nos/android/monitor/StatisticItem;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/netease/cloud/nos/android/monitor/Monitor;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    const/4 v2, 0x0

    .line 102
    sput-object v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    const/4 v2, 0x0

    .line 103
    sput-boolean v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->prompt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 100
    monitor-exit v0

    throw v1
.end method

.method public static getPostData(Ljava/util/List;)Ljava/io/ByteArrayOutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/cloud/nos/android/monitor/StatisticItem;",
            ">;)",
            "Ljava/io/ByteArrayOutputStream;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 34
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 41
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "items"

    .line 42
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "monitor result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 45
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 46
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    .line 38
    :cond_1
    :try_start_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .line 39
    invoke-static {v3}, Lcom/netease/cloud/nos/android/monitor/Monitor;->toJSON(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 50
    :goto_1
    :try_start_4
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v3, "get post data json exception"

    invoke-static {v2, v3, p0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_2

    .line 54
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_3
    move-exception p0

    .line 48
    :goto_2
    :try_start_6
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v3, "get post data io exception"

    invoke-static {v2, v3, p0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_2

    .line 54
    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 56
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v2, "gos close exception"

    invoke-static {v0, v2, p0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    return-object v1

    :goto_4
    if-eqz v2, :cond_3

    .line 54
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 56
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v2, "gos close exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :cond_3
    :goto_5
    throw p0

    :cond_4
    :goto_6
    return-object v0
.end method

.method public static declared-synchronized set(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Z
    .locals 4

    const-class v0, Lcom/netease/cloud/nos/android/monitor/Monitor;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    .line 87
    :cond_0
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object p0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v1, 0x1f4

    if-lt p0, v1, :cond_1

    sget-boolean p0, Lcom/netease/cloud/nos/android/monitor/Monitor;->prompt:Z

    if-nez p0, :cond_1

    .line 91
    sget-object p0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "monitor item num "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " >= "

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {p0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 93
    sput-boolean p0, Lcom/netease/cloud/nos/android/monitor/Monitor;->prompt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 97
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v0

    throw p0
.end method

.method private static toJSON(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Lorg/json/JSONObject;
    .locals 6

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "a"

    .line 110
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getClientIP()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getClientIP()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "b"

    .line 112
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getClientIP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/cloud/nos/android/utils/Util;->ipToLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "c"

    .line 114
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsIP()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsIP()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "d"

    .line 116
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsIP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/cloud/nos/android/utils/Util;->getIPString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/cloud/nos/android/utils/Util;->ipToLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "e"

    .line 118
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderIP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/cloud/nos/android/utils/Util;->getIPString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/cloud/nos/android/utils/Util;->ipToLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "f"

    .line 119
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "g"

    .line 120
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getNetEnv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsUseTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const-string v1, "h"

    .line 122
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsUseTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "i"

    .line 124
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderUseTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsSucc()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "j"

    .line 126
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsSucc()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderSucc()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "k"

    .line 129
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderSucc()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsHttpCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_5

    const-string v1, "l"

    .line 132
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsHttpCode()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    :cond_5
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderHttpCode()I

    move-result v1

    if-eq v1, v2, :cond_6

    const-string v1, "m"

    .line 135
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderHttpCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    :cond_6
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploadRetryCount()I

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "n"

    .line 138
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploadRetryCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    :cond_7
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getChunkRetryCount()I

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "o"

    .line 141
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getChunkRetryCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    :cond_8
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getQueryRetryCount()I

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "p"

    .line 144
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getQueryRetryCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    :cond_9
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getBucketName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "q"

    .line 147
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_a
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploadType()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_b

    const-string v1, "r"

    .line 150
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploadType()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v2, "parse statistic item json exception"

    invoke-static {v1, v2, p0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_0
    return-object v0
.end method

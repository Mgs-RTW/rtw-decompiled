.class final Lcom/appsflyer/AppsFlyerLibCore$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/Foreground$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AppsFlyerLibCore;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic $$a:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

.field private synthetic $$b:Lcom/appsflyer/AppsFlyerLibCore;

.field private synthetic values:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->values:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$a:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBecameBackground(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x3e8

    .line 972
    const-string v2, "onBecameBackground"

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 973
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/appsflyer/AppsFlyerLibCore;->$$a(Lcom/appsflyer/AppsFlyerLibCore;J)J

    .line 974
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLibCore;->getDataFormatter(Lcom/appsflyer/AppsFlyerLibCore;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLibCore;->$$b(Lcom/appsflyer/AppsFlyerLibCore;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 976
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    cmp-long v4, v2, v0

    if-gez v4, :cond_3

    .line 979
    :goto_0
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v2, p1}, Lcom/appsflyer/AppsFlyerLibCore;->eventDataCollector(Landroid/content/Context;)Lcom/appsflyer/internal/EventDataCollector;

    move-result-object v2

    const-string v3, "prev_session_dur"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 980
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/appsflyer/internal/EventDataCollector;->set(Ljava/lang/String;J)V

    .line 982
    const-string v0, "callStatsBackground background call"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->$$b(Ljava/lang/ref/WeakReference;)V

    .line 984
    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v0

    .line 985
    invoke-virtual {v0}, Lcom/appsflyer/internal/ac;->collectIntentsFromActivities()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 986
    invoke-virtual {v0}, Lcom/appsflyer/internal/ac;->$$a()V

    .line 987
    if-eqz p1, :cond_0

    .line 988
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 990
    invoke-static {v1, v2}, Lcom/appsflyer/internal/ac;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 992
    :cond_0
    invoke-virtual {v0}, Lcom/appsflyer/internal/ac;->values()V

    .line 996
    :goto_1
    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    .line 2092
    :try_start_0
    iget-object v1, v0, Lcom/appsflyer/AFExecutor;->values:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1}, Lcom/appsflyer/AFExecutor;->$$b(Ljava/util/concurrent/ExecutorService;)V

    .line 2094
    iget-object v1, v0, Lcom/appsflyer/AFExecutor;->$$b:Ljava/util/concurrent/Executor;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    .line 2095
    iget-object v0, v0, Lcom/appsflyer/AFExecutor;->$$b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lcom/appsflyer/AFExecutor;->$$b(Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :cond_1
    :goto_2
    invoke-static {p1}, Lcom/appsflyer/AFSensorManager;->$$b(Landroid/content/Context;)Lcom/appsflyer/AFSensorManager;

    move-result-object v0

    .line 2183
    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->$$a:Landroid/os/Handler;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->dateFormatUTC:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 998
    return-void

    .line 994
    :cond_2
    const-string v0, "RD status is OFF"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 2097
    :catch_0
    move-exception v0

    .line 2098
    const-string v1, "failed to stop Executors"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method public final onBecameForeground(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 948
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/appsflyer/AppsFlyerLibCore;->AFDateFormat(Lcom/appsflyer/AppsFlyerLibCore;J)J

    .line 949
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLibCore;->eventDataCollector(Landroid/content/Context;)Lcom/appsflyer/internal/EventDataCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/EventDataCollector;->foreground()V

    .line 950
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->AFDateFormat(Lcom/appsflyer/AppsFlyerLibCore;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v0

    if-nez v0, :cond_0

    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->collectIntentsFromActivities(Lcom/appsflyer/AppsFlyerLibCore;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "init_to_fg"

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLibCore;->$$b(Lcom/appsflyer/AppsFlyerLibCore;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v4, v4, Lcom/appsflyer/AppsFlyerLibCore;->eventDataCollector:Lcom/appsflyer/internal/EventDataCollector;

    const-string v5, "init_ts"

    invoke-virtual {v4, v5}, Lcom/appsflyer/internal/EventDataCollector;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :cond_0
    :goto_0
    const-string v0, "onBecameForeground"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 959
    invoke-static {p1}, Lcom/appsflyer/AFSensorManager;->$$b(Landroid/content/Context;)Lcom/appsflyer/AFSensorManager;

    move-result-object v0

    .line 1150
    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->$$a:Landroid/os/Handler;

    iget-object v2, v0, Lcom/appsflyer/AFSensorManager;->dateFormatUTC:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1152
    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->$$a:Landroid/os/Handler;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->values:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 961
    :cond_1
    new-instance v0, Lcom/appsflyer/internal/model/event/Launch;

    invoke-direct {v0}, Lcom/appsflyer/internal/model/event/Launch;-><init>()V

    .line 962
    invoke-static {}, Lcom/appsflyer/AFDeepLinkManager;->getInstance()Lcom/appsflyer/AFDeepLinkManager;

    move-result-object v1

    .line 964
    invoke-virtual {v0}, Lcom/appsflyer/AFEvent;->params()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v3, v3, Lcom/appsflyer/AppsFlyerLibCore;->eventDataCollector:Lcom/appsflyer/internal/EventDataCollector;

    .line 2063
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2064
    const-string v5, "ddl_sent"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2065
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v6

    invoke-virtual {v6, v4, v7}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v4

    .line 2066
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v1, v6, p1, v2}, Lcom/appsflyer/AFDeepLinkManager;->$$b(Landroid/content/Intent;Landroid/content/Context;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, v1, Lcom/appsflyer/AFDeepLinkManager;->deepLinkListener:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    .line 2070
    new-instance v1, Lcom/appsflyer/deeplink/DdlEvent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/appsflyer/deeplink/DdlEvent;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/EventDataCollector;)V

    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DdlEvent;->start()V

    .line 966
    :cond_2
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v0, p1}, Lcom/appsflyer/AFEvent;->context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->values:Ljava/lang/String;

    .line 967
    invoke-virtual {v0, v2}, Lcom/appsflyer/AFEvent;->key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$a:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 968
    invoke-virtual {v0, v2}, Lcom/appsflyer/AFEvent;->requestListener(Lcom/appsflyer/attribution/AppsFlyerRequestListener;)Lcom/appsflyer/AFEvent;

    move-result-object v0

    .line 966
    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/AppsFlyerLibCore;->$$a(Lcom/appsflyer/AFEvent;Landroid/app/Activity;)V

    .line 969
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

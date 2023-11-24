.class public Lcom/netease/cloud/nos/android/core/WanAccelerator;
.super Ljava/lang/Object;
.source "WanAccelerator.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static conf:Lcom/netease/cloud/nos/android/core/AcceleratorConf;

.field private static isInit:Z

.field protected static isOpened:Z

.field public static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static monitorTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/netease/cloud/nos/android/core/WanAccelerator;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 23
    sput-object v0, Lcom/netease/cloud/nos/android/core/WanAccelerator;->LOGTAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/android/core/WanAccelerator;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;
    .locals 1

    .line 100
    sget-object v0, Lcom/netease/cloud/nos/android/core/WanAccelerator;->conf:Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    invoke-direct {v0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/android/core/WanAccelerator;->conf:Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    .line 103
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/android/core/WanAccelerator;->conf:Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    return-object v0
.end method

.method private static initScheduler(Landroid/content/Context;)V
    .locals 9

    .line 35
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->isMonitorThreadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/netease/cloud/nos/android/core/WanAccelerator;->LOGTAG:Ljava/lang/String;

    const-string v1, "init monitor timer"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/android/core/WanAccelerator;->monitorTimer:Ljava/util/Timer;

    .line 38
    new-instance v2, Lcom/netease/cloud/nos/android/monitor/MonitorTask;

    invoke-direct {v2, p0}, Lcom/netease/cloud/nos/android/monitor/MonitorTask;-><init>(Landroid/content/Context;)V

    .line 39
    sget-object v1, Lcom/netease/cloud/nos/android/core/WanAccelerator;->monitorTimer:Ljava/util/Timer;

    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getMonitorInterval()J

    move-result-wide v3

    .line 40
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getMonitorInterval()J

    move-result-wide v5

    .line 39
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/android/core/WanAccelerator;->LOGTAG:Ljava/lang/String;

    const-string v1, "init scheduler"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/cloud/nos/android/service/MonitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    const-string v0, "alarm"

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/AlarmManager;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    .line 46
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getMonitorInterval()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method private static put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/Callback;ZLcom/netease/cloud/nos/android/core/WanNOSObject;)Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;
    .locals 12

    .line 73
    sget-boolean v0, Lcom/netease/cloud/nos/android/core/WanAccelerator;->isInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 74
    sput-boolean v0, Lcom/netease/cloud/nos/android/core/WanAccelerator;->isInit:Z

    .line 75
    invoke-static {p0}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->initScheduler(Landroid/content/Context;)V

    .line 78
    :cond_0
    :try_start_0
    new-instance v0, Lcom/netease/cloud/nos/android/core/UploadTask;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/netease/cloud/nos/android/core/UploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/Callback;ZLcom/netease/cloud/nos/android/core/WanNOSObject;)V

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 83
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/core/UploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 85
    :cond_1
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/netease/cloud/nos/android/core/UploadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    :goto_0
    new-instance v1, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;

    invoke-direct {v1, v0}, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;-><init>(Lcom/netease/cloud/nos/android/core/UploadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 89
    new-instance v0, Lcom/netease/cloud/nos/android/core/CallRet;

    const/16 v5, 0x3e7

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 90
    invoke-direct/range {v2 .. v9}, Lcom/netease/cloud/nos/android/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v1, p7

    .line 89
    invoke-interface {v1, v0}, Lcom/netease/cloud/nos/android/core/Callback;->onFailure(Lcom/netease/cloud/nos/android/core/CallRet;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static putFileByHttp(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/WanNOSObject;Lcom/netease/cloud/nos/android/core/Callback;)Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1, p2, p4, p5}, Lcom/netease/cloud/nos/android/utils/Util;->checkParameters(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;Lcom/netease/cloud/nos/android/core/WanNOSObject;Lcom/netease/cloud/nos/android/core/Callback;)V

    .line 55
    invoke-virtual {p4}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getNosBucketName()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p4}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getNosObjectName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v9, p4

    .line 55
    invoke-static/range {v0 .. v9}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/Callback;ZLcom/netease/cloud/nos/android/core/WanNOSObject;)Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static putFileByHttps(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/WanNOSObject;Lcom/netease/cloud/nos/android/core/Callback;)Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    .line 63
    invoke-static {p0, p1, p2, p4, p5}, Lcom/netease/cloud/nos/android/utils/Util;->checkParameters(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;Lcom/netease/cloud/nos/android/core/WanNOSObject;Lcom/netease/cloud/nos/android/core/Callback;)V

    .line 64
    invoke-virtual {p4}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getNosBucketName()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p4}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getNosObjectName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v9, p4

    .line 64
    invoke-static/range {v0 .. v9}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/Callback;ZLcom/netease/cloud/nos/android/core/WanNOSObject;)Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static setConf(Lcom/netease/cloud/nos/android/core/AcceleratorConf;)V
    .locals 0

    .line 96
    sput-object p0, Lcom/netease/cloud/nos/android/core/WanAccelerator;->conf:Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    return-void
.end method

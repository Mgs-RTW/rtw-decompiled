.class public Lcom/netease/environment/EnvManager;
.super Ljava/lang/Object;
.source "EnvManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EnvManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLog(Z)V
    .locals 3

    .line 81
    invoke-static {p0}, Lcom/netease/environment/utils/LogUtils;->enableLog(Z)V

    .line 82
    sget-object v0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable log : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getRegularVersion()Ljava/lang/String;
    .locals 3

    .line 305
    :try_start_0
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NULL"

    return-object v0

    .line 308
    :cond_0
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getGameId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/netease/environment/config/SdkConfig;->getRegexFileUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "."

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    if-ltz v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 313
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const-string v0, "regular_encode_default_1589281200_fb55f7e420e1a72669b8fd9344941c34"

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.1.0"

    return-object v0
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    sget-object v2, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v3, "int SDK"

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v2, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK Version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/environment/EnvManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {p0}, Lcom/netease/environment/config/SdkData;->setContext(Landroid/content/Context;)V

    .line 52
    invoke-static {p1}, Lcom/netease/environment/config/SdkData;->setGameId(Ljava/lang/String;)V

    .line 53
    invoke-static {p2}, Lcom/netease/environment/config/SdkData;->setRC4Key(Ljava/lang/String;)V

    .line 54
    invoke-static {p3}, Lcom/netease/environment/config/SdkData;->setHost(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/environment/model/RegexGetter;->setPatternMap(Landroid/content/Context;)V

    .line 57
    sget-object p0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "current regularVersion : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/environment/EnvManager;->getRegularVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 59
    sget-object p2, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init SDK local PatternMap cost time: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "init"

    .line 60
    invoke-static {p2, p0, p1}, Lcom/netease/environment/config/LogConfig;->saveTimeLog(Ljava/lang/String;J)V

    .line 63
    new-instance p0, Lcom/netease/environment/task/InitialTask;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/environment/task/InitialTask;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/environment/task/InitialTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 44
    :cond_2
    :goto_0
    sget-object p0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string p1, "parameter is empty"

    invoke-static {p0, p1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_3
    :goto_1
    sget-object p0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string p1, "parameter is null"

    invoke-static {p0, p1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initSDKWithTestEnable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 72
    invoke-static {p4}, Lcom/netease/environment/config/SdkData;->setIfTest(Z)V

    .line 73
    invoke-static {p0, p1, p2, p3}, Lcom/netease/environment/EnvManager;->initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static reviewNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    sget-object v2, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "review nickname : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x64

    if-nez v2, :cond_0

    .line 96
    sget-object p0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v0, "context is null"

    invoke-static {p0, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "context is null"

    const-string v0, "-1"

    const-string v1, "N_1"

    .line 97
    invoke-static {v3, p0, v0, v1}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_3

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_b

    .line 108
    :cond_1
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/netease/environment/config/SdkConfig;->isEnable(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    sget-object p0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v0, "sdk is disable"

    invoke-static {p0, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xc8

    const-string v0, "pass"

    const-string v1, "-1"

    const-string v2, "N_3"

    .line 110
    invoke-static {p0, v0, v1, v2}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 116
    new-instance v5, Lcom/netease/environment/task/ReviewNicknameCallable;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/netease/environment/task/ReviewNicknameCallable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 118
    :try_start_0
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-static {v5, v6, v7}, Lcom/netease/environment/config/SdkConfig;->getTaskTimeout(Landroid/content/Context;J)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 119
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :goto_0
    sget-object p0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v2, "shut down executor"

    invoke-static {p0, v2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v5

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catch_1
    move-exception v5

    .line 144
    :try_start_2
    invoke-interface {p0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 146
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string p0, "exception"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object p0, v4

    goto :goto_2

    :catch_3
    move-exception v4

    .line 152
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string v4, "-1"

    const-string v6, "N_6"

    .line 154
    invoke-static {v3, p0, v4, v6}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 155
    sget-object v3, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    :try_start_6
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception v2

    goto :goto_6

    :catch_5
    move-exception v5

    .line 130
    :try_start_7
    invoke-interface {p0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_6
    move-exception p0

    .line 132
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string p0, "exception"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 136
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object p0, v4

    goto :goto_4

    :catch_7
    move-exception v4

    .line 138
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const-string v4, "-1"

    const-string v6, "N_5"

    .line 140
    invoke-static {v3, p0, v4, v6}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 141
    sget-object v3, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 158
    :try_start_b
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_7

    :catch_8
    move-exception v2

    goto :goto_6

    :catch_9
    move-exception v5

    .line 122
    :try_start_c
    invoke-interface {p0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :catch_a
    move-exception p0

    .line 124
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    const-string p0, "time out"

    const-string v4, "-1"

    const-string v6, "N_4"

    .line 126
    invoke-static {v3, p0, v4, v6}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    sget-object v3, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 158
    :try_start_e
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_7

    :catch_b
    move-exception v2

    .line 160
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :goto_7
    sget-object v2, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v3, "shut down executor"

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_8
    sget-object v2, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "review nickname result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 166
    sget-object v0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "it costs "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms to review nickname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 158
    :goto_9
    :try_start_f
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_a

    :catch_c
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :goto_a
    sget-object v0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v1, "shut down executor"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    throw p0

    .line 102
    :cond_3
    :goto_b
    sget-object p0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v0, "parameter is null or empty"

    invoke-static {p0, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param is null or empty"

    const-string v0, "-1"

    const-string v1, "N_2"

    .line 103
    invoke-static {v3, p0, v0, v1}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reviewNicknameV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 241
    sget-object v2, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "review nickname V2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {p0}, Lcom/netease/environment/model/ContentFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-static {p0}, Lcom/netease/environment/EnvManager;->reviewNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 245
    sget-object v0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "it costs "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms to review nickname(v2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static reviewWords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 179
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/netease/environment/task/ReviewCallable;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p0, p1}, Lcom/netease/environment/task/ReviewCallable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const/16 p1, 0x64

    const/4 p2, 0x1

    .line 182
    :try_start_0
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/netease/environment/config/SdkConfig;->getTaskTimeout(Landroid/content/Context;J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    :goto_0
    sget-object p0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string p1, "shut down executor"

    invoke-static {p0, p1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catch_1
    move-exception v1

    .line 208
    :try_start_2
    invoke-interface {p0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 210
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string p0, "exception"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object p0, p2

    goto :goto_2

    :catch_3
    move-exception p2

    .line 216
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string p2, "-1"

    const-string v2, "V_6"

    .line 218
    invoke-static {p1, p0, p2, v2}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 219
    sget-object p1, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    :try_start_6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    goto :goto_6

    :catch_5
    move-exception v1

    .line 194
    :try_start_7
    invoke-interface {p0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_6
    move-exception p0

    .line 196
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string p0, "exception"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 200
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object p0, p2

    goto :goto_4

    :catch_7
    move-exception p2

    .line 202
    :try_start_a
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const-string p2, "-1"

    const-string v2, "V_5"

    .line 204
    invoke-static {p1, p0, p2, v2}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 205
    sget-object p1, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 222
    :try_start_b
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_7

    :catch_8
    move-exception p1

    goto :goto_6

    :catch_9
    move-exception v1

    .line 186
    :try_start_c
    invoke-interface {p0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :catch_a
    move-exception p0

    .line 188
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    const-string p0, "time out"

    const-string p2, "-1"

    const-string v2, "V_4"

    .line 190
    invoke-static {p1, p0, p2, v2}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 191
    sget-object p1, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 222
    :try_start_e
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_7

    :catch_b
    move-exception p1

    .line 224
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    :goto_7
    sget-object p1, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string p2, "shut down executor"

    invoke-static {p1, p2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_8
    sget-object p1, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reviews words result : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 222
    :goto_9
    :try_start_f
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_a

    :catch_c
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    :goto_a
    sget-object p1, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string p2, "shut down executor"

    invoke-static {p1, p2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    throw p0
.end method

.method public static reviewWordsV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 260
    sget-object v2, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "review words V2 : level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "channel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x64

    if-nez v2, :cond_0

    .line 265
    sget-object p0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "context is null"

    const-string p1, "-1"

    const-string p2, "V_1"

    .line 266
    invoke-static {v3, p0, p1, p2}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_3

    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netease/environment/config/SdkConfig;->isEnable(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    sget-object p0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string p1, "sdk is disable"

    invoke-static {p0, p1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xc8

    const-string p1, "pass"

    const-string p2, "-1"

    const-string v0, "V_3"

    .line 280
    invoke-static {p0, p1, p2, v0}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/netease/environment/EnvManager;->reviewWords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 287
    sget-object v0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it costs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms to review words(v2)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 272
    :cond_3
    :goto_0
    sget-object p0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string p1, "parameter is null or empty"

    invoke-static {p0, p1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param is null or empty"

    const-string p1, "-1"

    const-string p2, "V_2"

    .line 273
    invoke-static {v3, p0, p1, p2}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

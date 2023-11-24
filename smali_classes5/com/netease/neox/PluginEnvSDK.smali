.class public Lcom/netease/neox/PluginEnvSDK;
.super Lcom/netease/neox/PluginBase;
.source "PluginEnvSDK.java"


# static fields
.field private static final s_id:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_async_service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/netease/neox/PluginEnvSDK;->s_id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/netease/neox/PluginBase;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/netease/neox/PluginEnvSDK;->m_async_service:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static native NativeOnReviewNickName(ILjava/lang/String;)V
.end method

.method private static native NativeOnReviewWords(ILjava/lang/String;)V
.end method

.method static synthetic access$000(Lcom/netease/neox/PluginEnvSDK;)Landroid/app/Activity;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/netease/neox/PluginEnvSDK;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(ILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/netease/neox/PluginEnvSDK;->NativeOnReviewNickName(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(ILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/netease/neox/PluginEnvSDK;->NativeOnReviewWords(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enableLog(Z)V
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/netease/environment/EnvManager;->enableLog(Z)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "envsdk"

    return-object v0
.end method

.method public initSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/PluginEnvSDK;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/neox/PluginEnvSDK$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/neox/PluginEnvSDK$1;-><init>(Lcom/netease/neox/PluginEnvSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 48
    invoke-static {p1}, Lcom/netease/neox/NXLog;->logException(Ljava/lang/Exception;)V

    const-string p1, "invoke envInitSdk failed"

    .line 49
    invoke-static {p1}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 30
    iget-object p2, p0, Lcom/netease/neox/PluginEnvSDK;->m_async_service:Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_0

    .line 31
    iget-object p2, p0, Lcom/netease/neox/PluginEnvSDK;->m_async_service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/netease/neox/PluginEnvSDK;->m_async_service:Ljava/util/concurrent/ExecutorService;

    .line 34
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/neox/PluginEnvSDK;->m_async_service:Ljava/util/concurrent/ExecutorService;

    .line 35
    iput-object p1, p0, Lcom/netease/neox/PluginEnvSDK;->m_activity:Landroid/app/Activity;

    return-void
.end method

.method public reviewNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/netease/environment/EnvManager;->reviewNicknameV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public reviewNicknameAsync(Ljava/lang/String;)I
    .locals 3

    .line 67
    sget-object v0, Lcom/netease/neox/PluginEnvSDK;->s_id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/netease/neox/PluginEnvSDK;->m_async_service:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/netease/neox/PluginEnvSDK$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/netease/neox/PluginEnvSDK$2;-><init>(Lcom/netease/neox/PluginEnvSDK;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return v0
.end method

.method public reviewWords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-static {p1, p2, p3}, Lcom/netease/environment/EnvManager;->reviewWordsV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public reviewWordsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 79
    sget-object v0, Lcom/netease/neox/PluginEnvSDK;->s_id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 80
    iget-object v7, p0, Lcom/netease/neox/PluginEnvSDK;->m_async_service:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/netease/neox/PluginEnvSDK$3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/neox/PluginEnvSDK$3;-><init>(Lcom/netease/neox/PluginEnvSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return v0
.end method

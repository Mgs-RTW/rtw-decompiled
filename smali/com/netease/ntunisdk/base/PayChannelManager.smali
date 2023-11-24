.class public Lcom/netease/ntunisdk/base/PayChannelManager;
.super Ljava/lang/Object;
.source "PayChannelManager.java"


# instance fields
.field private a:Lcom/netease/ntunisdk/base/SdkBase;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->a:Lcom/netease/ntunisdk/base/SdkBase;

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/PayChannelManager;)V
    .locals 5

    .line 20
    iget-object v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "UNISDK_JF_GAS3_URL"

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "UniSDK PCM"

    const-string v0, "UNISDK_JF_GAS3_URL empty"

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "get_ff_channel?login_channel=%s&support_ff_channels=%s,allysdk"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "/get_ff_channel?login_channel=%s&support_ff_channels=%s,allysdk"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK PCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPayChannelFromJF url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v2

    const-string v3, "GET"

    iput-object v3, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    iput-object v1, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    new-instance v3, Lcom/netease/ntunisdk/base/PayChannelManager$2;

    invoke-direct {v3, p0, v0}, Lcom/netease/ntunisdk/base/PayChannelManager$2;-><init>(Lcom/netease/ntunisdk/base/PayChannelManager;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p0

    const-string v0, "JF_LOG_KEY"

    invoke-interface {p0, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v3, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v1, v4}, Lcom/netease/ntunisdk/base/utils/Crypto;->getSignSrc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/ntunisdk/base/utils/Crypto;->hmacSHA256Signature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "X-Client-Sign"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v1, "UniSDK PCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hmacSHA256Signature exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    goto :goto_3

    :cond_2
    const-string p0, "UniSDK PCM"

    const-string v0, "JF_CLIENT_KEY empty"

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string p0, "PAY"

    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "FF_CHANNEL_BY_GAME"

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "allysdk"

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/PayChannelManager;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/ntunisdk/base/PayChannelManager;)Z
    .locals 1

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->c:Z

    return v0
.end method


# virtual methods
.method public allyPayEnabled()Z
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/PayChannelManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->b:Z

    return v0
.end method

.method public initAsync()V
    .locals 2

    const-string v0, "UniSDK PCM"

    const-string v1, "initAsync"

    .line 36
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/base/PayChannelManager$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/PayChannelManager$1;-><init>(Lcom/netease/ntunisdk/base/PayChannelManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public payDisabled()Z
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/PayChannelManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->c:Z

    return v0
.end method

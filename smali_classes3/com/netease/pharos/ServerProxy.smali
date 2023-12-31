.class public Lcom/netease/pharos/ServerProxy;
.super Ljava/lang/Object;
.source "ServerProxy.java"


# static fields
.field private static final PRODUCTION_HOST:Ljava/lang/String; = "impression.update.netease.com"

.field private static final TEST_HOST:Ljava/lang/String; = "pharossdk.x.netease.com"

.field private static sInstance:Lcom/netease/pharos/ServerProxy;


# instance fields
.field private NET_AREA_URL:Ljava/lang/String;

.field private QOS_LIGHTEN_URL:Ljava/lang/String;

.field private REGION_CONFIG_URL:Ljava/lang/String;

.field private isTestMode:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/netease/pharos/ServerProxy;->isTestMode:Z

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/ServerProxy;
    .locals 2

    .line 21
    sget-object v0, Lcom/netease/pharos/ServerProxy;->sInstance:Lcom/netease/pharos/ServerProxy;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "impression.update.netease.com"

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/netease/pharos/ServerProxy;->sInstance:Lcom/netease/pharos/ServerProxy;

    if-nez v1, :cond_1

    .line 26
    new-instance v1, Lcom/netease/pharos/ServerProxy;

    invoke-direct {v1}, Lcom/netease/pharos/ServerProxy;-><init>()V

    sput-object v1, Lcom/netease/pharos/ServerProxy;->sInstance:Lcom/netease/pharos/ServerProxy;

    .line 28
    :cond_1
    sget-object v1, Lcom/netease/pharos/ServerProxy;->sInstance:Lcom/netease/pharos/ServerProxy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/netease/pharos/ServerProxy;->isTestMode:Z

    if-eqz v0, :cond_0

    const-string v0, "pharossdk.x.netease.com"

    goto :goto_0

    :cond_0
    const-string v0, "impression.update.netease.com"

    :goto_0
    return-object v0
.end method

.method public getNetAreaUrl()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/netease/pharos/ServerProxy;->NET_AREA_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Lcom/netease/pharos/ServerProxy;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pharos/v%s/%s.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/ServerProxy;->NET_AREA_URL:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getQosLightenUrl()Ljava/lang/String;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/netease/pharos/ServerProxy;->QOS_LIGHTEN_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Lcom/netease/pharos/ServerProxy;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/lighten/%s/%s.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/ServerProxy;->QOS_LIGHTEN_URL:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getRegionConfigUrl()Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/netease/pharos/ServerProxy;->REGION_CONFIG_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/netease/pharos/ServerProxy;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pharos/explore/%x_%s.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/ServerProxy;->REGION_CONFIG_URL:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public setTestMode(Z)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/netease/pharos/ServerProxy;->isTestMode:Z

    if-eq v0, p1, :cond_0

    .line 34
    iput-boolean p1, p0, Lcom/netease/pharos/ServerProxy;->isTestMode:Z

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/netease/pharos/ServerProxy;->REGION_CONFIG_URL:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/netease/pharos/ServerProxy;->QOS_LIGHTEN_URL:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/netease/pharos/ServerProxy;->NET_AREA_URL:Ljava/lang/String;

    :cond_0
    return-void
.end method

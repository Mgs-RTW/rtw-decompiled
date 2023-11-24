.class public Lcom/netease/androidcrashhandler/wifi4g/WifiCore;
.super Ljava/lang/Object;
.source "WifiCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiCore"

.field private static sWifiCore:Lcom/netease/androidcrashhandler/wifi4g/WifiCore;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/wifi4g/WifiCore;
    .locals 1

    .line 22
    sget-object v0, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->sWifiCore:Lcom/netease/androidcrashhandler/wifi4g/WifiCore;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->sWifiCore:Lcom/netease/androidcrashhandler/wifi4g/WifiCore;

    .line 26
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->sWifiCore:Lcom/netease/androidcrashhandler/wifi4g/WifiCore;

    return-object v0
.end method


# virtual methods
.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 47
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WifiCore"

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkStatus [getNetworkInfo]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isConnectNet()Z
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectedMobile()Z
    .locals 4

    .line 88
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "trace"

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiCore [isConnectedWifi] info.isConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", info.getType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectedWifi()Z
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "trace"

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiCore [isConnectedWifi] info.isConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", info.getType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

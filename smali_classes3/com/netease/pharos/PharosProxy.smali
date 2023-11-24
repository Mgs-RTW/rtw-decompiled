.class public Lcom/netease/pharos/PharosProxy;
.super Ljava/lang/Object;
.source "PharosProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PharosProxy"

.field private static mReceiver:Lcom/netease/pharos/network/ConnectionChangeReceiver;

.field private static sPharosProxy:Lcom/netease/pharos/PharosProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecision:I

.field private mEB:Z

.field private mHarborudp:Ljava/lang/String;

.field private mHasSet:Z

.field private mHasSetTestHost:Z

.field private mHighSpeedUrl:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIsDebug:Z

.field private mIsInit:Z

.field private mIsRegistered:Z

.field private mNetId:Ljava/lang/String;

.field private mOption:I

.field private mPharosListener:Lcom/netease/pharos/PharosListener;

.field private mPort:Ljava/lang/String;

.field private mPorts:Lorg/json/JSONArray;

.field private mProjectId:Ljava/lang/String;

.field private mQosExecDuration:I

.field private mQosExecIp:Ljava/lang/String;

.field private mQosIp:Ljava/lang/String;

.field private mQosIps:Lorg/json/JSONArray;

.field private mUdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mNetId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mEB:Z

    .line 53
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    .line 55
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mIp:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPort:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPorts:Lorg/json/JSONArray;

    .line 61
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mHighSpeedUrl:Ljava/lang/String;

    const/4 v2, 0x1

    .line 63
    iput v2, p0, Lcom/netease/pharos/PharosProxy;->mOption:I

    .line 65
    iput v1, p0, Lcom/netease/pharos/PharosProxy;->mDecision:I

    const-string v3, "false"

    .line 67
    iput-object v3, p0, Lcom/netease/pharos/PharosProxy;->mHarborudp:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mQosIp:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mQosIps:Lorg/json/JSONArray;

    .line 73
    iput-boolean v2, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    .line 75
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    .line 77
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mHasSetTestHost:Z

    .line 83
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mQosExecIp:Ljava/lang/String;

    .line 85
    iput v1, p0, Lcom/netease/pharos/PharosProxy;->mQosExecDuration:I

    .line 89
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mIsInit:Z

    .line 91
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mIsRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pharos/PharosProxy;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/netease/pharos/PharosProxy;->startAll()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/pharos/PharosProxy;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/netease/pharos/PharosProxy;->mHarborudp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/pharos/PharosProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mHarborudp:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/netease/pharos/PharosProxy;
    .locals 1

    .line 299
    sget-object v0, Lcom/netease/pharos/PharosProxy;->sPharosProxy:Lcom/netease/pharos/PharosProxy;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/netease/pharos/PharosProxy;

    invoke-direct {v0}, Lcom/netease/pharos/PharosProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/PharosProxy;->sPharosProxy:Lcom/netease/pharos/PharosProxy;

    .line 302
    :cond_0
    sget-object v0, Lcom/netease/pharos/PharosProxy;->sPharosProxy:Lcom/netease/pharos/PharosProxy;

    return-object v0
.end method

.method private startAll()V
    .locals 6

    .line 362
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->isStart()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PharosProxy"

    if-nez v0, :cond_0

    const-string v0, "\u7f51\u7edc\u76d1\u63a7----\u8bbe\u5907\u63a2\u6d4b"

    .line 363
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->init(Landroid/content/Context;)V

    .line 365
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->start()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 368
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u76d1\u63a7----\u8bbe\u5907\u63a2\u6d4b\uff0c\u7ed3\u679c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u76d1\u63a7----\u8bbe\u5907\u63a2\u6d4b\uff0c\u8fd4\u56de\u7801="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->getInstances()Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->isStart()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\u7f51\u7edc\u76d1\u63a7----\u533a\u57df\u51b3\u7b56"

    .line 373
    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->getInstances()Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->start()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 377
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7f51\u7edc\u76d1\u63a7----\u533a\u57df\u51b3\u7b56\uff0c\u7ed3\u679c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u76d1\u63a7----\u533a\u57df\u51b3\u7b56\uff0c\u8fd4\u56de\u7801="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    const-string v0, "\u7f51\u7edc\u76d1\u63a7----\u94fe\u8def\u63a2\u6d4b"

    .line 384
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Proxy;->start()V

    const-string v0, "\u7f51\u7edc\u76d1\u63a7----\u94fe\u8def\u63a2\u6d4b\uff0c\u7ed3\u675f"

    .line 386
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868"

    .line 390
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->init()V

    .line 392
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->start()V

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .line 790
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .line 778
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->clean()V

    .line 779
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->clean()V

    .line 780
    invoke-static {}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->getInstances()Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->clean()V

    .line 781
    invoke-static {}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->getInstance()Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->clean()V

    .line 782
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Proxy;->clean()V

    return-void
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getmDecision()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/netease/pharos/PharosProxy;->mDecision:I

    return v0
.end method

.method public getmHighSpeedUrl()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mHighSpeedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getmLinktestId()Ljava/lang/String;
    .locals 1

    .line 280
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Result;->getmLinktestId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getmNetId()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mNetId:Ljava/lang/String;

    return-object v0
.end method

.method public getmOption()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/netease/pharos/PharosProxy;->mOption:I

    return v0
.end method

.method public getmPharosListener()Lcom/netease/pharos/PharosListener;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    return-object v0
.end method

.method public getmPort()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getmPorts()Lorg/json/JSONArray;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPorts:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getmProjectId()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getmQosExecDuration()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/netease/pharos/PharosProxy;->mQosExecDuration:I

    return v0
.end method

.method public getmQosExecIp()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mQosExecIp:Ljava/lang/String;

    return-object v0
.end method

.method public getmQosIp()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mQosIp:Ljava/lang/String;

    return-object v0
.end method

.method public getmQosIps()Lorg/json/JSONArray;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mQosIps:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getmUdid()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PharosProxy [init] start projectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PharosProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PharosProxy [init] start mIsInit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/pharos/PharosProxy;->mIsInit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHasSet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDebug="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsInit:Z

    if-nez v0, :cond_3

    .line 311
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    .line 312
    iput-object p2, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    .line 313
    invoke-static {p1}, Lcom/netease/pharos/util/Util;->getUnisdkDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    .line 316
    invoke-virtual {p0, p1}, Lcom/netease/pharos/PharosProxy;->registerReceiver(Landroid/content/Context;)V

    .line 317
    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/pharos/network/NetworkStatus;->initialize(Landroid/content/Context;)V

    .line 318
    iget-boolean p2, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    if-nez p2, :cond_0

    .line 319
    invoke-static {p1}, Lcom/netease/pharos/util/Util;->isApkDebugable(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    .line 322
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pharos useTestMode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mHasSetTestHost:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Lcom/netease/pharos/ServerProxy;->getInstance()Lcom/netease/pharos/ServerProxy;

    move-result-object p2

    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mHasSetTestHost:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p2, v2}, Lcom/netease/pharos/ServerProxy;->setTestMode(Z)V

    .line 325
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pharos isDebug = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-boolean p2, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    invoke-static {p2}, Lcom/netease/pharos/util/LogUtil;->setIsShowLog(Z)V

    .line 327
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/pharos/PharosProxy;->mNetId:Ljava/lang/String;

    .line 329
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstances()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object p2

    const/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0}, Lcom/netease/pharos/util/LogFileProxy;->init(Landroid/content/Context;I)V

    .line 331
    iput-boolean v3, p0, Lcom/netease/pharos/PharosProxy;->mIsInit:Z

    :cond_3
    return-void
.end method

.method public isDebug()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    return v0
.end method

.method public isHasSetTestHost()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mHasSetTestHost:Z

    return v0
.end method

.method public ismEB()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mEB:Z

    return v0
.end method

.method public ismHarborudp()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mHarborudp:Ljava/lang/String;

    return-object v0
.end method

.method public ismHasSet()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    return v0
.end method

.method public pharosFunc(Lorg/json/JSONObject;)V
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/PharosProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/netease/pharos/PharosProxy$2;-><init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 532
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public pharosLoginInfoUpload(Lorg/json/JSONObject;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "version"

    const-string v2, "method"

    const-string v3, "netid"

    const-string v4, "udid"

    const-string v5, "os_name"

    const-string v6, "project"

    const-string v7, "PharosProxy"

    const-string v8, "PharosProxy [pharosLoginInfoUpload]"

    .line 703
    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-gtz v8, :cond_1

    :cond_0
    const-string v8, "PharosProxy [pharosLoginInfoUpload] params error"

    .line 706
    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v8

    .line 713
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "PharosProxy [pharosLoginInfoUpload] deviceInfo1 error"

    .line 714
    invoke-static {v7, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 718
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PharosProxy [pharosLoginInfoUpload] deviceInfoJson="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, ""

    if-eqz v8, :cond_3

    .line 726
    :try_start_1
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    move-object v8, v10

    .line 730
    :goto_0
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 731
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_4
    move-object v11, v10

    .line 735
    :goto_1
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 736
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_5
    move-object v12, v10

    .line 740
    :goto_2
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 741
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_6
    move-object v13, v10

    .line 745
    :goto_3
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 746
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_7
    move-object v14, v10

    .line 750
    :goto_4
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 751
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_8
    const-string v9, "login"

    const-string v15, "methodId"

    .line 756
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 757
    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    invoke-virtual {v0, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    invoke-virtual {v0, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    invoke-virtual {v0, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 763
    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    invoke-static {}, Lcom/netease/pharos/report/ReportProxy;->getInstance()Lcom/netease/pharos/report/ReportProxy;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/pharos/report/ReportProxy;->report(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PharosProxy [pharosLoginInfoUpload] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public pharosharbor()V
    .locals 1

    .line 575
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->init()V

    .line 576
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->start()V

    return-void
.end method

.method public pharospolicy()V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    const-string v1, "PharosProxy"

    if-nez v0, :cond_0

    const-string v0, "PharosProxy [pharosharbor] mPharosListener is null "

    .line 551
    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 555
    :cond_0
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Proxy;->getPharosResultInfo()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "PharosProxy [pharosharbor] call onPharosPolicy "

    .line 557
    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    invoke-virtual {v1, v0}, Lcom/netease/pharos/PharosListener;->onPharosPolicy(Lorg/json/JSONObject;)V

    return-void
.end method

.method public pharosqoscancel(Lorg/json/JSONArray;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 632
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    invoke-static {}, Lcom/netease/pharos/qos/Qos4GProxy;->getInstance()Lcom/netease/pharos/qos/Qos4GProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/pharos/qos/Qos4GProxy;->cancel(Lorg/json/JSONArray;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "PharosProxy"

    const-string v0, "PharosProxy [pharosqoscancel] \u53c2\u6570\u9519\u8bef"

    .line 633
    invoke-static {p1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pharosqosexec(Lorg/json/JSONArray;J)V
    .locals 4

    const-string v0, "PharosProxy"

    const-string v1, "PharosProxy [pharosqosexec]"

    .line 615
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 617
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ltz v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PharosProxy [pharosqosexec] ips="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", duratio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/netease/pharos/qos/Qos4GProxy;->getInstance()Lcom/netease/pharos/qos/Qos4GProxy;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    mul-long p2, p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/pharos/qos/Qos4GProxy;->pharosqosexec(Lorg/json/JSONArray;J)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "PharosProxy [pharosqosexec] \u53c2\u6570\u9519\u8bef"

    .line 618
    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pharosqosprobe()V
    .locals 1

    .line 583
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Proxy;->start()V

    return-void
.end method

.method public pharosqosstatus()V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    if-nez v0, :cond_0

    const-string v0, "PharosProxy"

    const-string v1, "PharosProxy [pharosqosstatus] mPharosListener is null"

    .line 683
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 687
    :cond_0
    invoke-static {}, Lcom/netease/pharos/qos/Qos4GProxy;->getInstance()Lcom/netease/pharos/qos/Qos4GProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/Qos4GProxy;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    invoke-virtual {v1, v0}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 690
    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    invoke-virtual {v1, v0}, Lcom/netease/pharos/PharosListener;->onPharosQos(Lorg/json/JSONObject;)V

    return-void
.end method

.method public pharosqosstatus(Lorg/json/JSONArray;)V
    .locals 3

    const-string v0, "PharosProxy"

    const-string v1, "PharosProxy [pharosqosstatus]"

    .line 652
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 654
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PharosProxy [pharosqosstatus] ips="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    if-nez v1, :cond_1

    const-string p1, "PharosProxy [pharosqosstatus] mPharosListener is null"

    .line 662
    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 666
    :cond_1
    invoke-static {}, Lcom/netease/pharos/qos/Qos4GProxy;->getInstance()Lcom/netease/pharos/qos/Qos4GProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/pharos/qos/Qos4GProxy;->getResult(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    .line 668
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    invoke-virtual {v0, p1}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 669
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    invoke-virtual {v0, p1}, Lcom/netease/pharos/PharosListener;->onPharosQos(Lorg/json/JSONObject;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "PharosProxy [pharosqosstatus] \u53c2\u6570\u9519\u8bef"

    .line 655
    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 3

    const-string v0, "PharosProxy"

    const-string v1, "\u6ce8\u518c\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668 start"

    .line 99
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mIsRegistered:Z

    if-nez v1, :cond_0

    const-string v1, "\u6ce8\u518c\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668"

    .line 102
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/netease/pharos/network/ConnectionChangeReceiver;

    invoke-direct {v0}, Lcom/netease/pharos/network/ConnectionChangeReceiver;-><init>()V

    sput-object v0, Lcom/netease/pharos/PharosProxy;->mReceiver:Lcom/netease/pharos/network/ConnectionChangeReceiver;

    .line 104
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mIsRegistered:Z

    goto :goto_0

    :cond_0
    const-string p1, "\u5df2\u7ecf\u6ce8\u518c\u8fc7\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668\uff0c\u65e0\u9700\u91cd\u590d\u6ce8\u518c"

    .line 108
    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    return-void
.end method

.method public setTestHost(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mHasSetTestHost:Z

    return-void
.end method

.method public setmDecision(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/netease/pharos/PharosProxy;->mDecision:I

    return-void
.end method

.method public setmEB(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mEB:Z

    return-void
.end method

.method public setmHarborudp(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mHarborudp:Ljava/lang/String;

    return-void
.end method

.method public setmHasSet(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    return-void
.end method

.method public setmHighSpeedUrl(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mHighSpeedUrl:Ljava/lang/String;

    return-void
.end method

.method public setmIp(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mIp:Ljava/lang/String;

    return-void
.end method

.method public setmOption(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/netease/pharos/PharosProxy;->mOption:I

    return-void
.end method

.method public setmPharosListener(Lcom/netease/pharos/PharosListener;)V
    .locals 1

    .line 288
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    const-string v0, "PharosProxy"

    if-nez p1, :cond_0

    const-string p1, "mPharosListener \u4e3a null"

    .line 291
    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "mPharosListener \u4e0d\u4e3a null"

    .line 294
    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setmPort(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mPort:Ljava/lang/String;

    return-void
.end method

.method public setmPorts(Lorg/json/JSONArray;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mPorts:Lorg/json/JSONArray;

    return-void
.end method

.method public setmQosExecDuration(I)V
    .locals 0

    .line 260
    iput p1, p0, Lcom/netease/pharos/PharosProxy;->mQosExecDuration:I

    return-void
.end method

.method public setmQosExecIp(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mQosExecIp:Ljava/lang/String;

    return-void
.end method

.method public setmQosIp(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mQosIp:Ljava/lang/String;

    return-void
.end method

.method public setmQosIps(Lorg/json/JSONArray;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mQosIps:Lorg/json/JSONArray;

    return-void
.end method

.method public start()V
    .locals 2

    .line 339
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/PharosProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/pharos/PharosProxy$1;-><init>(Lcom/netease/pharos/PharosProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/netease/pharos/PharosProxy;->startAll()V

    :goto_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    const-string v0, "PharosProxy"

    const-string v1, "\u6ce8\u9500\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668"

    .line 115
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netease/pharos/PharosProxy;->mReceiver:Lcom/netease/pharos/network/ConnectionChangeReceiver;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

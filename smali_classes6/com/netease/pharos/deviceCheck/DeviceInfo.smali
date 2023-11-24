.class public Lcom/netease/pharos/deviceCheck/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field private static sDeviceInfo:Lcom/netease/pharos/deviceCheck/DeviceInfo;


# instance fields
.field private isSupportIpV6:Z

.field private mAreazoneContinent:Ljava/lang/String;

.field private mAreazoneCountry:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mDecisionTag:Ljava/lang/String;

.field private mGateway:Ljava/lang/String;

.field private mIpContinent:Ljava/lang/String;

.field private mIpCountry:Ljava/lang/String;

.field private mIpIspId:Ljava/lang/String;

.field private mIpIspName:Ljava/lang/String;

.field private mIpLocalV6:Ljava/lang/String;

.field private mIpPayload:Ljava/lang/String;

.field private mIpSig:Ljava/lang/String;

.field private mIpaddr:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mMethod:Ljava/lang/String;

.field private mNameserver:Ljava/lang/String;

.field private mNetid:Ljava/lang/String;

.field private mNetwork:Ljava/lang/String;

.field private mNetworkIsp:Ljava/lang/String;

.field private mNetworkIspName:Ljava/lang/String;

.field private mNetworkSignal:Ljava/lang/String;

.field private mOsName:Ljava/lang/String;

.field private mOsVer:Ljava/lang/String;

.field private mProbeRegion:Ljava/lang/String;

.field private mProbeTag:Ljava/lang/String;

.field private mProject:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mTimezone:Ljava/lang/String;

.field private mUdid:Ljava/lang/String;

.field private mUdpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mipProvince:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProject:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdid:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetid:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddr:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpContinent:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpCountry:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mipProvince:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpLocalV6:Ljava/lang/String;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6:Z

    .line 72
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpPayload:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpSig:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNameserver:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetwork:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mGateway:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mTimezone:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsName:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsVer:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    .line 96
    iput-object v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mCountryCode:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mLocation:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mMethod:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mDecisionTag:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeTag:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    .line 113
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspId:Ljava/lang/String;

    const-string v0, "unknown"

    .line 114
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspName:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProject:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmUdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdid:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmNetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetid:Ljava/lang/String;

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;
    .locals 1

    .line 43
    sget-object v0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceCheck/DeviceInfo;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/netease/pharos/deviceCheck/DeviceInfo;

    invoke-direct {v0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceCheck/DeviceInfo;

    .line 47
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceCheck/DeviceInfo;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .line 573
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

    const/4 v0, 0x0

    .line 566
    sput-object v0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceCheck/DeviceInfo;

    return-void
.end method

.method public getAreazoneContinent()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    return-object v0
.end method

.method public getAreazoneCountry()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo(Z)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "DeviceInfo"

    .line 389
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "project"

    .line 392
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProject:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v5, "00000"

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProject:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    const-string v4, "2.2.4"

    .line 393
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "udid"

    .line 394
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdid:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdid:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "netid"

    .line 395
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetid:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v5, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetid:Ljava/lang/String;

    :cond_2
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ipaddr"

    .line 398
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddr:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_continent"

    .line 399
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpContinent:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_country"

    .line 400
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpCountry:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_province"

    .line 401
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mipProvince:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_ipv6"

    .line 404
    iget-boolean v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6:Z

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "ip_local_v6"

    .line 405
    iget-boolean v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6:Z

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpLocalV6:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v4, ""

    :goto_2
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    const-string v0, "ip_payload"

    .line 408
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpPayload:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_sig"

    .line 409
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpSig:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v0, "nameserver"

    .line 413
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNameserver:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network"

    .line 416
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetwork:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_isp"

    .line 417
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_signal"

    .line 418
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_isp_name"

    .line 419
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gateway"

    .line 422
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mGateway:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "timezone"

    .line 425
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mTimezone:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "areazone_continent"

    .line 426
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "areazone_country"

    .line 427
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os_name"

    .line 430
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os_ver"

    .line 431
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsVer:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "location"

    .line 434
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    iget-object v0, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    const/4 v5, 0x1

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 437
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 441
    iget-object v0, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    .line 443
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUdpMap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v7, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide v10, 0x40b3880000000000L    # 5000.0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 445
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 446
    iget-object v14, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-wide v8, v10

    const/4 v11, 0x0

    move-object v10, v0

    .line 448
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_6

    .line 449
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-ne v5, v11, :cond_5

    .line 451
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-le v0, v5, :cond_5

    .line 454
    :try_start_2
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pRtt="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v15, ", rtt="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    cmpl-double v0, v15, v4

    if-eqz v0, :cond_5

    cmpg-double v0, v4, v8

    if-gez v0, :cond_5

    .line 460
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tBestRegion="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", pRegion="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-wide v8, v4

    move-object v10, v12

    goto :goto_6

    :catch_0
    move-exception v0

    move-wide v8, v4

    move-object v10, v12

    goto :goto_5

    :catch_1
    move-exception v0

    .line 463
    :goto_5
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_6
    const-wide v4, 0x40b3880000000000L    # 5000.0

    cmpl-double v0, v4, v8

    if-eqz v0, :cond_7

    .line 470
    iput-object v10, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    const-string v0, "udpping"

    .line 471
    iput-object v0, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mMethod:Ljava/lang/String;

    .line 474
    :cond_7
    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v10

    const/4 v5, 0x1

    move-wide v10, v8

    goto/16 :goto_3

    :cond_8
    const-string v0, "udp"

    .line 477
    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v0, "region"

    .line 481
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "probe_region"

    .line 482
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "method"

    .line 483
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "decision"

    .line 484
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->isDebug()Z

    move-result v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    const-string v4, "testlog"

    if-eqz v0, :cond_a

    const/4 v5, 0x1

    .line 487
    :try_start_5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    .line 489
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_7
    const-string v0, "country_code"

    .line 492
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cell_id"

    .line 496
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/pharos/util/Util;->getCellId(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ip_local"

    .line 497
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/pharos/util/Util;->getLocalIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "decision_tag"

    .line 498
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mDecisionTag:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "probe_tag"

    .line 499
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeTag:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_isp_id"

    .line 501
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_isp_name"

    .line 502
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspId:Ljava/lang/String;

    invoke-static {v4}, Lcom/netease/pharos/util/Util;->getNetworkIspName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 505
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceInfo JSONException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_8
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mGateway:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddrV6()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpLocalV6:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getIpContinent()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpContinent:Ljava/lang/String;

    return-object v0
.end method

.method public getIpCountry()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getIpPayload()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getIpSig()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpSig:Ljava/lang/String;

    return-object v0
.end method

.method public getIpaddr()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNameserver()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNameserver:Ljava/lang/String;

    return-object v0
.end method

.method public getNetid()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetid:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetwork:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkIsp()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkIspName()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSignal()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsVer:Ljava/lang/String;

    return-object v0
.end method

.method public getProject()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProject:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdid:Ljava/lang/String;

    return-object v0
.end method

.method public getipProvince()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mipProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getmCountryCode()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getmDecisionTag()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mDecisionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getmIpIspId()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspId:Ljava/lang/String;

    return-object v0
.end method

.method public getmIpIspName()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspName:Ljava/lang/String;

    return-object v0
.end method

.method public getmLocation()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getmMethod()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getmProbeRegion()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getmProbeTag()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeTag:Ljava/lang/String;

    return-object v0
.end method

.method public getmRegion()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getmUdpMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    return-object v0
.end method

.method public handleProbeAndHarborRegion()V
    .locals 13

    const-string v0, "DeviceInfo"

    const-string v1, "DeviceInfo [handleProbeAndHarborRegion] start"

    .line 523
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2]"

    .line 524
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] mProbeRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getmConfigRegion()Ljava/lang/String;

    move-result-object v1

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] configRegion= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getmIspNum()D

    move-result-wide v3

    .line 535
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getmIpv6Num()D

    move-result-wide v5

    .line 536
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    .line 537
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    .line 538
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] ispRandomNum="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ", ispNum="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ", ipv6RandomNum="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ", ipv6Num="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 541
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] ismHarbor= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->ismHarbor()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] ismProbe= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->ismProbe()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->ismHarbor()Z

    move-result v11

    if-eqz v11, :cond_0

    cmpg-double v11, v7, v3

    if-gez v11, :cond_0

    .line 545
    iput-object v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    .line 548
    :cond_0
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->ismProbe()Z

    move-result v11

    if-eqz v11, :cond_1

    cmpg-double v11, v7, v3

    if-gez v11, :cond_1

    .line 549
    iput-object v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    .line 552
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] mProbeRegion1= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    cmpg-double v1, v9, v5

    if-gez v1, :cond_3

    .line 555
    iget-boolean v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6:Z

    if-eqz v1, :cond_3

    .line 556
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getmConfigConfigIpv6RegionTag()Ljava/lang/String;

    move-result-object v1

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] mConfigConfigIpv6RegionTag= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    .line 562
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] mProbeRegion3= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isSupportIpV6()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6:Z

    return v0
.end method

.method public setAreazoneContinent(Ljava/lang/String;)V
    .locals 2

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "_"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setAreazoneCountry(Ljava/lang/String;)V
    .locals 2

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "_"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mGateway:Ljava/lang/String;

    return-void
.end method

.method public setIpAddrV6(Ljava/lang/String;)V
    .locals 3

    .line 153
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpLocalV6:Ljava/lang/String;

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6:Z

    if-eqz v0, :cond_1

    const-string v0, ":"

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v2, "fe"

    .line 157
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6:Z

    :cond_1
    return-void
.end method

.method public setIpContinent(Ljava/lang/String;)V
    .locals 2

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "_"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpContinent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setIpCountry(Ljava/lang/String;)V
    .locals 2

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "_"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpCountry:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setIpPayload(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpPayload:Ljava/lang/String;

    return-void
.end method

.method public setIpSig(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpSig:Ljava/lang/String;

    return-void
.end method

.method public setIpaddr(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddr:Ljava/lang/String;

    return-void
.end method

.method public setNameserver(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNameserver:Ljava/lang/String;

    return-void
.end method

.method public setNetid(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetid:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 1

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetwork:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setNetworkIsp(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    return-void
.end method

.method public setNetworkIspName(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    return-void
.end method

.method public setNetworkSignal(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsName:Ljava/lang/String;

    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsVer:Ljava/lang/String;

    return-void
.end method

.method public setProject(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProject:Ljava/lang/String;

    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mTimezone:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdid:Ljava/lang/String;

    return-void
.end method

.method public setipProvince(Ljava/lang/String;)V
    .locals 2

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "_"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mipProvince:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setmCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setmDecisionTag(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mDecisionTag:Ljava/lang/String;

    return-void
.end method

.method public setmIpIspId(Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspId:Ljava/lang/String;

    return-void
.end method

.method public setmIpIspName(Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspName:Ljava/lang/String;

    return-void
.end method

.method public setmLocation(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mLocation:Ljava/lang/String;

    return-void
.end method

.method public setmMethod(Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mMethod:Ljava/lang/String;

    return-void
.end method

.method public setmProbeRegion(Ljava/lang/String;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    return-void
.end method

.method public setmProbeTag(Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeTag:Ljava/lang/String;

    return-void
.end method

.method public setmRegion(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    return-void
.end method

.method public setmUdpMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 359
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 360
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 514
    invoke-virtual {p0, v0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

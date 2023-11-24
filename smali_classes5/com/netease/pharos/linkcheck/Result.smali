.class public Lcom/netease/pharos/linkcheck/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkCheckResult"

.field private static sLinkCheckResult:Lcom/netease/pharos/linkcheck/Result;


# instance fields
.field private mIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIpaddr:Ljava/lang/String;

.field private mLinktestId:Ljava/lang/String;

.field private mNapIcmpDest:Ljava/lang/String;

.field private mNapIcmpLost:I

.field private mNapIcmpRtt:D

.field private mNapIcmpStddev:D

.field private mNetid:Ljava/lang/String;

.field private mProject:Ljava/lang/String;

.field private mRapIcmpDest:Ljava/lang/String;

.field private mRapIcmpLost:I

.field private mRapIcmpRtt:D

.field private mRapIcmpStddev:D

.field private mRapMtr:Ljava/lang/String;

.field private mRapQosExpire:Ljava/lang/String;

.field private mRapTransferDest:Ljava/lang/String;

.field private mRapTransferFail:D

.field private mRapTransferRtt:J

.field private mRapTransferSpeed:J

.field private mRapTransferStddev:D

.field private mRapUdpDest:Ljava/lang/String;

.field private mRapUdpLost:D

.field private mRapUdpRtt:J

.field private mRapUdpStddev:D

.field private mSapTransferDest:Ljava/lang/String;

.field private mSapTransferFail:D

.field private mSapTransferRtt:J

.field private mSapTransferSpeed:J

.field private mSapTransferStddev:D

.field private mSapUdpDest:Ljava/lang/String;

.field private mSapUdpLost:D

.field private mSapUdpRtt:J

.field private mSapUdpStddev:D

.field private mTestlog:I

.field private mType:Ljava/lang/String;

.field private mUdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mProject:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mUdid:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNetid:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mIpaddr:Ljava/lang/String;

    const/4 v1, 0x1

    .line 55
    iput v1, p0, Lcom/netease/pharos/linkcheck/Result;->mTestlog:I

    .line 56
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mType:Ljava/lang/String;

    const-string v1, ""

    .line 58
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    const/4 v2, -0x1

    .line 59
    iput v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 60
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    .line 61
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpStddev:D

    .line 64
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    .line 65
    iput v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    .line 66
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    .line 67
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpStddev:D

    .line 69
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    .line 70
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    const-wide/16 v5, -0x1

    .line 71
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    const-wide/16 v7, 0x0

    .line 72
    iput-wide v7, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    .line 73
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferStddev:D

    .line 75
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    .line 76
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    .line 77
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    .line 78
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpStddev:D

    .line 80
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    .line 81
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    .line 82
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    .line 83
    iput-wide v7, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    .line 84
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferStddev:D

    .line 86
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    .line 87
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    .line 88
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    .line 89
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpStddev:D

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    .line 92
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapMtr:Ljava/lang/String;

    const-string v0, "0"

    .line 95
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mProject:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmUdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mUdid:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmNetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNetid:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/linkcheck/Result;
    .locals 1

    .line 39
    sget-object v0, Lcom/netease/pharos/linkcheck/Result;->sLinkCheckResult:Lcom/netease/pharos/linkcheck/Result;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/netease/pharos/linkcheck/Result;

    invoke-direct {v0}, Lcom/netease/pharos/linkcheck/Result;-><init>()V

    sput-object v0, Lcom/netease/pharos/linkcheck/Result;->sLinkCheckResult:Lcom/netease/pharos/linkcheck/Result;

    .line 42
    :cond_0
    sget-object v0, Lcom/netease/pharos/linkcheck/Result;->sLinkCheckResult:Lcom/netease/pharos/linkcheck/Result;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .line 737
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 7

    const/4 v0, 0x0

    .line 513
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    .line 514
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mIpaddr:Ljava/lang/String;

    .line 517
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mType:Ljava/lang/String;

    const-string v1, ""

    .line 519
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    const/4 v2, -0x1

    .line 520
    iput v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 521
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    .line 522
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpStddev:D

    .line 524
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    .line 525
    iput v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    .line 526
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    .line 527
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpStddev:D

    .line 529
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    .line 530
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    const-wide/16 v5, -0x1

    .line 531
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    .line 532
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    .line 533
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferStddev:D

    .line 535
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    .line 536
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    .line 537
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    .line 538
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpStddev:D

    .line 540
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    .line 541
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    .line 542
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    .line 543
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    .line 544
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferStddev:D

    .line 546
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    .line 547
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    .line 548
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    .line 549
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpStddev:D

    .line 551
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    .line 552
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapMtr:Ljava/lang/String;

    const-string v0, "0"

    .line 555
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    return-void
.end method

.method public getLinkCheckResultInfo()Ljava/lang/String;
    .locals 6

    .line 620
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "project"

    .line 622
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mProject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    const-string v2, "2.2.4"

    .line 623
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "udid"

    .line 624
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mUdid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "netid"

    .line 625
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNetid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "linktest_id"

    .line 626
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmLinktestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    .line 628
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_isp_name"

    .line 629
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getNetworkIspName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "qos_effective"

    .line 630
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/qos/QosProxy;->getQosEffective()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 635
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getIpaddr()Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object v1, v3

    .line 641
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v2

    .line 643
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 647
    :cond_1
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getmProbeRegion()Ljava/lang/String;

    move-result-object v4

    .line 649
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    const-string v4, "ipaddr"

    .line 654
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "region"

    .line 655
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "probe_region"

    .line 656
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "testlog"

    .line 658
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmTestlog()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cell_id"

    .line 659
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/pharos/util/Util;->getCellId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ip_local"

    .line 660
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/pharos/util/Util;->getLocalIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_ipv6"

    .line 661
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ip_local_v6"

    .line 662
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getIpAddrV6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "probe"

    .line 663
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_name"

    const-string v2, "android"

    .line 664
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "nap_icmp_dest"

    .line 667
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nap_icmp_lost"

    .line 668
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmNapIcmpLost()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "nap_icmp_rtt"

    .line 669
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmNapIcmpRtt()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "nap_icmp_stddev"

    .line 670
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmNapIcmpStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 673
    :cond_3
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "rap_icmp_dest"

    .line 674
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rap_icmp_lost"

    .line 675
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapIcmpLost()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rap_icmp_rtt"

    .line 676
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapIcmpRtt()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "rap_icmp_stddev"

    .line 677
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapIcmpStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 680
    :cond_4
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "rap_transfer_dest"

    .line 681
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rap_transfer_fail"

    .line 682
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapTransferFail()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "rap_transfer_rtt"

    .line 683
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapTransferRtt()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "rap_transfer_speed"

    .line 684
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapTransferSpeed()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "rap_transfer_stddev"

    .line 685
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapTransferStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 688
    :cond_5
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "rap_udp_dest"

    .line 689
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rap_udp_lost"

    .line 690
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapUdpLost()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "rap_udp_rtt"

    .line 691
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapUdpRtt()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "rap_udp_stddev"

    .line 692
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapUdpStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 695
    :cond_6
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sap_transfer_dest"

    .line 696
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sap_transfer_fail"

    .line 697
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapTransferFail()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "sap_transfer_rtt"

    .line 698
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapTransferRtt()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "sap_transfer_speed"

    .line 699
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapTransferSpeed()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "sap_transfer_stddev"

    .line 700
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapTransferStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 703
    :cond_7
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "sap_udp_dest"

    .line 704
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sap_udp_lost"

    .line 705
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapUdpLost()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "sap_udp_rtt"

    .line 706
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapUdpRtt()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "sap_udp_stddev"

    .line 707
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapUdpStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 710
    :cond_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 712
    :goto_1
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 713
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 715
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_9

    const-string v3, ","

    .line 716
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 720
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "resolve_host"

    .line 721
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    const-string v1, "rap_qos_expire"

    .line 725
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 730
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmIpaddr()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mIpaddr:Ljava/lang/String;

    return-object v0
.end method

.method public getmLinktestId()Ljava/lang/String;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mUdid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    return-object v0
.end method

.method public getmNapIcmpDest()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmNapIcmpLost()I
    .locals 7

    .line 196
    iget v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0x64

    if-eq v1, v0, :cond_2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 199
    iget-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    mul-int/lit8 v0, v0, 0x64

    .line 203
    iput v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    goto :goto_1

    .line 200
    :cond_2
    :goto_0
    iput v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    .line 206
    :cond_3
    :goto_1
    iget v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    return v0
.end method

.method public getmNapIcmpRtt()D
    .locals 5

    .line 214
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 215
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    .line 218
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    return-wide v0
.end method

.method public getmNapIcmpStddev()D
    .locals 2

    .line 461
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpStddev:D

    return-wide v0
.end method

.method public getmNetid()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNetid:Ljava/lang/String;

    return-object v0
.end method

.method public getmProject()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mProject:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapIcmpDest()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapIcmpLost()I
    .locals 7

    .line 228
    iget v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    const/16 v1, 0x64

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    mul-int/lit8 v0, v0, 0x64

    .line 232
    iput v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    goto :goto_1

    .line 229
    :cond_1
    :goto_0
    iput v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    .line 235
    :cond_2
    :goto_1
    iget v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    return v0
.end method

.method public getmRapIcmpRtt()D
    .locals 5

    .line 243
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 244
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    .line 246
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    return-wide v0
.end method

.method public getmRapIcmpStddev()D
    .locals 2

    .line 469
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpStddev:D

    return-wide v0
.end method

.method public getmRapMtr()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapMtr:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapQosExpire()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapTransferDest()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapTransferFail()D
    .locals 9

    .line 255
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v8, v6, v0

    if-eqz v8, :cond_0

    cmpl-double v6, v2, v0

    if-nez v6, :cond_1

    .line 256
    :cond_0
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    .line 258
    :cond_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    cmpg-double v6, v0, v2

    if-gez v6, :cond_2

    mul-double v0, v0, v4

    .line 259
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    .line 262
    :cond_2
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    return-wide v0
.end method

.method public getmRapTransferRtt()J
    .locals 5

    .line 270
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x3e8

    .line 271
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    .line 273
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    return-wide v0
.end method

.method public getmRapTransferSpeed()J
    .locals 5

    .line 281
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    .line 282
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    .line 284
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    return-wide v0
.end method

.method public getmRapTransferStddev()D
    .locals 2

    .line 477
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferStddev:D

    return-wide v0
.end method

.method public getmRapUdpDest()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapUdpLost()D
    .locals 7

    .line 293
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v4, v0

    if-eqz v6, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v0

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    cmpg-double v6, v0, v4

    if-gez v6, :cond_2

    mul-double v0, v0, v2

    .line 297
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    goto :goto_1

    .line 294
    :cond_1
    :goto_0
    iput-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    .line 300
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    return-wide v0
.end method

.method public getmRapUdpRtt()J
    .locals 5

    .line 308
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x3e8

    .line 309
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    .line 311
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    return-wide v0
.end method

.method public getmRapUdpStddev()D
    .locals 2

    .line 485
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpStddev:D

    return-wide v0
.end method

.method public getmResolveHost()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmSapTransferDest()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmSapTransferFail()D
    .locals 9

    .line 319
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v8, v6, v0

    if-eqz v8, :cond_0

    cmpl-double v6, v2, v0

    if-nez v6, :cond_1

    .line 320
    :cond_0
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    .line 322
    :cond_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    cmpg-double v6, v0, v2

    if-gez v6, :cond_2

    mul-double v0, v0, v4

    .line 323
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    .line 326
    :cond_2
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    return-wide v0
.end method

.method public getmSapTransferRtt()J
    .locals 5

    .line 335
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x3e8

    .line 336
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    .line 339
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    return-wide v0
.end method

.method public getmSapTransferSpeed()J
    .locals 5

    .line 348
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    .line 349
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    .line 352
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    return-wide v0
.end method

.method public getmSapTransferStddev()D
    .locals 2

    .line 493
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferStddev:D

    return-wide v0
.end method

.method public getmSapUdpDest()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmSapUdpLost()D
    .locals 7

    .line 361
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v4, v0

    if-eqz v6, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v0

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    cmpg-double v6, v0, v4

    if-gez v6, :cond_2

    mul-double v0, v0, v2

    .line 365
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    goto :goto_1

    .line 362
    :cond_1
    :goto_0
    iput-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    .line 368
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    return-wide v0
.end method

.method public getmSapUdpRtt()J
    .locals 5

    .line 378
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x3e8

    .line 379
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    .line 381
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    return-wide v0
.end method

.method public getmSapUdpStddev()D
    .locals 2

    .line 501
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpStddev:D

    return-wide v0
.end method

.method public getmTestlog()I
    .locals 1

    .line 174
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 175
    iput v0, p0, Lcom/netease/pharos/linkcheck/Result;->mTestlog:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lcom/netease/pharos/linkcheck/Result;->mTestlog:I

    .line 179
    :goto_0
    iget v0, p0, Lcom/netease/pharos/linkcheck/Result;->mTestlog:I

    return v0
.end method

.method public getmType()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getmUdid()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mUdid:Ljava/lang/String;

    return-object v0
.end method

.method public setmIpaddr(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mIpaddr:Ljava/lang/String;

    return-void
.end method

.method public setmLinktestId(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    return-void
.end method

.method public setmNapIcmpDest(Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    return-void
.end method

.method public setmNapIcmpLost(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    return-void
.end method

.method public setmNapIcmpRtt(D)V
    .locals 0

    .line 222
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    return-void
.end method

.method public setmNapIcmpStddev(D)V
    .locals 0

    .line 465
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpStddev:D

    return-void
.end method

.method public setmNetid(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mNetid:Ljava/lang/String;

    return-void
.end method

.method public setmProject(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mProject:Ljava/lang/String;

    return-void
.end method

.method public setmRapIcmpDest(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    return-void
.end method

.method public setmRapIcmpLost(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    return-void
.end method

.method public setmRapIcmpRtt(D)V
    .locals 0

    .line 250
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    return-void
.end method

.method public setmRapIcmpStddev(D)V
    .locals 0

    .line 473
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpStddev:D

    return-void
.end method

.method public setmRapMtr(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapMtr:Ljava/lang/String;

    return-void
.end method

.method public setmRapQosExpire(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    return-void
.end method

.method public setmRapTransferDest(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    return-void
.end method

.method public setmRapTransferFail(D)V
    .locals 0

    .line 266
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    return-void
.end method

.method public setmRapTransferRtt(J)V
    .locals 0

    .line 277
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    return-void
.end method

.method public setmRapTransferSpeed(J)V
    .locals 0

    .line 288
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    return-void
.end method

.method public setmRapTransferStddev(D)V
    .locals 0

    .line 481
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferStddev:D

    return-void
.end method

.method public setmRapUdpDest(Ljava/lang/String;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    return-void
.end method

.method public setmRapUdpLost(D)V
    .locals 0

    .line 304
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    return-void
.end method

.method public setmRapUdpRtt(J)V
    .locals 0

    .line 315
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    return-void
.end method

.method public setmRapUdpStddev(D)V
    .locals 0

    .line 489
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpStddev:D

    return-void
.end method

.method public setmResolveHost(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 396
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    return-void
.end method

.method public setmSapTransferDest(Ljava/lang/String;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    return-void
.end method

.method public setmSapTransferFail(D)V
    .locals 0

    .line 330
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    return-void
.end method

.method public setmSapTransferRtt(J)V
    .locals 0

    .line 343
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    return-void
.end method

.method public setmSapTransferSpeed(J)V
    .locals 0

    .line 356
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    return-void
.end method

.method public setmSapTransferStddev(D)V
    .locals 0

    .line 497
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferStddev:D

    return-void
.end method

.method public setmSapUdpDest(Ljava/lang/String;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    return-void
.end method

.method public setmSapUdpLost(D)V
    .locals 0

    .line 373
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    return-void
.end method

.method public setmSapUdpRtt(J)V
    .locals 0

    .line 386
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    return-void
.end method

.method public setmSapUdpStddev(D)V
    .locals 0

    .line 505
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpStddev:D

    return-void
.end method

.method public setmTestlog(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/netease/pharos/linkcheck/Result;->mTestlog:I

    return-void
.end method

.method public setmType(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mType:Ljava/lang/String;

    return-void
.end method

.method public setmUdid(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mUdid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 561
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\n"

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mProject="

    .line 563
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mProject:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mUdid="

    .line 564
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mUdid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNetid="

    .line 565
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNetid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLinktestId="

    .line 566
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmLinktestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIpaddr="

    .line 567
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mIpaddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mTestlog="

    .line 570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmTestlog()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mType="

    .line 571
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNapIcmpDest="

    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNapIcmpLost="

    .line 575
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNapIcmpRtt="

    .line 576
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNapIcmpStddev="

    .line 577
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapIcmpDest="

    .line 580
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapIcmpLost="

    .line 581
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapIcmpRtt="

    .line 582
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapIcmpStddev="

    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapTransferDest="

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapTransferFail="

    .line 587
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapTransferRtt="

    .line 588
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapTransferSpeed="

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapTransferStddev="

    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapUdpDest="

    .line 593
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapUdpLost="

    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapUdpRtt="

    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapUdpStddev="

    .line 596
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapTransferDest="

    .line 599
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapTransferFail="

    .line 600
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapTransferRtt="

    .line 601
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapTransferSpeed="

    .line 602
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapTransferStddev="

    .line 603
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapUdpDest="

    .line 606
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapUdpLost="

    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapUdpRtt="

    .line 608
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapUdpStddev="

    .line 609
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIpList="

    .line 611
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapMtr="

    .line 612
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapMtr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapQosExpire="

    .line 615
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

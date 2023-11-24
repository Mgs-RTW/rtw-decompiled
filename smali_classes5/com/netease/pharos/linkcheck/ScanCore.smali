.class public Lcom/netease/pharos/linkcheck/ScanCore;
.super Ljava/lang/Object;
.source "ScanCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanCore"


# instance fields
.field private mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

.field private mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

.field private mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

.field private mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

.field private mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

.field private mStyle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    .line 38
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 40
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    .line 42
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .line 45
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    return-void
.end method

.method private getFinalDest(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "ScanCore"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 62
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 63
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 69
    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "."

    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :catch_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 81
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 82
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 83
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v1, p1

    :cond_3
    if-nez v1, :cond_4

    .line 86
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 87
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanCore [getFinalDest] num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 93
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move-object p2, v1

    .line 97
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanCore [getFinalDest] result="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private supportPatch()V
    .locals 2

    .line 874
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanCore"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v1, "nap_icmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceNapIcmp()I

    move-result v0

    goto/16 :goto_1

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v1, "rap_icmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceRapIcmp()I

    move-result v0

    goto :goto_1

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v1, "rap_udp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 849
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceRapUdp()I

    move-result v0

    goto :goto_1

    .line 851
    :cond_2
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v1, "rap_transfer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 852
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceRapTransfer()I

    move-result v0

    goto :goto_1

    .line 854
    :cond_3
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v1, "rap_mtr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 855
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceRapMtr()V

    goto :goto_0

    .line 857
    :cond_4
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v1, "sap_udp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 858
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceSapUdp()I

    goto :goto_0

    .line 860
    :cond_5
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v1, "sap_transfer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 861
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceSapTransfer()I

    move-result v0

    goto :goto_1

    .line 863
    :cond_6
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v1, "resolve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 864
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceResolve()I

    move-result v0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, 0x0

    .line 867
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;Lcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/ConfigInfoListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    .line 54
    iput-object p3, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 55
    iput-object p4, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    .line 56
    iput-object p5, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    return-void
.end method

.method public setProtocolProxyProxy(Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    return-void
.end method

.method public startOnceNapIcmp()I
    .locals 28

    move-object/from16 v1, p0

    const-string v0, "cycle"

    const-string v2, "enable"

    const-string v3, "ScanCore"

    const-string v4, "NapIcmp \u63a2\u6d4b"

    .line 103
    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v4

    .line 106
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v14

    .line 108
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getNapIcmp()Lorg/json/JSONObject;

    move-result-object v5

    const/4 v15, 0x0

    if-eqz v5, :cond_2

    .line 116
    :try_start_0
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 119
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    .line 124
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v6, v2

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    move v6, v2

    move v2, v0

    .line 127
    :goto_3
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getGateway()Ljava/lang/String;

    move-result-object v8

    const/16 v7, 0xa

    const-string v0, "count"

    .line 132
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 135
    :try_start_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v5, v0

    .line 137
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    const/16 v0, 0xa

    .line 141
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NapIcmp---enable="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", napIcmpEnable="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", interval="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", gateWay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", count="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "nap_icmp"

    if-eqz v4, :cond_7

    if-eqz v6, :cond_7

    const/4 v4, 0x1

    if-lt v14, v4, :cond_5

    const/16 v6, 0x3c

    if-gt v14, v6, :cond_5

    if-eqz v2, :cond_5

    .line 147
    iget-object v2, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v2, :cond_4

    .line 148
    invoke-interface {v2, v4, v5}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    :cond_4
    const-string v2, "NapIcmp \u63a2\u6d4b \u5468\u671f\u5904\u7406"

    .line 151
    invoke-static {v3, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v6, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/4 v7, 0x4

    const/4 v9, -0x1

    const/16 v11, 0x320

    const/4 v12, -0x1

    iget-object v13, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v2, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v17, "nap_icmp"

    move v10, v0

    const/4 v5, 0x0

    move-object v15, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v6 .. v17}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    const-string v4, "NapIcmp \u63a2\u6d4b \u4e00\u6b21\u6027\u5904\u7406"

    .line 156
    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v4, :cond_6

    .line 159
    invoke-interface {v4, v2, v5}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 161
    :cond_6
    iget-object v2, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/16 v17, 0x4

    const/16 v19, -0x1

    const/16 v21, 0x320

    const/16 v22, -0x1

    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "nap_icmp"

    move-object/from16 v16, v2

    move-object/from16 v18, v8

    move/from16 v20, v0

    move-object/from16 v23, v4

    invoke-virtual/range {v16 .. v27}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_5

    .line 165
    :cond_7
    iget-object v0, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    invoke-interface {v0, v5}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    const-string v0, "enable == 0, NapIcmp \u63a2\u6d4b \u4e0d\u6267\u884c"

    .line 166
    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/16 v15, 0xb

    .line 169
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NapIcmp \u63a2\u6d4b \u7ed3\u679c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v15
.end method

.method public startOnceRapIcmp()I
    .locals 28

    move-object/from16 v1, p0

    const-string v2, "dests"

    const-string v3, "dest"

    const-string v0, "cycle"

    const-string v4, "count"

    const-string v5, "enable"

    const-string v6, "ScanCore"

    const-string v7, "RapIcmp \u63a2\u6d4b"

    .line 175
    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v7

    .line 179
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v8

    .line 181
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getRapIcmp()Lorg/json/JSONObject;

    move-result-object v9

    const/4 v15, 0x0

    if-eqz v9, :cond_2

    .line 189
    :try_start_0
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 190
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 193
    :goto_0
    :try_start_1
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 194
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    .line 198
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v10, v5

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_2
    move v10, v5

    move v5, v0

    :goto_3
    const/16 v11, 0xa

    const/4 v12, 0x0

    .line 207
    :try_start_2
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 211
    :cond_3
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v0

    goto :goto_4

    :cond_4
    move-object v3, v12

    .line 215
    :goto_4
    :try_start_3
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v12, v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v3, v12

    .line 219
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception1="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_6
    move v0, v11

    .line 223
    invoke-direct {v1, v12, v3}, Lcom/netease/pharos/linkcheck/ScanCore;->getFinalDest(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0xb

    if-eqz v3, :cond_6

    return v4

    .line 229
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RapIcmp---enable="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", napIcmpEnable="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", dest="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", count="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "rap_icmp"

    if-eqz v7, :cond_a

    if-eqz v10, :cond_a

    const/4 v7, 0x1

    if-lt v8, v7, :cond_8

    const/16 v9, 0x3c

    if-gt v8, v9, :cond_8

    if-eqz v5, :cond_8

    const-string v4, "RapIcmp \u63a2\u6d4b \u5468\u671f\u5904\u7406"

    .line 234
    invoke-static {v6, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v4, :cond_7

    .line 237
    invoke-interface {v4, v7, v3}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 240
    :cond_7
    iget-object v9, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/4 v10, 0x4

    const/4 v12, -0x1

    const/16 v14, 0x320

    const/4 v3, -0x1

    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v5, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    iget-object v7, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v20, "rap_icmp"

    move-object v11, v2

    move v13, v0

    const/4 v2, 0x0

    move v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v8

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    invoke-virtual/range {v9 .. v20}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    const-string v7, "RapIcmp \u63a2\u6d4b \u4e00\u6b21\u6027\u5904\u7406"

    .line 244
    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v7, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v7, :cond_9

    .line 247
    invoke-interface {v7, v5, v3}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 250
    :cond_9
    iget-object v3, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/16 v17, 0x4

    const/16 v19, -0x1

    const/16 v21, 0x320

    const/16 v22, -0x1

    iget-object v5, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "rap_icmp"

    move-object/from16 v16, v3

    move-object/from16 v18, v2

    move/from16 v20, v0

    move-object/from16 v23, v5

    invoke-virtual/range {v16 .. v27}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_7

    .line 254
    :cond_a
    iget-object v0, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    invoke-interface {v0, v3}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    const-string v0, "enable == 0, RapIcmp \u63a2\u6d4b \u4e0d\u6267\u884c"

    .line 255
    invoke-static {v6, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    const/16 v15, 0xb

    .line 258
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RapIcmp \u63a2\u6d4b \u7ed3\u679c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v15
.end method

.method public startOnceRapMtr()V
    .locals 8

    const-string v0, "cycle"

    const-string v1, "enable"

    const-string v2, "ScanCore"

    const-string v3, "RapMtr \u63a2\u6d4b"

    .line 491
    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v3

    .line 493
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v4

    .line 495
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getRapMtr()Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 503
    :try_start_0
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 504
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 507
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 508
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v1

    goto :goto_3

    :cond_1
    move v6, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 512
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :cond_2
    :goto_2
    const/4 v0, 0x0

    :goto_3
    move v1, v6

    move v6, v0

    .line 515
    :goto_4
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v5, "rap_mtr"

    invoke-interface {v0, v5}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    if-lt v4, v0, :cond_3

    const/16 v0, 0x3c

    if-gt v4, v0, :cond_3

    if-eqz v6, :cond_3

    const-string v0, "\u5468\u671f\u5904\u7406"

    .line 520
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    goto :goto_5

    :cond_3
    const-string v0, "\u4e00\u6b21\u6027\u5904\u7406"

    .line 527
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    invoke-interface {v0, v5}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    const-string v0, "enable == 0, \u4e0d\u6267\u884c"

    .line 532
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public startOnceRapTransfer()I
    .locals 31

    move-object/from16 v1, p0

    const-string v2, "package"

    const-string v3, "dests"

    const-string v4, "dest"

    const-string v5, "count"

    const-string v0, "cycle"

    const-string v6, "protocol"

    const-string v7, "enable"

    const-string v8, "ScanCore"

    const-string v9, "RapTransfer \u63a2\u6d4b"

    .line 264
    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v9

    .line 268
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v10

    .line 270
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getRapTransfer()Lorg/json/JSONObject;

    move-result-object v11

    const/4 v15, 0x0

    if-eqz v11, :cond_2

    .line 278
    :try_start_0
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 279
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 282
    :goto_0
    :try_start_1
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 283
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v7, 0x0

    .line 288
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v12, v7

    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_2
    move v12, v7

    move v7, v0

    :goto_3
    const/4 v13, -0x1

    const/16 v17, 0x0

    const/4 v14, 0x1

    .line 302
    :try_start_2
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3
    move-object/from16 v0, v17

    .line 306
    :goto_4
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 307
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move/from16 v16, v5

    goto :goto_5

    :cond_4
    const/16 v16, 0xa

    .line 310
    :goto_5
    :try_start_3
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 311
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_5
    move-object/from16 v4, v17

    .line 314
    :goto_6
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 315
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_7

    :cond_6
    move-object/from16 v3, v17

    .line 318
    :goto_7
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 319
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move/from16 v18, v2

    goto :goto_8

    :cond_7
    const/16 v18, 0x2

    .line 322
    :goto_8
    :try_start_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "tcp"

    .line 324
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_9

    :cond_8
    const-string v2, "kcp"

    .line 327
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    const/4 v2, 0x3

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v2, 0x1

    .line 332
    :goto_a
    :try_start_5
    invoke-direct {v1, v3, v4}, Lcom/netease/pharos/linkcheck/ScanCore;->getFinalDest(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, ":"

    .line 335
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v13, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-ge v4, v5, :cond_a

    .line 338
    :try_start_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_b

    :catch_2
    const/4 v4, -0x1

    .line 342
    :goto_b
    :try_start_7
    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_e

    :cond_a
    move-object/from16 v17, v0

    :cond_b
    const/4 v4, -0x1

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v0

    const/4 v2, 0x1

    :goto_c
    const/4 v4, -0x1

    goto :goto_e

    :catch_6
    move-exception v0

    const/4 v2, 0x1

    const/4 v4, -0x1

    goto :goto_d

    :catch_7
    move-exception v0

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/16 v16, 0xa

    :goto_d
    const/16 v18, 0x2

    .line 349
    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    move/from16 v5, v16

    move-object/from16 v3, v17

    move/from16 v0, v18

    .line 352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RapTransfer---pStyle="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",pIp="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",pPort="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", pCount="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", pPackage="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v0, v0, 0x400

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "rap_transfer"

    if-eqz v9, :cond_f

    if-eqz v12, :cond_f

    .line 354
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    if-eq v13, v4, :cond_f

    if-lt v10, v14, :cond_d

    const/16 v9, 0x3c

    if-gt v10, v9, :cond_d

    if-eqz v7, :cond_d

    const-string v7, "\u5468\u671f\u5904\u7406"

    .line 357
    invoke-static {v8, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v7, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v7, :cond_c

    .line 360
    invoke-interface {v7, v14, v6}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 363
    :cond_c
    iget-object v11, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/16 v16, 0x320

    iget-object v6, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v7, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    iget-object v8, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v22, "rap_transfer"

    move v12, v2

    move-object v13, v3

    move v14, v4

    const/4 v9, 0x0

    move v15, v5

    move/from16 v17, v0

    move-object/from16 v18, v6

    move/from16 v19, v10

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-virtual/range {v11 .. v22}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_11

    :cond_d
    const/4 v9, 0x0

    const-string v7, "\u4e00\u6b21\u6027\u5904\u7406"

    .line 367
    invoke-static {v8, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v7, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v7, :cond_e

    .line 370
    invoke-interface {v7, v9, v6}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 372
    :cond_e
    iget-object v6, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/16 v24, 0x320

    iget-object v7, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "rap_transfer"

    move-object/from16 v19, v6

    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v25, v0

    move-object/from16 v26, v7

    invoke-virtual/range {v19 .. v30}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_10

    .line 376
    :cond_f
    iget-object v0, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    invoke-interface {v0, v6}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    const-string v0, "enable == 0, \u4e0d\u6267\u884c"

    .line 377
    invoke-static {v8, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    const/16 v15, 0xb

    :goto_11
    return v15
.end method

.method public startOnceRapUdp()I
    .locals 29

    move-object/from16 v1, p0

    const-string v2, "package"

    const-string v3, "dests"

    const-string v4, "dest"

    const-string v0, "cycle"

    const-string v5, "count"

    const-string v6, "enable"

    const-string v7, "ScanCore"

    const-string v8, "RapUdp \u63a2\u6d4b"

    .line 384
    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v8

    .line 387
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v9

    .line 389
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getRapUdp()Lorg/json/JSONObject;

    move-result-object v10

    const/4 v15, 0x0

    if-eqz v10, :cond_2

    .line 397
    :try_start_0
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 398
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 401
    :goto_0
    :try_start_1
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 402
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    .line 407
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v11, v6

    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_2
    move v11, v6

    move v6, v0

    :goto_3
    const/16 v12, 0xa

    const/16 v13, 0x10

    const/4 v14, -0x1

    const/16 v16, 0x0

    .line 419
    :try_start_2
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 423
    :cond_3
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object/from16 v0, v16

    .line 427
    :goto_4
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 428
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object/from16 v3, v16

    .line 431
    :goto_5
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 432
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 435
    :cond_6
    invoke-direct {v1, v3, v0}, Lcom/netease/pharos/linkcheck/ScanCore;->getFinalDest(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ":"

    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v14, :cond_7

    add-int/lit8 v3, v2, 0x1

    .line 439
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-ge v3, v4, :cond_7

    .line 441
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v14, v3

    .line 445
    :catch_2
    :try_start_4
    invoke-virtual {v0, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :cond_7
    move-object/from16 v16, v0

    goto :goto_6

    :catch_3
    move-exception v0

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    move v2, v12

    move-object/from16 v0, v16

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RapUdp---enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", napIcmpEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", pIp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",pPort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v4, v13, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", napIcmpCycle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "rap_udp"

    if-eqz v8, :cond_c

    if-eqz v11, :cond_c

    const/4 v4, 0x1

    if-lt v9, v4, :cond_a

    const/16 v5, 0x3c

    if-gt v9, v5, :cond_a

    if-eqz v6, :cond_a

    const-string v5, "\u5468\u671f\u5904\u7406"

    .line 459
    invoke-static {v7, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v5, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v5, :cond_9

    .line 463
    invoke-interface {v5, v4, v3}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 466
    :cond_9
    iget-object v10, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/4 v11, 0x2

    const/16 v3, 0x320

    mul-int/lit8 v16, v13, 0x20

    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v5, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    iget-object v6, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v21, "rap_udp"

    move-object v12, v0

    move v13, v14

    move v14, v2

    const/4 v8, 0x0

    move v15, v3

    move-object/from16 v17, v4

    move/from16 v18, v9

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-virtual/range {v10 .. v21}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    const-string v4, "\u4e00\u6b21\u6027\u5904\u7406"

    .line 470
    invoke-static {v7, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v4, :cond_b

    .line 473
    invoke-interface {v4, v8, v3}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 476
    :cond_b
    iget-object v3, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/16 v18, 0x2

    const/16 v22, 0x320

    mul-int/lit8 v23, v13, 0x20

    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "rap_udp"

    move-object/from16 v17, v3

    move-object/from16 v19, v0

    move/from16 v20, v14

    move/from16 v21, v2

    move-object/from16 v24, v4

    invoke-virtual/range {v17 .. v28}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_7

    .line 480
    :cond_c
    iget-object v0, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    invoke-interface {v0, v3}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    const-string v0, "enable == 0, \u4e0d\u6267\u884c"

    .line 481
    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    const/16 v15, 0xb

    .line 484
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RapUdp \u63a2\u6d4b \u7ed3\u679c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v15
.end method

.method public startOnceResolve()I
    .locals 28

    move-object/from16 v1, p0

    const-string v0, "cycle"

    const-string v2, "dest"

    const-string v3, "enable"

    const-string v4, "ScanCore"

    const-string v5, "Resolve \u63a2\u6d4b"

    .line 762
    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v5

    .line 765
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v15

    .line 767
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getResolve()Lorg/json/JSONObject;

    move-result-object v6

    const/4 v14, 0x0

    if-eqz v6, :cond_2

    .line 775
    :try_start_0
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 776
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 779
    :goto_0
    :try_start_1
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 780
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    .line 785
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v7, v3

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    move v7, v3

    move v3, v0

    :goto_3
    const/4 v8, 0x0

    .line 794
    :try_start_2
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 795
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    move-object v0, v8

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolve---pDest="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "resolve"

    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    const/4 v5, 0x1

    if-lt v15, v5, :cond_5

    const/16 v6, 0x3c

    if-gt v15, v6, :cond_5

    if-eqz v3, :cond_5

    const-string v3, "\u5468\u671f\u5904\u7406"

    .line 806
    invoke-static {v4, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v3, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v3, :cond_4

    .line 809
    invoke-interface {v3, v5, v2}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 812
    :cond_4
    iget-object v7, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/4 v8, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v2, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v3, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    iget-object v5, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v18, "resolve"

    move-object v9, v0

    const/4 v6, 0x0

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-virtual/range {v7 .. v18}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_6

    :cond_5
    const/4 v6, 0x0

    const-string v3, "\u4e00\u6b21\u6027\u5904\u7406"

    .line 816
    invoke-static {v4, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v3, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v3, :cond_6

    .line 819
    invoke-interface {v3, v6, v2}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 822
    :cond_6
    iget-object v2, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/16 v17, 0x5

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v3, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "resolve"

    move-object/from16 v16, v2

    move-object/from16 v18, v0

    move-object/from16 v23, v3

    invoke-virtual/range {v16 .. v27}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_5

    .line 826
    :cond_7
    iget-object v0, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    invoke-interface {v0, v2}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    const-string v0, "enable == 0, \u4e0d\u6267\u884c"

    .line 827
    invoke-static {v4, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/16 v14, 0xb

    .line 830
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolve \u63a2\u6d4b \u7ed3\u679c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v14
.end method

.method public startOnceSapTransfer()I
    .locals 30

    move-object/from16 v1, p0

    const-string v2, "package"

    const-string v3, "dests"

    const-string v4, "dest"

    const-string v0, "cycle"

    const-string v5, "count"

    const-string v6, "enable"

    const-string v7, "ScanCore"

    const-string v8, "SapTransfer \u63a2\u6d4b"

    .line 537
    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v8

    .line 540
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v9

    .line 542
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getSapTransfer()Lorg/json/JSONObject;

    move-result-object v10

    const/4 v15, 0x0

    if-eqz v10, :cond_2

    .line 550
    :try_start_0
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 551
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 554
    :goto_0
    :try_start_1
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 555
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    .line 560
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v11, v6

    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_2
    move v11, v6

    move v6, v0

    :goto_3
    const/4 v14, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 573
    :try_start_2
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move/from16 v16, v0

    goto :goto_4

    :cond_3
    const/16 v16, 0xa

    .line 577
    :goto_4
    :try_start_3
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 578
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_4
    move-object v0, v12

    .line 581
    :goto_5
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 582
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_6

    :cond_5
    move-object v3, v12

    .line 585
    :goto_6
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 586
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move/from16 v17, v2

    goto :goto_7

    :cond_6
    const/16 v17, 0x2

    .line 589
    :goto_7
    :try_start_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "tcp"

    .line 591
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_8

    :cond_7
    const-string v2, "kcp"

    .line 594
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v2, 0x1

    .line 599
    :goto_9
    :try_start_5
    invoke-direct {v1, v3, v0}, Lcom/netease/pharos/linkcheck/ScanCore;->getFinalDest(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ":"

    .line 602
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v14, :cond_9

    add-int/lit8 v4, v3, 0x1

    .line 603
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-ge v4, v5, :cond_9

    .line 605
    :try_start_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move v14, v4

    .line 609
    :catch_2
    :try_start_7
    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_c

    :cond_9
    move-object v12, v0

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    const/4 v2, 0x1

    goto :goto_b

    :catch_5
    move-exception v0

    const/4 v2, 0x1

    goto :goto_a

    :catch_6
    move-exception v0

    const/4 v2, 0x1

    const/16 v16, 0xa

    :goto_a
    const/16 v17, 0x2

    .line 616
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_c
    move/from16 v3, v16

    move/from16 v0, v17

    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SapTransfer---pStyle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",pIp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",pPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v0, v0, 0x400

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sap_transfer"

    if-eqz v8, :cond_e

    if-eqz v11, :cond_e

    if-lt v9, v13, :cond_c

    const/16 v5, 0x3c

    if-gt v9, v5, :cond_c

    if-eqz v6, :cond_c

    const-string v5, "\u5468\u671f\u5904\u7406"

    .line 625
    invoke-static {v7, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v5, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v5, :cond_b

    .line 628
    invoke-interface {v5, v13, v4}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 631
    :cond_b
    iget-object v10, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/16 v4, 0x320

    iget-object v5, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v6, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    iget-object v8, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v21, "sap_transfer"

    move v11, v2

    move v13, v14

    move v14, v3

    const/4 v2, 0x0

    move v15, v4

    move/from16 v16, v0

    move-object/from16 v17, v5

    move/from16 v18, v9

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    invoke-virtual/range {v10 .. v21}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_e

    :cond_c
    const/4 v5, 0x0

    const-string v6, "\u4e00\u6b21\u6027\u5904\u7406"

    .line 635
    invoke-static {v7, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v6, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v6, :cond_d

    .line 638
    invoke-interface {v6, v5, v4}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 641
    :cond_d
    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/16 v23, 0x320

    iget-object v5, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "sap_transfer"

    move-object/from16 v18, v4

    move/from16 v19, v2

    move-object/from16 v20, v12

    move/from16 v21, v14

    move/from16 v22, v3

    move/from16 v24, v0

    move-object/from16 v25, v5

    invoke-virtual/range {v18 .. v29}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_d

    .line 645
    :cond_e
    iget-object v0, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    invoke-interface {v0, v4}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    const-string v0, "enable == 0, \u4e0d\u6267\u884c"

    .line 646
    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    const/16 v15, 0xb

    .line 649
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SapTransfer \u63a2\u6d4b \u7ed3\u679c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v15
.end method

.method public startOnceSapUdp()I
    .locals 29

    move-object/from16 v1, p0

    const-string v2, "package"

    const-string v3, "dests"

    const-string v4, "dest"

    const-string v0, "cycle"

    const-string v5, "count"

    const-string v6, "enable"

    const-string v7, "ScanCore"

    const-string v8, "SapUdp \u63a2\u6d4b"

    .line 655
    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v8

    .line 658
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v9

    .line 660
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getSapUdp()Lorg/json/JSONObject;

    move-result-object v10

    const/4 v15, 0x0

    if-eqz v10, :cond_2

    .line 668
    :try_start_0
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 669
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 672
    :goto_0
    :try_start_1
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 673
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    .line 678
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v11, v6

    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_2
    move v11, v6

    move v6, v0

    :goto_3
    const/16 v12, 0xa

    const/16 v13, 0x10

    const/4 v14, -0x1

    const/16 v16, 0x0

    .line 690
    :try_start_2
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 691
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 694
    :cond_3
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 695
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object/from16 v0, v16

    .line 698
    :goto_4
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 699
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object/from16 v3, v16

    .line 702
    :goto_5
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 703
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 706
    :cond_6
    invoke-direct {v1, v3, v0}, Lcom/netease/pharos/linkcheck/ScanCore;->getFinalDest(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ":"

    .line 709
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v14, :cond_7

    add-int/lit8 v3, v2, 0x1

    .line 710
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-ge v3, v4, :cond_7

    .line 712
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v14, v3

    .line 716
    :catch_2
    :try_start_4
    invoke-virtual {v0, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :cond_7
    move-object/from16 v16, v0

    goto :goto_6

    :catch_3
    move-exception v0

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    move v2, v12

    move-object/from16 v0, v16

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SapUdp---pIp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",pPort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v4, v13, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sap_udp"

    if-eqz v8, :cond_c

    if-eqz v11, :cond_c

    const/4 v4, 0x1

    if-lt v9, v4, :cond_a

    const/16 v5, 0x3c

    if-gt v9, v5, :cond_a

    if-eqz v6, :cond_a

    const-string v5, "\u5468\u671f\u5904\u7406"

    .line 732
    invoke-static {v7, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v5, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v5, :cond_9

    .line 735
    invoke-interface {v5, v4, v3}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 738
    :cond_9
    iget-object v10, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/4 v11, 0x2

    const/16 v3, 0x320

    mul-int/lit8 v16, v13, 0x20

    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v5, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    iget-object v6, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v21, "sap_udp"

    move-object v12, v0

    move v13, v14

    move v14, v2

    const/4 v8, 0x0

    move v15, v3

    move-object/from16 v17, v4

    move/from16 v18, v9

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-virtual/range {v10 .. v21}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    const-string v4, "\u4e00\u6b21\u6027\u5904\u7406"

    .line 742
    invoke-static {v7, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v4, :cond_b

    .line 745
    invoke-interface {v4, v8, v3}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 748
    :cond_b
    iget-object v3, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    const/16 v18, 0x2

    const/16 v22, 0x320

    mul-int/lit8 v23, v13, 0x20

    iget-object v4, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "sap_udp"

    move-object/from16 v17, v3

    move-object/from16 v19, v0

    move/from16 v20, v14

    move/from16 v21, v2

    move-object/from16 v24, v4

    invoke-virtual/range {v17 .. v28}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_7

    .line 752
    :cond_c
    iget-object v0, v1, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    invoke-interface {v0, v3}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    const-string v0, "enable == 0, \u4e0d\u6267\u884c"

    .line 753
    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    const/16 v15, 0xb

    .line 756
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SapUdp \u63a2\u6d4b \u7ed3\u679c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v15
.end method

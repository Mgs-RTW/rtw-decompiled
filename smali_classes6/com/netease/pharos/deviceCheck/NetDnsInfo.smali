.class public Lcom/netease/pharos/deviceCheck/NetDnsInfo;
.super Ljava/lang/Object;
.source "NetDnsInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetDnsInfo"

.field private static sNetDnsInfo:Lcom/netease/pharos/deviceCheck/NetDnsInfo;


# instance fields
.field private mDns:Ljava/lang/String;

.field private mDns_city:Ljava/lang/String;

.field private mDns_isp:Ljava/lang/String;

.field private mDns_province:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIp_city:Ljava/lang/String;

.field private mIp_isp:Ljava/lang/String;

.field private mIp_province:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;

.field private mRes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_province:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_city:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_province:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_isp:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mRes:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_city:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_isp:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceCheck/NetDnsInfo;
    .locals 1

    .line 32
    sget-object v0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->sNetDnsInfo:Lcom/netease/pharos/deviceCheck/NetDnsInfo;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;

    invoke-direct {v0}, Lcom/netease/pharos/deviceCheck/NetDnsInfo;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->sNetDnsInfo:Lcom/netease/pharos/deviceCheck/NetDnsInfo;

    .line 35
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->sNetDnsInfo:Lcom/netease/pharos/deviceCheck/NetDnsInfo;

    return-object v0
.end method

.method public static getsNetDnsInfo()Lcom/netease/pharos/deviceCheck/NetDnsInfo;
    .locals 1

    .line 75
    sget-object v0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->sNetDnsInfo:Lcom/netease/pharos/deviceCheck/NetDnsInfo;

    return-object v0
.end method

.method public static setsNetDnsInfo(Lcom/netease/pharos/deviceCheck/NetDnsInfo;)V
    .locals 0

    .line 79
    sput-object p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->sNetDnsInfo:Lcom/netease/pharos/deviceCheck/NetDnsInfo;

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .line 183
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMmsg()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getmDns()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns:Ljava/lang/String;

    return-object v0
.end method

.method public getmDns_city()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_city:Ljava/lang/String;

    return-object v0
.end method

.method public getmDns_isp()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_isp:Ljava/lang/String;

    return-object v0
.end method

.method public getmDns_province()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_province:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_city()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_city:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_isp()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_isp:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_province()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_province:Ljava/lang/String;

    return-object v0
.end method

.method public getmRes()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mRes:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 12

    const-string v0, "msg"

    const-string v1, "dns"

    const-string v2, "dns_isp"

    const-string v3, "dns_city"

    const-string v4, "res"

    const-string v5, "ip_isp"

    const-string v6, "ip_province"

    const-string v7, "ip"

    const-string v8, "ip_city"

    const-string v9, "dns_province"

    .line 39
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89e3\u6790\u5185\u5bb9---"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "NetDnsInfo"

    invoke-static {v11, v10}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 44
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, ""

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v11

    :goto_0
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_province:Ljava/lang/String;

    .line 47
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v11

    :goto_1
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_city:Ljava/lang/String;

    .line 48
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v11

    :goto_2
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp:Ljava/lang/String;

    .line 49
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v11

    :goto_3
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_province:Ljava/lang/String;

    .line 50
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    move-object p1, v11

    :goto_4
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_isp:Ljava/lang/String;

    .line 51
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_5
    move-object p1, v11

    :goto_5
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mRes:Ljava/lang/String;

    .line 52
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_6
    move-object p1, v11

    :goto_6
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_city:Ljava/lang/String;

    .line 53
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_7
    move-object p1, v11

    :goto_7
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_isp:Ljava/lang/String;

    .line 54
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_8
    move-object p1, v11

    :goto_8
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns:Ljava/lang/String;

    .line 55
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_9
    iput-object v11, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mMsg:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_9
    return-void
.end method

.method public setMmsg(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public setmDns(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns:Ljava/lang/String;

    return-void
.end method

.method public setmDns_city(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_city:Ljava/lang/String;

    return-void
.end method

.method public setmDns_isp(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_isp:Ljava/lang/String;

    return-void
.end method

.method public setmDns_province(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_province:Ljava/lang/String;

    return-void
.end method

.method public setmIp(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp:Ljava/lang/String;

    return-void
.end method

.method public setmIp_city(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_city:Ljava/lang/String;

    return-void
.end method

.method public setmIp_isp(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_isp:Ljava/lang/String;

    return-void
.end method

.method public setmIp_province(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_province:Ljava/lang/String;

    return-void
.end method

.method public setmRes(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mRes:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\n"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mDns_province = "

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_province:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp_city = "

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp = "

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp_province = "

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_province:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp_isp = "

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mIp_isp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRes = "

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mRes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mDns_city = "

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mDns_isp = "

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns_isp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mDns = "

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mDns:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mmsg = "

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsInfo;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

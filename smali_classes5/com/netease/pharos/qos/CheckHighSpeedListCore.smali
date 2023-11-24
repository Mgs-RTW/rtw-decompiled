.class public Lcom/netease/pharos/qos/CheckHighSpeedListCore;
.super Ljava/lang/Object;
.source "CheckHighSpeedListCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HighSpeedListCore"


# instance fields
.field private mData:Lorg/json/JSONObject;

.field private mHighSpeedIpCount:I

.field private mHighSpeedUDPListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

.field private mHighSpeedUdpResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/pharos/config/CheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIp:Ljava/lang/String;

.field private mPorts:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPorts:Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedIpCount:I

    .line 52
    iput v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIndex:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;-><init>(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)V

    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUDPListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    .line 57
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPorts:Lorg/json/JSONArray;

    .line 59
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPorts:Lorg/json/JSONArray;

    invoke-virtual {p1, p2, v0}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->init(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIndex:I

    return p0
.end method

.method static synthetic access$108(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I
    .locals 2

    .line 38
    iget v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedIpCount:I

    return p0
.end method

.method static synthetic access$300(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->sort()I

    move-result p0

    return p0
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedIpCount:I

    .line 244
    iput v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIndex:I

    .line 245
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->cleanData()V

    return-void
.end method

.method private sort()I
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    const-string v1, "HighSpeedListCore"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    new-instance v2, Lcom/netease/pharos/qos/CheckHighSpeedListCore$2;

    invoke-direct {v2, p0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore$2;-><init>(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    new-instance v2, Lcom/netease/pharos/qos/CheckHighSpeedListCore$3;

    invoke-direct {v2, p0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore$3;-><init>(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckHighSpeedList [chooseBest] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    :goto_0
    return v0

    :cond_1
    :goto_1
    const-string v0, "CheckHighSpeedList [chooseBest] \u53c2\u6570\u9519\u8bef1"

    .line 252
    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xe

    return v0
.end method

.method private supportPatch()V
    .locals 2

    .line 302
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setData(Lorg/json/JSONObject;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    return-void
.end method

.method public start()I
    .locals 30

    move-object/from16 v1, p0

    const-string v2, ", port="

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->reset()V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckHighSpeedList [start] \u53c2\u6570 mIp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mPorts="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPorts:Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mData="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HighSpeedListCore"

    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v4, 0xe

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPorts:Lorg/json/JSONArray;

    if-eqz v0, :cond_c

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_c

    :cond_0
    iget-object v0, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_b

    .line 118
    :cond_1
    iget-object v0, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CheckHighSpeedList [start] \u53c2\u6570\u9519\u8bef2"

    .line 119
    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 125
    :cond_2
    iget-object v0, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 130
    invoke-static {}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->getInstance()Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    move-result-object v18

    const/16 v0, 0xb

    if-eqz v4, :cond_b

    .line 133
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v19

    const/4 v15, 0x0

    const/4 v5, 0x0

    .line 136
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 137
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 138
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CheckHighSpeedList [start] key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_7

    const/4 v13, 0x0

    .line 144
    :goto_1
    iget-object v0, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPorts:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v13, v0, :cond_6

    const/4 v6, 0x0

    .line 148
    :try_start_0
    iget-object v0, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPorts:Lorg/json/JSONArray;

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CheckHighSpeedList [start] JSONException="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v0, v6

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CheckHighSpeedList [start] mPort="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 158
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v10, 0x0

    :goto_3
    const/4 v9, 0x1

    .line 162
    :try_start_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v10, v6, :cond_5

    .line 164
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CheckHighSpeedList [start] info="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/pharos/util/Util;->string2Int(Ljava/lang/String;)I

    move-result v6

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v8, :cond_4

    const/4 v8, -0x1

    if-eq v8, v6, :cond_4

    .line 173
    :try_start_2
    iget v5, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedIpCount:I

    add-int/2addr v5, v9

    iput v5, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedIpCount:I

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CheckHighSpeedList [start]  \u662f\u5426\u8981\u8fdb\u884cudp\u63a2\u6d4b="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/pharos/PharosProxy;->ismHarborudp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CheckHighSpeedList [start]  \u63d0\u4ea4udp\u63a2\u6d4b \u53c2\u6570 ip="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", port=9999, \u6e38\u620f\u670d\u52a1\u5668port="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/PharosProxy;->ismHarborudp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v8, ","

    if-nez v5, :cond_3

    :try_start_3
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/PharosProxy;->ismHarborudp()Ljava/lang/String;

    move-result-object v5

    const-string v9, "true"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "CheckHighSpeedList [start]  \u8fdb\u884cudp\u63a2\u6d4b "

    .line 179
    invoke-static {v3, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    const/16 v17, 0x270f

    .line 180
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getUdpCount()I

    move-result v20

    const/16 v21, 0x320

    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getPackageNum()I

    move-result v5

    mul-int/lit8 v22, v5, 0x20

    const/16 v23, 0x0

    iget-object v5, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUDPListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v15, v5

    move-object/from16 v5, v18

    move v6, v9

    move/from16 v8, v17

    const/16 v28, 0x1

    move/from16 v9, v20

    move/from16 v20, v10

    move/from16 v10, v21

    move-object/from16 v21, v11

    move/from16 v11, v22

    move-object/from16 v22, v12

    move-object/from16 v12, v23

    move/from16 v23, v13

    move-object v13, v15

    move-object/from16 v29, v14

    move/from16 v14, v24

    const/16 v24, 0x0

    move-object/from16 v15, v25

    move-object/from16 v16, v26

    move-object/from16 v17, v27

    :try_start_4
    invoke-virtual/range {v5 .. v17}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->addProtocolCheckCore(ILjava/lang/String;IIIILjava/lang/String;Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move/from16 v23, v13

    move-object/from16 v29, v14

    const/16 v24, 0x0

    const/16 v28, 0x1

    const-string v5, "CheckHighSpeedList [start]  \u4e0d\u9700\u8981\u8fdb\u884cudp\u63a2\u6d4b "

    .line 183
    invoke-static {v3, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v5, Lcom/netease/pharos/config/CheckResult;

    invoke-direct {v5}, Lcom/netease/pharos/config/CheckResult;-><init>()V

    .line 185
    invoke-virtual {v5, v7}, Lcom/netease/pharos/config/CheckResult;->setIp(Ljava/lang/String;)V

    const/16 v7, 0x270f

    .line 186
    invoke-virtual {v5, v7}, Lcom/netease/pharos/config/CheckResult;->setmPort(I)V

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/pharos/config/CheckResult;->setmExtra(Ljava/lang/String;)V

    .line 188
    iget-object v6, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckHighSpeedList [start]  \u4e0d\u9700\u8981\u8fdb\u884cudp\u63a2\u6d4b mHighSpeedUdpResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    const/4 v5, 0x1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move/from16 v23, v13

    move-object/from16 v29, v14

    const/16 v24, 0x0

    const/16 v28, 0x1

    :goto_5
    const/4 v5, 0x1

    goto :goto_7

    :cond_4
    move/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move/from16 v23, v13

    move-object/from16 v29, v14

    const/16 v24, 0x0

    :goto_6
    add-int/lit8 v10, v20, 0x1

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move/from16 v13, v23

    move-object/from16 v14, v29

    const/4 v15, 0x0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move/from16 v23, v13

    move-object/from16 v29, v14

    const/16 v24, 0x0

    .line 196
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckHighSpeedList [start] Exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_5
    move/from16 v23, v13

    move-object/from16 v29, v14

    const/16 v24, 0x0

    :goto_8
    add-int/lit8 v13, v23, 0x1

    move-object/from16 v14, v29

    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_6
    const/16 v24, 0x0

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    const/16 v24, 0x0

    :goto_9
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 205
    :cond_8
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->ismHarborudp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->ismHarborudp()Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "CheckHighSpeedList [start]  \u4e0d\u9700\u8981\u8fdb\u884cudp\u63a2\u6d4b\uff0c\u76f4\u63a5\u8fd4\u56de\u7ed3\u679c"

    .line 207
    invoke-static {v3, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v2

    iget-object v4, v1, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->setHighSpeedUdpResult(Ljava/util/ArrayList;)V

    .line 211
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getmPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 214
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getResult()Lorg/json/JSONObject;

    move-result-object v4

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckHighSpeedList [start] checkHighSpeedResult="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_9

    .line 218
    invoke-virtual {v2, v4}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 219
    invoke-virtual {v2, v4}, Lcom/netease/pharos/PharosListener;->onPharosServer(Lorg/json/JSONObject;)V

    goto :goto_a

    :cond_9
    const-string v2, "qosResult is null"

    .line 222
    invoke-static {v3, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_a
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckHighSpeedList [start]  udpStart="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckHighSpeedList [start]  result="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_c
    :goto_b
    const-string v0, "CheckHighSpeedList [start] \u53c2\u6570\u9519\u8bef1"

    .line 111
    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

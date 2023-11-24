.class public Lcom/netease/ntunisdk/base/SDKPharos;
.super Ljava/lang/Object;
.source "SDKPharos.java"


# static fields
.field private static c:Lcom/netease/ntunisdk/base/SDKPharos;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/netease/pharos/PharosListener;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKPharos;->a:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKPharos;->b:Lcom/netease/pharos/PharosListener;

    const-string v0, "false"

    .line 31
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKPharos;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SDKPharos;)Lcom/netease/pharos/PharosListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SDKPharos;->b:Lcom/netease/pharos/PharosListener;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/ntunisdk/base/SDKPharos;
    .locals 4

    .line 38
    sget-object v0, Lcom/netease/ntunisdk/base/SDKPharos;->c:Lcom/netease/ntunisdk/base/SDKPharos;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/netease/ntunisdk/base/SDKPharos;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/SDKPharos;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/SDKPharos;->c:Lcom/netease/ntunisdk/base/SDKPharos;

    .line 40
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "EB"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/pharos/PharosProxy;->setmEB(Z)V

    .line 42
    sget-boolean v0, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDebug:Z

    const-string v1, "SDKPharos"

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDKPharos [getInstance] debugMode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/pharos/PharosProxy;->setDebug(Z)V

    .line 46
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/pharos/PharosProxy;->setmHasSet(Z)V

    .line 48
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/SDKPharos;->c:Lcom/netease/ntunisdk/base/SDKPharos;

    return-object v0
.end method


# virtual methods
.method public extendFunc(Ljava/lang/String;)V
    .locals 10

    const-string v0, "SDKPharos"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pharosFunc..., param json:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKPharos;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "SDKPharos"

    const-string v0, "SdkPharos Context is null"

    .line 181
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "SDKPharos"

    const-string v0, "SdkPharos params error"

    .line 186
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 193
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "force"

    .line 195
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "force"

    .line 196
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKPharos;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_0
    const-string v2, "SDKPharos"

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SdkPharos extendFunc Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "false"

    .line 201
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKPharos;->d:Ljava/lang/String;

    .line 204
    :cond_2
    :goto_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SDKSwitcher;->getInstance()Lcom/netease/ntunisdk/base/SDKSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/SDKSwitcher;->getSDKSwitcherMap()Ljava/util/HashMap;

    move-result-object p1

    .line 208
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKPharos;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    const-string v2, "true"

    iget-object v5, p0, Lcom/netease/ntunisdk/base/SDKPharos;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "SDKPharos"

    const-string v2, "SdkPharos extendFunc force open"

    .line 209
    invoke-static {p1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const-string v2, "SDKPharos"

    const-string v5, "SdkPharos extendFunc use sdk switcher"

    .line 213
    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pharos"

    .line 214
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "pharos"

    .line 215
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_5

    const-string p1, "SDKPharos"

    const-string v0, "SdkPharos is not open"

    .line 220
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    if-eqz v1, :cond_13

    :try_start_2
    const-string p1, "methodId"

    .line 226
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "methodId"

    .line 227
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "SDKPharos"

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SDKPharos methodId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v5, "JF_GAMEID"

    invoke-interface {v2, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "project"

    .line 232
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v2, "project"

    .line 233
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    :cond_6
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/ntunisdk/base/SDKPharos;->a:Landroid/content/Context;

    invoke-virtual {v5, v6, v2}, Lcom/netease/pharos/PharosProxy;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "2.5.3"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 244
    :try_start_3
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v6, v6, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    const-string v7, "pharos"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 245
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v6, v6, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    const-string v7, "pharos"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v6

    goto :goto_3

    :catch_2
    move-exception v6

    :try_start_4
    const-string v7, "SDKPharos"

    .line 249
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get SdkPharos version Exception="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-string v6, "SDKPharos"

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Pharos version ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "1.1."

    .line 254
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "pharosprobe"

    .line 256
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "options"

    .line 259
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "options"

    .line 260
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    :cond_8
    const-string p1, "decision"

    .line 264
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "decision"

    .line 265
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    :cond_9
    const-string p1, "ip"

    .line 269
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "ip"

    .line 270
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_a
    move-object p1, v0

    :goto_4
    const-string v5, "port"

    .line 274
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "port"

    .line 275
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_b
    move-object v5, v0

    :goto_5
    const-string v6, "url"

    .line 279
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "url"

    .line 280
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_c
    move-object v6, v0

    :goto_6
    const-string v7, "project"

    .line 283
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v2, "project"

    .line 284
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 287
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/ntunisdk/base/SDKPharos;->a:Landroid/content/Context;

    invoke-virtual {v7, v8, v2}, Lcom/netease/pharos/PharosProxy;->init(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d
    const-string v7, "ports"

    .line 292
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v0, "ports"

    .line 293
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_e
    const-string v7, "harborudp"

    .line 296
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "harborudp"

    .line 298
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 301
    :cond_f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 302
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/netease/pharos/PharosProxy;->setmOption(I)V

    .line 303
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/netease/pharos/PharosProxy;->setmDecision(I)V

    .line 304
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/pharos/PharosProxy;->setmIp(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/netease/pharos/PharosProxy;->setmPort(Ljava/lang/String;)V

    if-eqz v0, :cond_10

    .line 307
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_10

    .line 308
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/pharos/PharosProxy;->setmPorts(Lorg/json/JSONArray;)V

    .line 311
    :cond_10
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/netease/pharos/PharosProxy;->setmHighSpeedUrl(Ljava/lang/String;)V

    const-string p1, "SDKPharos"

    const-string v0, "SdkPharos old pharosFunc"

    .line 312
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/PharosProxy;->start()V

    return-void

    :cond_11
    const-string p1, "SDKPharos"

    const-string v0, "SdkPharos params project is null"

    .line 315
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    const-string v0, "pharos"

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "SDKPharos"

    const-string v0, "SdkPharos new pharosFunc"

    .line 322
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netease/pharos/PharosProxy;->pharosFunc(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_13
    :goto_7
    return-void
.end method

.method public getPharosSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.5.3"

    return-object v0
.end method

.method public getPharosid()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmLinktestId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKPharos;->a:Landroid/content/Context;

    return-void
.end method

.method public setPharosListener(Lcom/netease/pharos/PharosListener;)V
    .locals 2

    const-string v0, "SDKPharos"

    const-string v1, "SDKPharos [PharosListener] [setPharosListener] start"

    .line 75
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKPharos;->b:Lcom/netease/pharos/PharosListener;

    .line 80
    :cond_0
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/base/SDKPharos$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/SDKPharos$1;-><init>(Lcom/netease/ntunisdk/base/SDKPharos;)V

    invoke-virtual {p1, v0}, Lcom/netease/pharos/PharosProxy;->setmPharosListener(Lcom/netease/pharos/PharosListener;)V

    return-void
.end method

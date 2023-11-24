.class public Lcom/netease/advertSdk/SdkAppsflyer;
.super Ljava/lang/Object;
.source "SdkAppsflyer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdkAppsflyer"

.field private static ctx:Landroid/content/Context;

.field private static currencyCode:Ljava/lang/String;

.field private static devKey:Ljava/lang/String;

.field private static gaidReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/advertSdk/SdkAppsflyer;->gaidReady:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/netease/advertSdk/SdkAppsflyer;->gaidReady:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 35
    sput-boolean p0, Lcom/netease/advertSdk/SdkAppsflyer;->gaidReady:Z

    return p0
.end method

.method public static appsFlyerInit(Landroid/app/Application;)V
    .locals 10
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    const/4 v8, 0x1

    .line 234
    const-string v5, "SdkAppsflyer"

    const-string v6, "SdkAppsflyer [appsFlyerInit]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-nez p0, :cond_0

    .line 237
    const-string v5, "SdkAppsflyer"

    const-string v6, "SdkAppsflyer [appsFlyerInit] context is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/netease/advertSdk/SdkAppsflyer$1;

    invoke-direct {v1, v0}, Lcom/netease/advertSdk/SdkAppsflyer$1;-><init>(Landroid/content/Context;)V

    .line 292
    .local v1, "conversionDataListener":Lcom/appsflyer/AppsFlyerConversionListener;
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v5

    const-string v6, "appsflyer_data"

    invoke-virtual {v5, v0, v6}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Landroid/content/Context;Ljava/lang/String;)Z

    .line 294
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-virtual {v5, v6}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "isDebug":Ljava/lang/String;
    const-string v5, "SdkAppsflyer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDebug="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 297
    const-string v5, "SdkAppsflyer"

    const-string v6, "set debug mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/AFLogger$LogLevel;->VERBOSE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerLib;->setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V

    .line 299
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/appsflyer/AppsFlyerLib;->setDebugLog(Z)V

    .line 303
    :cond_1
    invoke-static {v0}, Lcom/netease/advertSdk/SdkAppsflyer;->isGaidMust(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 304
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/appsflyer/AppsFlyerLib;->waitForCustomerUserId(Z)V

    .line 305
    new-instance v5, Lcom/netease/advertSdk/SdkAppsflyer$2;

    invoke-direct {v5, v0}, Lcom/netease/advertSdk/SdkAppsflyer$2;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->getCachedGaid(Lcom/netease/ntunisdk/base/utils/GaidUtils$Callback;)Ljava/lang/String;

    .line 315
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/netease/advertSdk/SdkAppsflyer$3;

    invoke-direct {v6, v0}, Lcom/netease/advertSdk/SdkAppsflyer$3;-><init>(Landroid/content/Context;)V

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    :goto_1
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v5

    const-string v6, "APPSFLYER_DEV_KEY"

    invoke-virtual {v5, v6}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "devKey":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    .line 333
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 327
    .end local v2    # "devKey":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static appsflyerInit(Landroid/app/Application;)V
    .locals 0
    .param p0, "context"    # Landroid/app/Application;

    .prologue
    .line 229
    invoke-static {p0}, Lcom/netease/advertSdk/SdkAppsflyer;->appsFlyerInit(Landroid/app/Application;)V

    .line 230
    return-void
.end method

.method public static handleCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "eventValue"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v3, "SdkAppsflyer"

    const-string v4, "SdkAppsflyer [handleCustomEvent]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    const-string v3, "SdkAppsflyer"

    const-string v4, "eventName is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v3, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 175
    const-string v3, "SdkAppsflyer"

    const-string v4, "ctx is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_1
    const-string v3, "stopTracking"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    const-string v3, "SdkAppsflyer"

    const-string v4, "stopTracking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/appsflyer/AppsFlyerLib;->stop(ZLandroid/content/Context;)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    sget-object v4, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 186
    :cond_3
    invoke-static {p1}, Lcom/netease/advertSdk/base/JsonUtils;->isJson(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 190
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "setPartnerData"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    const-string v3, "partnerId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "partnerId":Ljava/lang/String;
    const-string v3, "partnerId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-static {v1}, Lcom/netease/advertSdk/base/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/appsflyer/AppsFlyerLib;->setPartnerData(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "partnerId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    sget-object v4, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1}, Lcom/netease/advertSdk/base/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3, v4, p0, v5}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 202
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_5
    const-string v3, "SdkAppsflyer"

    const-string v4, "eventValue is not json"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static handleCustomerUserId(Ljava/lang/String;)V
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "SdkAppsflyer"

    const-string v1, "userId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static handleDeepLink()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "SdkAppsflyer"

    const-string v1, "sendDeepLinkData is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public static handleLevel(Ljava/lang/String;)V
    .locals 4
    .param p0, "level"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "SdkAppsflyer"

    const-string v2, "level is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 121
    :cond_0
    sget-object v1, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 122
    const-string v1, "SdkAppsflyer"

    const-string v2, "ctx is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_1
    const-string v1, "SdkAppsflyer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v0, "eventValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "af_level"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    sget-object v2, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    const-string v3, "af_level_achieved"

    invoke-virtual {v1, v2, v3, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static handleLogin(Ljava/lang/String;)V
    .locals 4
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "SdkAppsflyer"

    const-string v1, "ctx is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    const-string v2, "af_login"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static handlePurchase(Ljava/lang/String;)V
    .locals 4
    .param p0, "money"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "SdkAppsflyer"

    const-string v2, "money is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    sget-object v1, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 143
    const-string v1, "SdkAppsflyer"

    const-string v2, "ctx is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v0, "eventValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "af_revenue"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    sget-object v2, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    const-string v3, "af_purchase"

    invoke-virtual {v1, v2, v3, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static handleRegister(Ljava/lang/String;)V
    .locals 4
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-object v1, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 103
    const-string v1, "SdkAppsflyer"

    const-string v2, "ctx is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v1, "SdkAppsflyer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v0, "eventValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    const-string v1, "af_registration_method"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    sget-object v2, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    const-string v3, "af_complete_registration"

    invoke-virtual {v1, v2, v3, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "mCtx"    # Landroid/content/Context;
    .param p1, "mDevKey"    # Ljava/lang/String;
    .param p2, "mCurrencyCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 45
    const-string v2, "SdkAppsflyer"

    const-string v3, "appsflyer init!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sput-object p1, Lcom/netease/advertSdk/SdkAppsflyer;->devKey:Ljava/lang/String;

    .line 47
    sput-object p0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    .line 48
    sput-object p2, Lcom/netease/advertSdk/SdkAppsflyer;->currencyCode:Ljava/lang/String;

    .line 50
    sget-object v2, Lcom/netease/advertSdk/SdkAppsflyer;->devKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const-string v2, "SdkAppsflyer"

    const-string v3, "devKey is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget-object v2, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 56
    const-string v2, "SdkAppsflyer"

    const-string v3, "ctx is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "afUid":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "AppUserId"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "afAppUserId":Ljava/lang/String;
    const-string v2, "SdkAppsflyer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", afAppUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v2

    const-string v3, "APPSFLYER_UID"

    invoke-virtual {v2, v3, v1}, Lcom/netease/advertSdk/base/AdvertMgr;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v2

    const-string v3, "APPSFLYER_APP_USER_ID"

    invoke-virtual {v2, v3, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/appsflyer/AppsFlyerLib;->setCollectIMEI(Z)V

    .line 85
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/appsflyer/AppsFlyerLib;->setCollectAndroidID(Z)V

    .line 87
    sget-object v2, Lcom/netease/advertSdk/SdkAppsflyer;->currencyCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    sget-object v3, Lcom/netease/advertSdk/SdkAppsflyer;->currencyCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerLib;->setCurrencyCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isGaidMust(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 338
    const/4 v10, 0x0

    .line 339
    .local v10, "jsonStr":Ljava/lang/String;
    const-string v5, "ntunisdk_config"

    .line 340
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 341
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v7, 0x0

    .line 344
    .local v7, "is":Ljava/io/InputStream;
    const/4 v12, 0x3

    :try_start_0
    invoke-virtual {v1, v5, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 345
    if-nez v7, :cond_0

    .line 346
    const-string v5, "ntunisdk.cfg"

    .line 347
    const/4 v12, 0x3

    invoke-virtual {v1, v5, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 349
    :cond_0
    if-eqz v7, :cond_3

    .line 350
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 351
    .local v6, "index":I
    if-lez v6, :cond_3

    .line 352
    new-array v3, v6, [B

    .line 353
    .local v3, "data":[B
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    .line 354
    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v11, v3, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .end local v10    # "jsonStr":Ljava/lang/String;
    .local v11, "jsonStr":Ljava/lang/String;
    :try_start_1
    const-string v12, "SdkAppsflyer"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v9, Lorg/json/JSONTokener;

    invoke-direct {v9, v11}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    .local v9, "jsonParser":Lorg/json/JSONTokener;
    const/4 v2, 0x0

    .line 359
    .local v2, "conf":Lorg/json/JSONObject;
    :try_start_2
    invoke-virtual {v9}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    .line 360
    const-string v12, "NO_ANDROIDID"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    .line 361
    .local v8, "isGaidMust":I
    if-ne v8, v13, :cond_2

    move v12, v13

    .line 371
    :goto_0
    if-eqz v7, :cond_1

    .line 373
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    move-object v10, v11

    .line 379
    .end local v2    # "conf":Lorg/json/JSONObject;
    .end local v3    # "data":[B
    .end local v6    # "index":I
    .end local v8    # "isGaidMust":I
    .end local v9    # "jsonParser":Lorg/json/JSONTokener;
    .end local v11    # "jsonStr":Ljava/lang/String;
    .restart local v10    # "jsonStr":Ljava/lang/String;
    :goto_2
    return v12

    .end local v10    # "jsonStr":Ljava/lang/String;
    .restart local v2    # "conf":Lorg/json/JSONObject;
    .restart local v3    # "data":[B
    .restart local v6    # "index":I
    .restart local v8    # "isGaidMust":I
    .restart local v9    # "jsonParser":Lorg/json/JSONTokener;
    .restart local v11    # "jsonStr":Ljava/lang/String;
    :cond_2
    move v12, v14

    .line 361
    goto :goto_0

    .line 362
    .end local v8    # "isGaidMust":I
    :catch_0
    move-exception v4

    .line 363
    .local v4, "e":Lorg/json/JSONException;
    :try_start_4
    const-string v12, "SdkAppsflyer"

    const-string v13, "ntunisdk_config/ntunisdk.cfg config parse to json error"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v10, v11

    .line 371
    .end local v2    # "conf":Lorg/json/JSONObject;
    .end local v3    # "data":[B
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v6    # "index":I
    .end local v9    # "jsonParser":Lorg/json/JSONTokener;
    .end local v11    # "jsonStr":Ljava/lang/String;
    .restart local v10    # "jsonStr":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 373
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_3
    move v12, v14

    .line 379
    goto :goto_2

    .line 368
    :catch_1
    move-exception v4

    .line 369
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v12, "SdkAppsflyer"

    const-string v13, "ntunisdk_config/ntunisdk.cfg config not found"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 371
    if-eqz v7, :cond_4

    .line 373
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 374
    :catch_2
    move-exception v12

    goto :goto_3

    .line 371
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v7, :cond_5

    .line 373
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 375
    :cond_5
    :goto_6
    throw v12

    .line 374
    .end local v10    # "jsonStr":Ljava/lang/String;
    .restart local v2    # "conf":Lorg/json/JSONObject;
    .restart local v3    # "data":[B
    .restart local v6    # "index":I
    .restart local v8    # "isGaidMust":I
    .restart local v9    # "jsonParser":Lorg/json/JSONTokener;
    .restart local v11    # "jsonStr":Ljava/lang/String;
    :catch_3
    move-exception v13

    goto :goto_1

    .end local v2    # "conf":Lorg/json/JSONObject;
    .end local v3    # "data":[B
    .end local v6    # "index":I
    .end local v8    # "isGaidMust":I
    .end local v9    # "jsonParser":Lorg/json/JSONTokener;
    .end local v11    # "jsonStr":Ljava/lang/String;
    .restart local v10    # "jsonStr":Ljava/lang/String;
    :catch_4
    move-exception v12

    goto :goto_3

    :catch_5
    move-exception v13

    goto :goto_6

    .line 371
    .end local v10    # "jsonStr":Ljava/lang/String;
    .restart local v3    # "data":[B
    .restart local v6    # "index":I
    .restart local v11    # "jsonStr":Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v10, v11

    .end local v11    # "jsonStr":Ljava/lang/String;
    .restart local v10    # "jsonStr":Ljava/lang/String;
    goto :goto_5

    .line 368
    .end local v10    # "jsonStr":Ljava/lang/String;
    .restart local v11    # "jsonStr":Ljava/lang/String;
    :catch_6
    move-exception v4

    move-object v10, v11

    .end local v11    # "jsonStr":Ljava/lang/String;
    .restart local v10    # "jsonStr":Ljava/lang/String;
    goto :goto_4
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 219
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 213
    :cond_0
    return-void
.end method

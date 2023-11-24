.class final Lcom/netease/ntunisdk/base/SdkBase$57;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/HTTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->c(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 2051
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const-string p2, "UniSDK Base"

    .line 2054
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/createorder result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string p1, "UniSDK Base"

    const-string p2, "/createorder no response"

    .line 2056
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 2058
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    const-string p2, "create order fail"

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 2059
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return v1

    .line 2063
    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 2064
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "subcode"

    .line 2065
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "err"

    .line 2067
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg"

    .line 2068
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "popup"

    const-string v6, "None"

    .line 2069
    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "aas_ff_code"

    const/4 v7, -0x1

    .line 2070
    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "aas_ff_rule"

    .line 2071
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "aas_version"

    .line 2072
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2074
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    .line 2075
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 2076
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_1

    .line 2077
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2079
    :cond_1
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2082
    :cond_2
    iget-object v8, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v10, "AAS_VERSION"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v8, 0x1a4

    if-ne v8, p1, :cond_5

    const-string v4, "message"

    .line 2086
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2087
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    move-object v3, v4

    :cond_4
    const-string v8, "None"

    .line 2090
    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v5, "1"

    .line 2094
    :cond_5
    iget-object v8, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v8, p1}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfCode(I)V

    .line 2095
    iget-object v8, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v8, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfSubCode(I)V

    .line 2096
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfMessage(Ljava/lang/String;)V

    .line 2097
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v2, v6}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfAasFfCode(I)V

    .line 2098
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v2, v7}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfAasFfRule(Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-ne v2, p1, :cond_a

    const-string p1, "sn"

    .line 2101
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2102
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v3, "VIRTUAL_ORDER"

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "data"

    .line 2103
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "consumesn"

    .line 2104
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2105
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    const-string v4, "consumesn"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setSdkOrderId(Ljava/lang/String;)V

    :cond_6
    const-string v2, "etc"

    .line 2108
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdkOrderId"

    .line 2109
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "signature"

    .line 2110
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2111
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v4, p1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 2112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 2113
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderEtc(Ljava/lang/String;)V

    .line 2115
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 2116
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->setSdkOrderId(Ljava/lang/String;)V

    .line 2118
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 2119
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setSignature(Ljava/lang/String;)V

    :cond_9
    const-string p1, "UniSDK Base"

    const-string p2, "/createorder success"

    .line 2121
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return v1

    .line 2127
    :cond_a
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {p1, v5, v4, v7}, Lcom/netease/ntunisdk/base/JfGas;->createOrderTips(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2129
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    const-string p1, "UniSDK Base"

    const-string p2, "/createorder fail"

    .line 2132
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 2134
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    const-string p2, "create order fail"

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 2135
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$57;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return v1
.end method

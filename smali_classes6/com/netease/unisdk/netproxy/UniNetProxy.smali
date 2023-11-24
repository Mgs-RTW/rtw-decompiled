.class public Lcom/netease/unisdk/netproxy/UniNetProxy;
.super Ljava/lang/Object;
.source "UniNetProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static httpGet(Ljava/lang/String;Lcom/netease/unisdk/netproxy/NetProxyCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0, p1}, Lcom/netease/unisdk/netproxy/UniNetProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;Lcom/netease/unisdk/netproxy/NetProxyCallback;)V

    return-void
.end method

.method public static httpGet(Ljava/lang/String;Ljava/lang/String;ILcom/netease/unisdk/netproxy/NetProxyCallback;)V
    .locals 9

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 32
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v5, v1

    .line 37
    :goto_0
    invoke-static {}, Lcom/netease/unisdk/netproxy/NetProxyManager;->getInstance()Lcom/netease/unisdk/netproxy/NetProxyManager;

    move-result-object v2

    const/4 v6, 0x0

    const-string v4, "GET"

    move-object v3, p0

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/netease/unisdk/netproxy/NetProxyManager;->request(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILcom/netease/unisdk/netproxy/NetProxyCallback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static httpGet(Ljava/lang/String;Ljava/lang/String;Lcom/netease/unisdk/netproxy/NetProxyCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, p1, v0, p2}, Lcom/netease/unisdk/netproxy/UniNetProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;ILcom/netease/unisdk/netproxy/NetProxyCallback;)V

    return-void
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;Lcom/netease/unisdk/netproxy/NetProxyCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, v0, p1, p2}, Lcom/netease/unisdk/netproxy/UniNetProxy;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/unisdk/netproxy/NetProxyCallback;)V

    return-void
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/unisdk/netproxy/NetProxyCallback;)V
    .locals 9

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 56
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v5, v1

    .line 61
    :goto_0
    invoke-static {}, Lcom/netease/unisdk/netproxy/NetProxyManager;->getInstance()Lcom/netease/unisdk/netproxy/NetProxyManager;

    move-result-object v2

    const-string v4, "POST"

    move-object v3, p0

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/netease/unisdk/netproxy/NetProxyManager;->request(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILcom/netease/unisdk/netproxy/NetProxyCallback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/unisdk/netproxy/NetProxyCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, p2, v0, p3}, Lcom/netease/unisdk/netproxy/UniNetProxy;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/unisdk/netproxy/NetProxyCallback;)V

    return-void
.end method

.method public static response(Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/netease/unisdk/netproxy/NetProxyManager;->getInstance()Lcom/netease/unisdk/netproxy/NetProxyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/unisdk/netproxy/NetProxyManager;->response(Ljava/lang/String;)V

    return-void
.end method

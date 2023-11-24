.class final Lcom/netease/ntunisdk/base/JfGas$2;
.super Ljava/lang/Object;
.source "JfGas.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/HTTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic b:Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;

.field final synthetic c:Lcom/netease/ntunisdk/base/JfGas;

.field final synthetic d:Lcom/netease/ntunisdk/base/OrderInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/JfGas;Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/JfGas$2;->b:Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;

    iput-object p4, p0, Lcom/netease/ntunisdk/base/JfGas$2;->d:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    .line 451
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "step"

    const-string v1, "createOrder_res"

    .line 453
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "res"

    .line 454
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UniSDK JfGas"

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extraJson:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    const-string p2, "UniSDK JfGas"

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/createorder result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string p1, "UniSDK JfGas"

    const-string p2, "/createorder no response"

    .line 461
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 463
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    const-string p2, "create order fail"

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 464
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return v1

    .line 468
    :cond_0
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    .line 469
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "subcode"

    .line 470
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "status"

    .line 472
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "msg"

    .line 473
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "popup"

    const-string v7, "None"

    .line 474
    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "aas_ff_code"

    const/4 v8, -0x1

    .line 475
    invoke-virtual {p2, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "aas_ff_rule"

    .line 476
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "aas_version"

    .line 477
    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 479
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    .line 480
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 481
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_1

    .line 482
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 484
    :cond_1
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 487
    :cond_2
    iget-object v9, p0, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {v9}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v9

    const-string v11, "AAS_VERSION"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_3
    iget-object v9, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v9, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfCode(I)V

    .line 491
    iget-object v9, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v9, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfSubCode(I)V

    .line 492
    iget-object v9, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v9, v4}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfMessage(Ljava/lang/String;)V

    .line 493
    iget-object v4, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v4, v7}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfAasFfCode(I)V

    .line 494
    iget-object v4, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v4, v8}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfAasFfRule(Ljava/lang/String;)V

    const/16 v4, 0xc8

    if-ne v4, v2, :cond_5

    .line 497
    iget-object v2, p0, Lcom/netease/ntunisdk/base/JfGas$2;->b:Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;

    if-eqz v2, :cond_4

    const-string p2, "UniSDK JfGas"

    const-string v2, "create order callbackResult"

    .line 498
    invoke-static {p2, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$2;->b:Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;

    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;->callbackResult(Ljava/lang/String;)V

    goto :goto_3

    .line 502
    :cond_4
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, p2, v2}, Lcom/netease/ntunisdk/base/JfGas;->processWhenJfSuc(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/OrderInfo;)V

    :goto_3
    return v1

    :cond_5
    const/16 p1, 0x1cc

    if-ne p1, v2, :cond_6

    const/16 p1, 0xd

    if-ne p1, v3, :cond_6

    .line 506
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string p2, "MODE_HAS_LVU_DIALOG"

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 507
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "methodId"

    const-string v2, "openLVU"

    .line 508
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "channel"

    .line 509
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "orderInfo"

    .line 510
    iget-object v2, p0, Lcom/netease/ntunisdk/base/JfGas$2;->d:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/OrderInfo;->obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V

    return v1

    :cond_6
    const/16 p1, 0x1ae

    if-ne p1, v2, :cond_7

    if-nez v3, :cond_7

    .line 515
    iget-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    const-string p1, "None"

    .line 516
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string v6, "1"

    goto :goto_4

    .line 520
    :cond_7
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 522
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object p1

    invoke-static {p1, v6, v5, v8}, Lcom/netease/ntunisdk/base/JfGas;->createOrderTips(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    const-string p2, "UniSDK JfGas"

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/createorder fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    :goto_5
    const-string p1, "UniSDK JfGas"

    const-string p2, "/createorder fail"

    .line 527
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    const-string p2, "create order fail"

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return v1
.end method

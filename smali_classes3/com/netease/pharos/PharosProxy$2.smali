.class Lcom/netease/pharos/PharosProxy$2;
.super Ljava/lang/Object;
.source "PharosProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/PharosProxy;->pharosFunc(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/PharosProxy;

.field final synthetic val$paramJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    iput-object p2, p0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 404
    iget-object v1, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v2, "PharosProxy"

    if-nez v1, :cond_0

    const-string v1, "PharosProxy [pharosFunc] paramJson is null "

    .line 405
    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 409
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PharosProxy [pharosFunc] paramJson ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v1, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v3, "methodId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 413
    iget-object v1, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PharosProxy [pharosFunc] methodId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 419
    iget-object v3, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v4, "options"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    iget-object v3, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 421
    iget-object v4, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v4, v3}, Lcom/netease/pharos/PharosProxy;->setmOption(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 425
    :goto_0
    iget-object v4, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v6, "decision"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    iget-object v4, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 427
    iget-object v6, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v6, v4}, Lcom/netease/pharos/PharosProxy;->setmDecision(I)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 431
    :goto_1
    iget-object v6, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v8, "ip"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    .line 432
    iget-object v6, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 433
    iget-object v8, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v8, v6}, Lcom/netease/pharos/PharosProxy;->setmIp(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v6, v9

    .line 437
    :goto_2
    iget-object v8, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v10, "port"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 438
    iget-object v8, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 439
    iget-object v10, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v10, v8}, Lcom/netease/pharos/PharosProxy;->setmPort(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v8, v9

    .line 443
    :goto_3
    iget-object v10, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v11, "ports"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 444
    iget-object v10, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 445
    iget-object v11, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v11, v10}, Lcom/netease/pharos/PharosProxy;->setmPorts(Lorg/json/JSONArray;)V

    goto :goto_4

    :cond_5
    move-object v10, v9

    .line 449
    :goto_4
    iget-object v11, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v12, "url"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 450
    iget-object v11, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 451
    iget-object v12, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v12, v11}, Lcom/netease/pharos/PharosProxy;->setmHighSpeedUrl(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object v11, v9

    .line 455
    :goto_5
    iget-object v12, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v13, "qos_ip"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 456
    iget-object v12, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 457
    iget-object v13, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v13, v12}, Lcom/netease/pharos/PharosProxy;->setmQosIp(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object v12, v9

    .line 461
    :goto_6
    iget-object v13, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v14, "qos_ips"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 462
    iget-object v9, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 463
    iget-object v13, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v13, v9}, Lcom/netease/pharos/PharosProxy;->setmQosIps(Lorg/json/JSONArray;)V

    .line 466
    :cond_8
    iget-object v13, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v14, "harborudp"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 467
    iget-object v13, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    iget-object v15, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/pharos/PharosProxy;->access$102(Lcom/netease/pharos/PharosProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    iget-object v13, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-static {v13}, Lcom/netease/pharos/PharosProxy;->access$100(Lcom/netease/pharos/PharosProxy;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/netease/pharos/PharosProxy;->setmHarborudp(Ljava/lang/String;)V

    .line 473
    :cond_9
    iget-object v15, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v13, "duration"

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 474
    iget-object v14, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_7

    :cond_a
    const-wide/16 v13, 0x0

    .line 477
    :goto_7
    iget-object v15, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    const-string v7, "logopen"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 478
    iget-object v15, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 479
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PharosProxy [pharosFunc] param logOpen ="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "true"

    .line 483
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    .line 484
    invoke-static {v5}, Lcom/netease/pharos/util/LogUtil;->setIsShowLog(Z)V

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    .line 487
    invoke-static {v5}, Lcom/netease/pharos/util/LogUtil;->setIsShowLog(Z)V

    .line 492
    :cond_c
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PharosProxy [pharosFunc] ip ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,ports="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", qosIp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", options="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", decision="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pharosprobe"

    .line 495
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "pharos_probe"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto/16 :goto_f

    :cond_d
    const-string v3, "pharospolicy"

    .line 499
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "pharos_policy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto/16 :goto_e

    :cond_e
    const-string v3, "pharosharbor"

    .line 503
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "pharos_harbor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_d

    :cond_f
    const-string v3, "pharosqosprobe"

    .line 507
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "pharos_qos_probe"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_c

    :cond_10
    const-string v3, "pharosqosstatus"

    .line 511
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "pharos_qos_status"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_b

    :cond_11
    const-string v3, "pharosqosexec"

    .line 515
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "pharos_qos_exec"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_a

    :cond_12
    const-string v3, "pharosqoscancel"

    .line 519
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "pharos_qos_cancel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_9

    :cond_13
    const-string v3, "pharos_login_info_upload"

    .line 523
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 524
    iget-object v1, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    iget-object v2, v0, Lcom/netease/pharos/PharosProxy$2;->val$paramJson:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/netease/pharos/PharosProxy;->pharosLoginInfoUpload(Lorg/json/JSONObject;)V

    goto :goto_10

    :cond_14
    const-string v1, "PharosProxy [pharosFunc] methodId is error "

    .line 527
    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 521
    :cond_15
    :goto_9
    iget-object v1, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v1, v9}, Lcom/netease/pharos/PharosProxy;->pharosqoscancel(Lorg/json/JSONArray;)V

    goto :goto_10

    .line 517
    :cond_16
    :goto_a
    iget-object v1, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v1, v9, v13, v14}, Lcom/netease/pharos/PharosProxy;->pharosqosexec(Lorg/json/JSONArray;J)V

    goto :goto_10

    .line 513
    :cond_17
    :goto_b
    iget-object v1, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v1, v9}, Lcom/netease/pharos/PharosProxy;->pharosqosstatus(Lorg/json/JSONArray;)V

    goto :goto_10

    .line 509
    :cond_18
    :goto_c
    iget-object v1, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->pharosqosprobe()V

    goto :goto_10

    .line 505
    :cond_19
    :goto_d
    iget-object v1, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->pharosharbor()V

    goto :goto_10

    .line 501
    :cond_1a
    :goto_e
    iget-object v1, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->pharospolicy()V

    goto :goto_10

    .line 497
    :cond_1b
    :goto_f
    iget-object v1, v0, Lcom/netease/pharos/PharosProxy$2;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->start()V

    :cond_1c
    :goto_10
    return-void
.end method

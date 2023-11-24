.class Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;
.super Ljava/lang/Object;
.source "DeviceDataCenter.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getDevicePerformanceScore(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

.field final synthetic val$deviceInfo:Ljava/lang/String;

.field final synthetic val$platform:Ljava/lang/String;

.field final synthetic val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/GamerInterface;)V
    .locals 0

    .line 2886
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$deviceInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$platform:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ProcessResult(Ljava/lang/String;)V
    .locals 8

    const-string v0, "DataCenter"

    .line 2891
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [getDevicePerformanceScore] result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2901
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2904
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$deviceInfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2905
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$deviceInfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 2908
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "___"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "___"

    .line 2909
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2910
    array-length v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2911
    aget-object v3, p1, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x1

    .line 2912
    :try_start_1
    aget-object p1, p1, v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_2

    :cond_1
    move-object p1, v2

    move-object v3, p1

    :goto_1
    :try_start_2
    const-string v4, "score_range"

    .line 2917
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "score_range"

    .line 2918
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, v2

    move-object v3, v0

    :goto_2
    const-string v4, "DataCenter"

    .line 2922
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DataCenter [getDevicePerformanceScore] JSONException="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object p1, v0

    goto :goto_3

    :cond_2
    move-object p1, v2

    move-object v3, p1

    :cond_3
    :goto_3
    const-string v0, "DataCenter"

    .line 2927
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getDevicePerformanceScore] cpu="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", score_result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", score_range="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2931
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "methodId"

    const-string v5, "device_performance_score"

    .line 2932
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cpu"

    .line 2933
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "score"

    .line 2934
    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "score_range"

    .line 2935
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2937
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "code"

    .line 2938
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg"

    const-string v4, "success"

    .line 2939
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2940
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEVICE_INFO_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$deviceInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    const-string v4, "DEVICE_INFO_RANGE"

    invoke-static {v1, v4, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 2942
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    const-string v4, "DEVICE_INFO_CPU_NAME"

    invoke-static {v1, v4, v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$deviceInfo:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$platform:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2945
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_PERFORMANCE_SCORE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    :cond_4
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEVICE_INFO_PERFORMANCE_SCORE_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$deviceInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v1, "DEVICE_INFO_PERFORMANCE_SCORE_RANGE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2951
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v1, "DEVICE_INFO_CPU_NAME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string p1, "code"

    const/4 v1, -0x1

    .line 2955
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "msg"

    const-string v1, "fail"

    .line 2956
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2958
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v1, "DEVICE_INFO_PERFORMANCE_SCORE"

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getDefaultScore()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v1, "DEVICE_INFO_PERFORMANCE_SCORE_RANGE"

    const-string v2, "0:6200"

    invoke-interface {p1, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DataCenter"

    .line 2962
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [getDevicePerformanceScore] default score="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_PERFORMANCE_SCORE"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$6100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)V

    .line 2967
    :goto_4
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p1

    const-string v0, "DataCenter"

    .line 2970
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [getDevicePerformanceScore] Exception1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.class final Lcom/netease/ntunisdk/base/function/i$1;
.super Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;
.source "UploadRealName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/function/i;->a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(ILorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->a:I

    iput-object p2, p0, Lcom/netease/ntunisdk/base/function/i$1;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string p2, "UploadRealName"

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload_realname processResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/netease/ntunisdk/base/function/i$1;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "UploadRealName"

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload_realname processResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget p2, p0, Lcom/netease/ntunisdk/base/function/i$1;->a:I

    .line 53
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "step"

    const-string v1, "upload_realname"

    .line 55
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "request"

    .line 56
    iget-object v1, p0, Lcom/netease/ntunisdk/base/function/i$1;->c:Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "response"

    const-string v1, "no response"

    .line 57
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "responseCode"

    .line 58
    iget v1, p0, Lcom/netease/ntunisdk/base/function/i$1;->responseCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "exception"

    .line 59
    iget-object v1, p0, Lcom/netease/ntunisdk/base/function/i$1;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v3, "UNISDK_LOGIN_ERR_MSG"

    invoke-virtual {v0, v3, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string v0, "response"

    .line 69
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "response"

    .line 71
    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "code"

    .line 73
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xc8

    if-eq v3, v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "upload_realname result code != 200, result:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UploadRealName"

    .line 77
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v3, "UNISDK_LOGIN_ERR_MSG"

    invoke-virtual {v0, v3, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget v0, p0, Lcom/netease/ntunisdk/base/function/i$1;->a:I

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/function/j;->a(Lcom/netease/ntunisdk/base/SdkBase;I)V

    .line 86
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception p1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "upload_realname json result exception:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UploadRealName"

    .line 92
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v3, "UNISDK_LOGIN_ERR_MSG"

    invoke-virtual {v0, v3, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "upload_realname result is invalid"

    const-string v0, "UploadRealName"

    .line 99
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v3, "UNISDK_LOGIN_ERR_MSG"

    invoke-virtual {v0, v3, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v0, "LOGIN_STAT"

    invoke-virtual {p1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    .line 108
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/i$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->jfCheckRealNameDone(I)V

    return v2
.end method

.class final Lcom/netease/ntunisdk/base/function/h$1;
.super Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;
.source "UniSauth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/function/h;->a(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;ZLcom/netease/ntunisdk/base/SdkBase;IZ)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->e:Lorg/json/JSONObject;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/base/function/h$1;->d:Z

    iput-object p3, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput p4, p0, Lcom/netease/ntunisdk/base/function/h$1;->c:I

    iput-boolean p5, p0, Lcom/netease/ntunisdk/base/function/h$1;->b:Z

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string p2, "UniSauth"

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uni_sauth processResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/netease/ntunisdk/base/function/h$1;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "UniSauth"

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uni_sauth processResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "step"

    const-string v1, "uni_sauth"

    .line 86
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "request"

    .line 87
    iget-object v1, p0, Lcom/netease/ntunisdk/base/function/h$1;->e:Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "response"

    const-string v1, "no response"

    .line 88
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "responseCode"

    .line 89
    iget v1, p0, Lcom/netease/ntunisdk/base/function/h$1;->responseCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "exception"

    .line 90
    iget-object v1, p0, Lcom/netease/ntunisdk/base/function/h$1;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    const-string v0, "response"

    .line 98
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 101
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "response"

    .line 103
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    iget v2, p0, Lcom/netease/ntunisdk/base/function/h$1;->responseCode:I

    const/16 v3, 0x249

    if-ne v3, v2, :cond_0

    if-ne v3, v1, :cond_0

    iget-boolean v2, p0, Lcom/netease/ntunisdk/base/function/h$1;->d:Z

    if-nez v2, :cond_0

    const-string p1, "UniSauth"

    const-string v0, "uni_sauth fallback!!!"

    .line 107
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "UNI_SAUTH_FALLBACK"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 109
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget v0, p0, Lcom/netease/ntunisdk/base/function/h$1;->c:I

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->jfCheckRealNameDone(I)V

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0xc8

    if-ne v2, v1, :cond_3

    const-string p1, "unisdk_login_json"

    .line 112
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "UNISDK_LOGIN_JSON"

    invoke-interface {v1, v2, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setBackSauthLoginJson(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v1, "SAUTH_RESPONSE_REALNAME_MSG"

    const-string v2, "realname_msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v1, "SAUTH_RESPONSE_AAS_MSG"

    const-string v2, "aas_msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-boolean p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->d:Z

    if-nez p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/SdkBase;->setLoginSauthInfo()V

    .line 134
    :cond_1
    iget-boolean p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->b:Z

    if-eqz p1, :cond_2

    .line 135
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget v0, p0, Lcom/netease/ntunisdk/base/function/h$1;->c:I

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->checkRealName(I)V

    goto :goto_1

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget v0, p0, Lcom/netease/ntunisdk/base/function/h$1;->c:I

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/function/j;->a(Lcom/netease/ntunisdk/base/SdkBase;I)V

    goto :goto_1

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uni_sauth result code != 200, result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_LOGIN_ERR_MSG"

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UniSauth"

    .line 146
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/function/h;->a(Lcom/netease/ntunisdk/base/SdkBase;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uni_sauth result json exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_LOGIN_ERR_MSG"

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UniSauth"

    .line 152
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/function/h;->a(Lcom/netease/ntunisdk/base/SdkBase;)V

    goto :goto_1

    :cond_4
    const-string p1, "uni_sauth result is invalid"

    .line 157
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_LOGIN_ERR_MSG"

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UniSauth"

    .line 158
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/function/h;->a(Lcom/netease/ntunisdk/base/SdkBase;)V

    .line 162
    :goto_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/h$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

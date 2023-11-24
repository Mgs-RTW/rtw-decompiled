.class public Lcom/netease/ntunisdk/SdkExtend;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkExtend.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "extend"

.field private static final SDK_VERSION:Ljava/lang/String; = "1.0.5"

.field private static final TAG:Ljava/lang/String; = "SdkExtend"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const-string p1, "INNER_MODE_SECOND_CHANNEL"

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkExtend;->setPropInt(Ljava/lang/String;I)V

    const-string p1, "INNER_MODE_NO_PAY"

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkExtend;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SdkExtend"

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 119
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->getInstance()Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkExtend;->myCtx:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, p0, v2}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    const-string v0, "SdkExtend"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 137
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->getInstance()Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    move-result-object v2

    iget-object v6, p0, Lcom/netease/ntunisdk/SdkExtend;->myCtx:Landroid/content/Context;

    move-object v5, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "extend"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkExtend;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SESSION"

    .line 50
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkExtend;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_login"

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkExtend;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UIN"

    .line 59
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkExtend;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.5"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkExtend;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 2

    const-string v0, "FEATURE_HAS_SHARE"

    const/4 v1, 0x1

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkExtend;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "SdkExtend"

    const-string v1, "init..."

    .line 34
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    return-void
.end method

.method public login()V
    .locals 2

    const-string v0, "UIN"

    const-string v1, "SdkExtendUid"

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkExtend;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SESSION"

    const-string v1, "SdkExtendSession"

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkExtend;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LOGIN_STAT"

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkExtend;->setPropInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkExtend;->loginDone(I)V

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 160
    invoke-static {}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->getInstance()Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    move-result-object v0

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkExtend;->myCtx:Landroid/content/Context;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->onActivityResult(IILandroid/content/Intent;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V

    return-void
.end method

.method public sdkOnRestart()V
    .locals 0

    .line 92
    invoke-static {}, Lcom/netease/ntunisdk/ExtendStartupRecord;->onRestart()V

    return-void
.end method

.method public sdkOnResume()V
    .locals 2

    .line 86
    invoke-static {}, Lcom/netease/ntunisdk/ExtendStartupRecord;->rewrite()V

    .line 87
    invoke-static {}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->getInstance()Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkExtend;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->onResume(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V

    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    return-void
.end method

.method protected specialShareChannel(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;
    .locals 1

    .line 152
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result p1

    const/16 v0, 0x134

    if-ne p1, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkExtend;->getChannel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method

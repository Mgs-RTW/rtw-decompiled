.class public Lcom/netease/ntunisdk/Sdkybuaxwny;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "Sdkybuaxwny.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "ybuaxwny"

.field private static final TAG:Ljava/lang/String; = "Sdkybuaxwny"

.field private static final VER:Ljava/lang/String; = "1.6.0"

.field private static context:Landroid/content/Context; = null

.field private static debugtag:Ljava/lang/String; = "wnydebug"

.field private static isMumu:Z

.field private static wnydet:Lcom/netease/ybuax/Flagclass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/netease/ybuax/Flagclass;

    invoke-direct {v0}, Lcom/netease/ybuax/Flagclass;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/Sdkybuaxwny;->wnydet:Lcom/netease/ybuax/Flagclass;

    .line 32
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isMuMu()Z

    move-result v0

    sput-boolean v0, Lcom/netease/ntunisdk/Sdkybuaxwny;->isMumu:Z

    const-string v0, "ybuaxz"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    .line 37
    sput-object p1, Lcom/netease/ntunisdk/Sdkybuaxwny;->context:Landroid/content/Context;

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/Sdkybuaxwny;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "INNER_MODE_NO_PAY"

    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/Sdkybuaxwny;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/netease/ybuax/Flagclass;
    .locals 1

    .line 22
    sget-object v0, Lcom/netease/ntunisdk/Sdkybuaxwny;->wnydet:Lcom/netease/ybuax/Flagclass;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/netease/ntunisdk/Sdkybuaxwny;->isMumu:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/netease/ntunisdk/Sdkybuaxwny;->debugtag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 8

    .line 105
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 106
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "startEmulatorDetect"

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v1, "JF_GAMEID"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nonce"

    .line 111
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enableNetProxy"

    const/4 v3, 0x0

    .line 112
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "uploadapk"

    .line 113
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "onlysetuid"

    .line 114
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const-string v5, "waittime"

    const/16 v6, 0x28

    .line 115
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "Sdkybuaxwny"

    if-nez v5, :cond_0

    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v7, "EB"

    invoke-interface {v5, v7, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/netease/ybuax/Flagclass;->EB:I

    .line 119
    sput-boolean v2, Lcom/netease/ybuax/UniNetProxyJni;->useUniNetProxy:Z

    .line 121
    sget-object v2, Lcom/netease/ntunisdk/Sdkybuaxwny;->wnydet:Lcom/netease/ybuax/Flagclass;

    iput-boolean v4, v2, Lcom/netease/ybuax/Flagclass;->uploadapk:Z

    .line 122
    sget-object v2, Lcom/netease/ntunisdk/Sdkybuaxwny;->wnydet:Lcom/netease/ybuax/Flagclass;

    iput-object p1, v2, Lcom/netease/ybuax/Flagclass;->jfGameId:Ljava/lang/String;

    .line 123
    sget-object p1, Lcom/netease/ntunisdk/Sdkybuaxwny;->wnydet:Lcom/netease/ybuax/Flagclass;

    iput-object v1, p1, Lcom/netease/ybuax/Flagclass;->Uid:Ljava/lang/String;

    .line 124
    sget-object p1, Lcom/netease/ntunisdk/Sdkybuaxwny;->wnydet:Lcom/netease/ybuax/Flagclass;

    invoke-virtual {p1}, Lcom/netease/ybuax/Flagclass;->Startybuax()V

    .line 125
    sget-object p1, Lcom/netease/ntunisdk/Sdkybuaxwny;->wnydet:Lcom/netease/ybuax/Flagclass;

    const-string p1, "1.6.0"

    sput-object p1, Lcom/netease/ybuax/Flagclass;->VER:Ljava/lang/String;

    .line 149
    new-instance p1, Lcom/netease/ntunisdk/Sdkybuaxwny$1ThreadWait;

    invoke-direct {p1, p0, v0}, Lcom/netease/ntunisdk/Sdkybuaxwny$1ThreadWait;-><init>(Lcom/netease/ntunisdk/Sdkybuaxwny;I)V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/Sdkybuaxwny$1ThreadWait;->start()V

    const-string p1, "triggered"

    .line 151
    invoke-static {v6, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "gameId or id invalid"

    .line 154
    invoke-static {v6, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "GetEmulatorResult"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 160
    new-instance p1, Lcom/netease/ntunisdk/Sdkybuaxwny$1;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/Sdkybuaxwny$1;-><init>(Lcom/netease/ntunisdk/Sdkybuaxwny;)V

    .line 183
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "ybuaxwny"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.6.0"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/netease/ntunisdk/Sdkybuaxwny;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 48
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    :cond_0
    return-void
.end method

.method public login()V
    .locals 0

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

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method

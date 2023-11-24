.class public Lcom/netease/ntunisdk/Sdkprotocol;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "Sdkprotocol.java"


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "B91xFDWsRsEu41otp8JR7Clt03QCpjhI"

.field private static final CHANNEL:Ljava/lang/String; = "protocol"

.field private static final SDK_VERSION:Ljava/lang/String; = "3.4.1"

.field private static final TAG:Ljava/lang/String; = "UniSDK protocol"


# instance fields
.field appChannel:Ljava/lang/String;

.field private currentUid:Ljava/lang/String;

.field private isOverseaDistribution:Z

.field jfGameId:Ljava/lang/String;

.field private launcherOpen:Z

.field private mShowProtocolActivity:Landroid/app/Activity;

.field private protocolCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

.field private protocolCallbackForLogin:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

.field private protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

.field udid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->isOverseaDistribution:Z

    .line 43
    new-instance p1, Lcom/netease/ntunisdk/Sdkprotocol$1;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/Sdkprotocol$1;-><init>(Lcom/netease/ntunisdk/Sdkprotocol;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 91
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/Sdkprotocol;->setPropInt(Ljava/lang/String;I)V

    const-string v0, "INNER_MODE_NO_PAY"

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/Sdkprotocol;->setPropInt(Ljava/lang/String;I)V

    const-string v0, "SHOW_PROTOCOL_IN_LOGIN"

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/Sdkprotocol;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/Sdkprotocol;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolCallbackForLogin:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/Sdkprotocol;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->currentUid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/Sdkprotocol;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/Sdkprotocol;[Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/Sdkprotocol;->saveClientLog([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/Sdkprotocol;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method private getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 316
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 318
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 321
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getProtocolProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;-><init>()V

    .line 261
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "COMPACT_URL"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setUrl(Ljava/lang/String;)V

    .line 271
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "NT_COMPACT_URL_TYPE"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setUrlType(Ljava/lang/String;)V

    .line 275
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "NT_COMPACT_OFFLINE_GAME"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 277
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setOfflineGameFlag(Ljava/lang/String;)V

    .line 279
    :cond_3
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "NT_COMPACT_NEW_OFFLINE"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 281
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setNewOfflineFlag(Ljava/lang/String;)V

    .line 283
    :cond_4
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "NT_COMPACT_SHOW_TITLE"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 285
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setShowTitleFlag(Ljava/lang/String;)V

    .line 287
    :cond_5
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "COMPACT_SHOW_AGREE_LINE"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 289
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setShowAgreeLineFlag(Ljava/lang/String;)V

    .line 291
    :cond_6
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "COMPACT_AGREE_LINE_TEXT"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 293
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setAgreeLineText(Ljava/lang/String;)V

    .line 299
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "NT_COMPACT_LOCALE"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 301
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setLocale(Ljava/lang/String;)V

    .line 303
    :cond_8
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->myCtx:Landroid/content/Context;

    const-string v2, "protocol_issuer_name"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 305
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setIssuer(Ljava/lang/String;)V

    .line 307
    :cond_9
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 308
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->myCtx:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/Sdkprotocol;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setGameName(Ljava/lang/String;)V

    .line 310
    :cond_a
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "JF_GAMEID"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setGameId(Ljava/lang/String;)V

    return-object v0
.end method

.method private initProtocolManager()V
    .locals 3

    .line 429
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 430
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V

    .line 431
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->init(Landroid/app/Activity;)V

    .line 432
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "FEATURE_USE_CUSTOM_PROTOCOL"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setHasCustomProtocol(Z)V

    .line 433
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkprotocol;->getProtocolProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V

    return-void
.end method

.method private varargs saveClientLog([Ljava/lang/String;)V
    .locals 5

    .line 437
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 439
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x0

    .line 440
    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_0

    .line 441
    aget-object v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 444
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 446
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UniSDK protocol"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method protected doSepcialConfigVal(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "PROTOCOL_LAUNCHER"

    .line 197
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReleaseArea"

    .line 198
    invoke-virtual {p0, p1, v1}, Lcom/netease/ntunisdk/Sdkprotocol;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocol_launcher : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UniSDK protocol"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "1"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->launcherOpen:Z

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->onDestory()V

    .line 190
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->onExit()V

    :cond_0
    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "UniSDK protocol"

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 331
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "showProtocolInLogin"

    .line 332
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/Sdkprotocol;->showProtocolInLogin(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string v1, "acceptProtocol"

    .line 334
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "uid"

    const-string v1, ""

    .line 335
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 336
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->acceptProtocol(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 339
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected gameLoginSuccess()V
    .locals 4

    .line 419
    iget-boolean v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->isOverseaDistribution:Z

    if-nez v0, :cond_0

    const-string v0, "UniSDK protocol"

    const-string v1, "upload classes"

    .line 421
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_GAMEID"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v1

    .line 424
    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    const-string v3, "B91xFDWsRsEu41otp8JR7Clt03QCpjhI"

    invoke-virtual {v2, v0, v1, v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->syncClasses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "protocol"

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

    const-string v0, "3.4.1"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.4.1"

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 4

    .line 98
    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkprotocol;->initProtocolManager()V

    .line 99
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_GAMEID"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->jfGameId:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->appChannel:Ljava/lang/String;

    .line 101
    invoke-super {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getUdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->udid:Ljava/lang/String;

    const-string v0, "ReleaseArea"

    .line 102
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/Sdkprotocol;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >> init : channelID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->appChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", jfGameId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->jfGameId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", udid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->udid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", releaseArea:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK protocol"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->isOverseaDistribution:Z

    :try_start_0
    const-string v0, "DEBUG_MODE"

    .line 106
    invoke-virtual {p0, v0, v3}, Lcom/netease/ntunisdk/Sdkprotocol;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 108
    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->setDebug(Z)V

    goto :goto_1

    .line 110
    :cond_1
    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/utils/L;->setDebug(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasAcceptProtocol()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "func"

    aput-object v1, v0, v3

    const-string v1, "showProtocolInLaunch"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "step"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "show_protocol_done"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "accept"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 123
    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->currentUid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->currentUid:Ljava/lang/String;

    :goto_2
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "channel_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->appChannel:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "jfGameId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->jfGameId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "udid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->udid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "protocol_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 127
    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCurrentProtocolId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol_version"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 128
    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCurrentProtocolVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/Sdkprotocol;->saveClientLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :catchall_0
    :cond_3
    invoke-interface {p1, v3}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

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

.method public sdkOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "UniSDK protocol"

    const-string v1, "sdkOnConfigurationChanged"

    .line 345
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkprotocol;->initProtocolManager()V

    .line 347
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->handleOnConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setShowProtocolActivity(Landroid/app/Activity;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->mShowProtocolActivity:Landroid/app/Activity;

    return-void
.end method

.method public showCompactView(Z)V
    .locals 5

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " >> showCompactView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK protocol"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkprotocol;->initProtocolManager()V

    .line 222
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UIN"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->currentUid:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 224
    iget-boolean v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->launcherOpen:Z

    if-eqz v2, :cond_0

    .line 226
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 227
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->protocolFinish(I)V

    return-void

    :cond_0
    const/16 v2, 0x10

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "func"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "showCompactView"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "step"

    aput-object v4, v2, v3

    const-string v3, "show_protocol_start"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "uid"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 235
    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol;->currentUid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol;->currentUid:Ljava/lang/String;

    :goto_0
    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "channel_id"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol;->appChannel:Ljava/lang/String;

    aput-object v3, v2, v0

    const/16 v0, 0x8

    const-string v3, "jfGameId"

    aput-object v3, v2, v0

    const/16 v0, 0x9

    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol;->jfGameId:Ljava/lang/String;

    aput-object v3, v2, v0

    const/16 v0, 0xa

    const-string v3, "udid"

    aput-object v3, v2, v0

    const/16 v0, 0xb

    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol;->udid:Ljava/lang/String;

    aput-object v3, v2, v0

    const/16 v0, 0xc

    const-string v3, "protocol_id"

    aput-object v3, v2, v0

    const/16 v0, 0xd

    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 239
    invoke-virtual {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCurrentProtocolId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xe

    const-string v3, "protocol_version"

    aput-object v3, v2, v0

    const/16 v0, 0xf

    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 240
    invoke-virtual {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCurrentProtocolVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 232
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/Sdkprotocol;->saveClientLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 244
    :goto_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->mShowProtocolActivity:Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->mShowProtocolActivity:Landroid/app/Activity;

    :cond_2
    if-eqz p1, :cond_3

    .line 249
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->mShowProtocolActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol(Landroid/app/Activity;)V

    goto :goto_2

    .line 251
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->mShowProtocolActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolIfNeed(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public showProtocolInLogin(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, ""

    const-string v1, "uid"

    .line 354
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->currentUid:Ljava/lang/String;

    .line 355
    new-instance v2, Lcom/netease/ntunisdk/Sdkprotocol$2;

    invoke-direct {v2, p0, p1}, Lcom/netease/ntunisdk/Sdkprotocol$2;-><init>(Lcom/netease/ntunisdk/Sdkprotocol;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolCallbackForLogin:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    .line 381
    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkprotocol;->initProtocolManager()V

    const/16 v2, 0x12

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "func"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "showProtocolInLogin"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "step"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "show_protocol_start"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "row"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 386
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x6

    aput-object v1, v2, p1

    const/4 p1, 0x7

    .line 387
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->currentUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->currentUid:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, p1

    const/16 p1, 0x8

    const-string v0, "channel_id"

    aput-object v0, v2, p1

    const/16 p1, 0x9

    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->appChannel:Ljava/lang/String;

    aput-object v0, v2, p1

    const/16 p1, 0xa

    const-string v0, "jfGameId"

    aput-object v0, v2, p1

    const/16 p1, 0xb

    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->jfGameId:Ljava/lang/String;

    aput-object v0, v2, p1

    const/16 p1, 0xc

    const-string v0, "udid"

    aput-object v0, v2, p1

    const/16 p1, 0xd

    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->udid:Ljava/lang/String;

    aput-object v0, v2, p1

    const/16 p1, 0xe

    const-string v0, "protocol_id"

    aput-object v0, v2, p1

    const/16 p1, 0xf

    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 391
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCurrentProtocolId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x10

    const-string v0, "protocol_version"

    aput-object v0, v2, p1

    const/16 p1, 0x11

    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 392
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCurrentProtocolVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    .line 383
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/Sdkprotocol;->saveClientLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :catchall_0
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->currentUid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolIfNeed(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public showProtocolInLoginCallback(I)V
    .locals 3

    .line 406
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "showProtocolInLoginCallback"

    .line 407
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    .line 409
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "result"

    .line 410
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 412
    iput-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolCallbackForLogin:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method

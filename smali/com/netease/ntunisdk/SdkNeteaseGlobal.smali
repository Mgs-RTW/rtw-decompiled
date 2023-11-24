.class public Lcom/netease/ntunisdk/SdkNeteaseGlobal;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkNeteaseGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$UploadEmailTask;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;
    }
.end annotation


# static fields
.field private static final AMAZON:Ljava/lang/String; = "amazon"

.field private static final AUTH_APPLE:I = 0x1b

.field private static final AUTH_DISCORD:I = 0x25

.field private static final AUTH_EMAIL:I = 0x23

.field private static final AUTH_HUAWEI:I = 0x21

.field private static final AUTH_HYDRA_EMAIL:I = 0x20

.field private static final AUTH_NAVER:I = 0x1f

.field private static final AUTH_PASSPORT:I = 0x26

.field private static final AUTH_TIKTOK:I = 0x22

.field public static final AUTO_LINK_ACCOUNT:Ljava/lang/String; = "AUTO_LINK_ACCOUNT"

.field private static final CHANNEL:Ljava/lang/String; = "netease_global"

.field private static final FACEBOOK_SDK:Ljava/lang/String; = "facebook_sdk"

.field private static final GOOGLE:Ljava/lang/String; = "google"

.field private static final GOOGLE_PLAY:Ljava/lang/String; = "google_play"

.field public static final HIDE_LOGIN_CLOSE_BUTTON:Ljava/lang/String; = "hideLoginCloseButton"

.field private static final KAKAO:Ljava/lang/String; = "kakao"

.field private static final LINE:Ljava/lang/String; = "line"

.field private static final LINEGAME:Ljava/lang/String; = "linegame"

.field public static final MINOR_ISO_CODE:Ljava/lang/String; = "MINOR_ISO_CODE"

.field private static final MINOR_STATUS:Ljava/lang/String; = "MINOR_STATUS"

.field private static final MODE_HAS_LVU_DIALOG:Ljava/lang/String; = "FEATURE_HAS_LVU_DIALOG"

.field private static final MYCARD:Ljava/lang/String; = "mycard"

.field private static final NT_AUTH_NAME_APPLE:Ljava/lang/String; = "apple"

.field private static final NT_AUTH_NAME_DISCORD:Ljava/lang/String; = "discord"

.field private static final NT_AUTH_NAME_EMAIL:Ljava/lang/String; = "email"

.field private static final NT_AUTH_NAME_HUAWEI:Ljava/lang/String; = "huawei"

.field private static final NT_AUTH_NAME_HYDRA_EMAIL:Ljava/lang/String; = "hydra_email"

.field private static final NT_AUTH_NAME_NAVER:Ljava/lang/String; = "naver"

.field private static final NT_AUTH_NAME_PASSPORT:Ljava/lang/String; = "ospassport"

.field private static final NT_AUTH_NAME_TIKTOK:Ljava/lang/String; = "tiktok"

.field private static final PAY_CHANNELS_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "UniSDK netease_global"

.field private static final TWITTER:Ljava/lang/String; = "twitter"

.field private static final VER:Ljava/lang/String; = "3.2.0"


# instance fields
.field private debugMode:Z

.field private isNeedWriteExternalStorage:Z

.field private jfGameId:Ljava/lang/String;

.field private lineGameMid:Ljava/lang/String;

.field private mBindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;

.field private mBoundTypeNames:[Ljava/lang/String;

.field private mBoundTypes:[I

.field private mCachedFontPath:Ljava/lang/String;

.field private mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

.field private mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

.field private mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

.field private mLoginType:I

.field private mLoginTypeName:Ljava/lang/String;

.field private mMonitorCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;

.field private mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

.field private mUnbindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "amazon"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mycard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "google_play"

    aput-object v2, v0, v1

    .line 87
    sput-object v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->PAY_CHANNELS_ORDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginType:I

    .line 99
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    const-string v1, "unlogin"

    .line 101
    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginTypeName:Ljava/lang/String;

    const-string v1, ""

    .line 102
    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    .line 104
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->debugMode:Z

    .line 105
    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->jfGameId:Ljava/lang/String;

    .line 106
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isNeedWriteExternalStorage:Z

    .line 107
    new-instance v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    .line 108
    new-instance v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    .line 109
    new-instance v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;

    .line 110
    new-instance v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mUnbindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;

    .line 111
    new-instance v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mMonitorCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;

    return-void
.end method

.method static synthetic access$1002(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Ljava/util/Map;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Ljava/util/Map;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Ljava/util/Map;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/mpay/oversea/User;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setLoginType(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setJFSauth(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLineGameUid()V

    return-void
.end method

.method static synthetic access$1700(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/mpay/oversea/User;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->didBind(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->resetProp()V

    return-void
.end method

.method static synthetic access$1902(Lcom/netease/ntunisdk/SdkNeteaseGlobal;[I)[I
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    return-object p1
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/SdkNeteaseGlobal;[Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Lcom/netease/mpay/oversea/MpayOverseaApi;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/mpay/oversea/User;Lorg/json/JSONObject;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->processCurrentUser(Lcom/netease/mpay/oversea/User;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Ljava/util/Map;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    return-object p0
.end method

.method private configMpayHosts()V
    .locals 3

    const-string v0, "CHANNEL_ANALYSIS_HOST"

    .line 216
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "Enter updateMpayHosts : %s"

    .line 217
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK netease_global"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {v0}, Lcom/netease/mpay/oversea/GameConfig;->updateMpayHosts(Ljava/lang/String;)V

    return-void
.end method

.method private didBind(Lcom/netease/mpay/oversea/User;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boundTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindSuccess,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK netease_global"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setLoginType(Lcom/netease/mpay/oversea/User;)V

    .line 233
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLineGameUid()V

    .line 234
    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->uid:Ljava/lang/String;

    const-string v2, "UIN"

    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->token:Ljava/lang/String;

    const-string v2, "SESSION"

    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->deviceId:Ljava/lang/String;

    const-string v2, "DEVICE_ID"

    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "LOGIN_STAT"

    .line 237
    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 238
    iget v2, p1, Lcom/netease/mpay/oversea/User;->minorStatus:I

    const-string v3, "MINOR_STATUS"

    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 239
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    iget-object p1, p1, Lcom/netease/mpay/oversea/User;->region:Ljava/lang/String;

    const-string v3, "MINOR_ISO_CODE"

    invoke-interface {v2, v3, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "func"

    aput-object v3, p1, v2

    const-string v2, "MpayLoginCallback.onDialogFinish"

    aput-object v2, p1, v1

    const/4 v1, 0x2

    const-string v2, "step"

    aput-object v2, p1, v1

    const/4 v1, 0x3

    const-string v2, "loginDone"

    aput-object v2, p1, v1

    const/4 v1, 0x4

    const-string v2, "unisdk_code"

    aput-object v2, p1, v1

    const/4 v1, 0x5

    const-string v2, "13"

    aput-object v2, p1, v1

    const/4 v1, 0x6

    const-string v2, "raw_code"

    aput-object v2, p1, v1

    const/4 v1, 0x7

    const-string v2, "onDialogFinish"

    aput-object v2, p1, v1

    const/16 v1, 0x8

    const-string v2, "raw_msg"

    aput-object v2, p1, v1

    const/16 v1, 0x9

    aput-object v0, p1, v1

    .line 240
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    const/16 p1, 0xd

    .line 248
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginDone(I)V

    return-void
.end method

.method private getLanguage()Lcom/netease/mpay/oversea/GameLanguage;
    .locals 4

    const-string v0, "LANGUAGE_CODE"

    .line 253
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "EN"

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {p0, v0, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->EN:Lcom/netease/mpay/oversea/GameLanguage;

    const-string v2, "ZH_HANS"

    .line 258
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "ZH_CN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v2, "ZH_HANT"

    .line 260
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "ZH_HK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v2, "ZH_TW"

    .line 262
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 263
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->ZH_TW:Lcom/netease/mpay/oversea/GameLanguage;

    goto/16 :goto_2

    .line 264
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->EN:Lcom/netease/mpay/oversea/GameLanguage;

    goto/16 :goto_2

    :cond_4
    const-string v2, "PT"

    .line 268
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 269
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->PT:Lcom/netease/mpay/oversea/GameLanguage;

    goto/16 :goto_2

    :cond_5
    const-string v2, "RU"

    .line 274
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 275
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->RU:Lcom/netease/mpay/oversea/GameLanguage;

    goto/16 :goto_2

    :cond_6
    const-string v2, "DE"

    .line 276
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 277
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->DE:Lcom/netease/mpay/oversea/GameLanguage;

    goto/16 :goto_2

    :cond_7
    const-string v2, "ES"

    .line 278
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 279
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->ES:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_8
    const-string v2, "FR"

    .line 280
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 281
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->FR:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_9
    const-string v2, "HI"

    .line 282
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 283
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->HI:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_a
    const-string v2, "IN"

    .line 284
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 285
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->IN:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_b
    const-string v2, "JA"

    .line 288
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 289
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->JA:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_c
    const-string v2, "KO"

    .line 290
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 291
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->KO:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_d
    const-string v2, "TH"

    .line 298
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 299
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->TH:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_e
    const-string v2, "VI"

    .line 300
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 301
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->VI:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_f
    const-string v2, "TR"

    .line 302
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 303
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->TR:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    .line 261
    :cond_10
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->ZH_HK:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    .line 259
    :cond_11
    :goto_1
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->ZH_CN:Lcom/netease/mpay/oversea/GameLanguage;

    .line 305
    :cond_12
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLanguage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/GameLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK netease_global"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getLineGameUid()V
    .locals 4

    const-string v0, "UniSDK netease_global"

    const-string v1, "getLineGameUid"

    .line 1418
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getLineGameAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    .line 1420
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1421
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getAuthTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "linegame"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1422
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v1

    .line 1423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThirdPartyCredentials loginType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v3, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;

    invoke-direct {v3, p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;I)V

    invoke-virtual {v2, v1, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->isThirdPartyAuthValid(ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 1446
    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    .line 1449
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLineGameUid mid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getMpayLoginType(Ljava/lang/String;)I
    .locals 2

    .line 1320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "guest"

    if-eqz v0, :cond_0

    const-string p1, "AUTH_CHANNEL"

    .line 1321
    invoke-virtual {p0, p1, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "google"

    .line 1323
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "native"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "facebook"

    .line 1325
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const-string v0, "twitter"

    .line 1327
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x5

    return p1

    :cond_3
    const-string v0, "dmm"

    .line 1329
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x6

    return p1

    :cond_4
    const-string v0, "steam"

    .line 1331
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x7

    return p1

    :cond_5
    const-string v0, "amazon"

    .line 1333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x8

    return p1

    :cond_6
    const-string v0, "line"

    .line 1335
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0x9

    return p1

    :cond_7
    const-string v0, "linegame"

    .line 1337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0xa

    return p1

    :cond_8
    const-string v0, "psn"

    .line 1339
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0xb

    return p1

    :cond_9
    const-string v0, "wechat"

    .line 1341
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0xe

    return p1

    :cond_a
    const-string v0, "nintendo"

    .line 1343
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0xd

    return p1

    :cond_b
    const-string v0, "vk"

    .line 1345
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0x11

    return p1

    :cond_c
    const-string v0, "huawei"

    .line 1347
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p1, 0x12

    return p1

    :cond_d
    const-string v0, "kakao"

    .line 1349
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p1, 0x13

    return p1

    :cond_e
    const-string v0, "naver"

    .line 1351
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p1, 0x14

    return p1

    :cond_f
    const-string v0, "hydra_email"

    .line 1353
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p1, 0x15

    return p1

    .line 1355
    :cond_10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const-string v0, "email"

    .line 1357
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 p1, 0x16

    return p1

    :cond_12
    const-string v0, "tiktok"

    .line 1359
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p1, 0x17

    return p1

    :cond_13
    const-string v0, "discord"

    .line 1361
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 p1, 0x18

    return p1

    :cond_14
    const-string v0, "apple"

    .line 1363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 p1, 0x10

    return p1

    :cond_15
    const-string v0, "ospassport"

    .line 1365
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/16 p1, 0x19

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method private getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V
    .locals 3

    const-string v0, "AUTH_CHANNEL"

    const-string v1, "linegame"

    .line 1155
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v0

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThirdPartyCredentials loginType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK netease_global"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$11;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getThirdPartyCredentials(ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z

    return-void
.end method

.method private getUniAuthType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/16 p1, 0x26

    return p1

    :pswitch_2
    const/16 p1, 0x25

    return p1

    :pswitch_3
    const/16 p1, 0x22

    return p1

    :pswitch_4
    const/16 p1, 0x23

    return p1

    :pswitch_5
    const/16 p1, 0x20

    return p1

    :pswitch_6
    const/16 p1, 0x1f

    return p1

    :pswitch_7
    const/16 p1, 0xd

    return p1

    :pswitch_8
    const/16 p1, 0x21

    return p1

    :pswitch_9
    const/16 p1, 0x1c

    return p1

    :pswitch_a
    const/16 p1, 0x1b

    return p1

    :pswitch_b
    const/16 p1, 0x8

    return p1

    :pswitch_c
    const/16 p1, 0x18

    return p1

    :pswitch_d
    const/16 p1, 0x16

    return p1

    :pswitch_e
    const/16 p1, 0x13

    return p1

    :pswitch_f
    const/16 p1, 0x12

    return p1

    :pswitch_10
    const/16 p1, 0x11

    return p1

    :pswitch_11
    const/16 p1, 0x10

    return p1

    :pswitch_12
    const/16 p1, 0xf

    return p1

    :pswitch_13
    const/16 p1, 0xe

    return p1

    :pswitch_14
    const/4 p1, 0x4

    return p1

    :pswitch_15
    const/4 p1, 0x5

    return p1

    :pswitch_16
    const/4 p1, 0x2

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getUniAuthTypeName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "unlogin"

    return-object p1

    :pswitch_1
    const-string p1, "ospassport"

    return-object p1

    :pswitch_2
    const-string p1, "discord"

    return-object p1

    :pswitch_3
    const-string p1, "tiktok"

    return-object p1

    :pswitch_4
    const-string p1, "email"

    return-object p1

    :pswitch_5
    const-string p1, "hydra_email"

    return-object p1

    :pswitch_6
    const-string p1, "naver"

    return-object p1

    :pswitch_7
    const-string p1, "kakao"

    return-object p1

    :pswitch_8
    const-string p1, "huawei"

    return-object p1

    :pswitch_9
    const-string p1, "vk"

    return-object p1

    :pswitch_a
    const-string p1, "apple"

    return-object p1

    :pswitch_b
    const-string p1, "wechat"

    return-object p1

    :pswitch_c
    const-string p1, "nintendo"

    return-object p1

    :pswitch_d
    const-string p1, "psn"

    return-object p1

    :pswitch_e
    const-string p1, "linegame"

    return-object p1

    :pswitch_f
    const-string p1, "line"

    return-object p1

    :pswitch_10
    const-string p1, "amazon"

    return-object p1

    :pswitch_11
    const-string p1, "steam"

    return-object p1

    :pswitch_12
    const-string p1, "dmm"

    return-object p1

    :pswitch_13
    const-string p1, "twitter"

    return-object p1

    :pswitch_14
    const-string p1, "facebook"

    return-object p1

    :pswitch_15
    const-string p1, "google"

    return-object p1

    :pswitch_16
    const-string p1, "guest"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private hasAuthTypeName(Ljava/lang/String;)Z
    .locals 5

    .line 1453
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1456
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1457
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private is3rdLibValid(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 1741
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    const-string v0, "linegame"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 1737
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v0, "google"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private static isGoogleGamesV2Available()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.gms.games.PlayGamesSdk"

    .line 1991
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private isThirdPartyAuthValid(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "AUTH_CHANNEL"

    const-string v1, "linegame"

    .line 1215
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1216
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v0

    .line 1217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isThirdPartyAuthValid loginType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK netease_global"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$12;

    invoke-direct {v2, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$12;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->isThirdPartyAuthValid(ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z

    return-void
.end method

.method private presentUserCenter(Ljava/lang/String;)V
    .locals 3

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "presentUserCenter key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->openManager()V

    goto :goto_0

    .line 1093
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "MINOR_STATUS"

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 1094
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateMinorStatus(I)V

    .line 1095
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->presentUserCenterFromViewController(Ljava/lang/String;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "func"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "openManager"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "step"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "open_manager_start"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 1096
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1103
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    const/16 v1, 0x3ed

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x66

    invoke-virtual {v0, v1, p1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;->onFailure(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private processCurrentUser(Lcom/netease/mpay/oversea/User;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    const-string v2, "result"

    .line 1112
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    const-string v1, "uid"

    .line 1114
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->uid:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 1115
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->token:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    .line 1116
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->deviceId:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "security_email"

    .line 1117
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->securityEmail:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "authType"

    .line 1119
    iget v2, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "authName"

    .line 1120
    iget v2, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1122
    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    .line 1123
    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 1124
    :goto_1
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 1125
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    iget-object v3, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthType(I)I

    move-result v3

    aput v3, v2, v1

    .line 1126
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthTypeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1129
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_2
    const-string v4, ","

    if-ge v3, v2, :cond_3

    :try_start_1
    aget v5, v1, v3

    .line 1130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1131
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const-string v1, "boundTypes"

    .line 1135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    .line 1139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 1140
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-string v0, "boundNames"

    .line 1144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1147
    :cond_6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private resetProp()V
    .locals 2

    const-string v0, "USR_NAME"

    const/4 v1, 0x0

    .line 1748
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->resetCommonProp()V

    return-void
.end method

.method private varargs saveClientLog([Ljava/lang/String;)V
    .locals 5

    .line 1720
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 1722
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x0

    .line 1723
    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_0

    .line 1724
    aget-object v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1727
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1729
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UniSDK netease_global"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setLoginType(Lcom/netease/mpay/oversea/User;)V
    .locals 9

    .line 1373
    iget-object v0, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    .line 1374
    iget-object v0, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1376
    :goto_0
    iget-object v3, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v3, v3

    const-string v4, ","

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    .line 1377
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    iget-object v6, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    aget v6, v6, v2

    invoke-direct {p0, v6}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthType(I)I

    move-result v6

    aput v6, v3, v2

    .line 1378
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    aget v6, v6, v2

    invoke-direct {p0, v6}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthTypeName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 1379
    iget-object v3, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1380
    iget-object v3, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v3, v3

    sub-int/2addr v3, v5

    if-eq v2, v3, :cond_0

    .line 1381
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1384
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1385
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SAUTH_LOGIN_TYPE"

    .line 1386
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :cond_2
    iget v0, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthType(I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginType:I

    .line 1389
    iget v0, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthTypeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginTypeName:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1390
    iget-object v0, p1, Lcom/netease/mpay/oversea/User;->nickName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v2, "USR_NAME"

    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1392
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    array-length v3, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_5

    aget v7, v2, v6

    .line 1393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 1394
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1398
    :cond_5
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->securityEmail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SECURITY_EMAIL"

    const-string v6, "SECURITY_EMAIL_SET"

    if-eqz v2, :cond_6

    .line 1399
    invoke-virtual {p0, v6, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    const-string p1, ""

    .line 1400
    invoke-virtual {p0, v3, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1402
    :cond_6
    invoke-virtual {p0, v6, v5}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 1403
    iget-object p1, p1, Lcom/netease/mpay/oversea/User;->securityEmail:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BOUND_TYPES"

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1407
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_8

    aget-object v3, v0, v1

    .line 1408
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 1409
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1413
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BOUND_TYPES_NAME"

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unBind()V
    .locals 3

    const-string v0, "UniSDK netease_global"

    const-string v1, "unBind"

    .line 558
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v1, :cond_0

    const-string v1, "SDK is uninitialized!"

    .line 560
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    .line 563
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mUnbindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->unBind(ILcom/netease/mpay/oversea/UnBindCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 567
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 7

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkOrder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderChannel()Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " checkOrder"

    if-eqz v2, :cond_0

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    .line 405
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->PAY_CHANNELS_ORDER:[Ljava/lang/String;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 406
    iget-object v6, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1, v5}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-eqz v0, :cond_4

    const-string v0, "netease_global payment-wall"

    .line 415
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;-><init>()V

    .line 417
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setCurrency(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 418
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setGoodsCount(I)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 419
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setGoodsID(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 420
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setGoodsName(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 421
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setOrderID(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 422
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductCurrentPrice()F

    move-result v1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setPrice(F)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 423
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setOrderInfo(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    const-string v1, "USE_BOACOMPRA_PAYMENT"

    .line 424
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    .line 425
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setPayMethod(I)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 428
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->build()Lcom/netease/mpay/oversea/PaymentRequest;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;

    invoke-direct {v2, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->pay(Lcom/netease/mpay/oversea/PaymentRequest;Lcom/netease/mpay/oversea/PaymentCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 457
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public displayAchievement()V
    .locals 2

    .line 1586
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->displayAchievement()V

    :cond_0
    return-void
.end method

.method public displayLeaderboard(Ljava/lang/String;)V
    .locals 2

    .line 1579
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->displayLeaderboard(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public displayQuests([I)V
    .locals 2

    .line 1607
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->displayQuests([I)V

    :cond_0
    return-void
.end method

.method protected doSepcialConfigVal(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "WRITE_EXTERNAL_STORAGE"

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendFunc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniSDK netease_global"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v2, :cond_0

    const-string v1, "sdk not init successfully"

    .line 708
    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 712
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "methodId"

    .line 713
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v10

    const-string v4, "setLanguage"

    .line 715
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "debug"

    const-string v6, "appChannel"

    const-string v7, "host"

    const-string v8, "gameId"

    const-string v9, "path"

    const-string v11, "JF_GAMEID"

    const-string v12, "hideLoginCloseButton"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v4, :cond_26

    :try_start_1
    const-string v4, "setFontPath"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v4, "enableRequestSdcardPermission"

    .line 739
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "ENABLE_REQUEST_SDCARD_PERMISSION"

    .line 740
    invoke-virtual {v0, v1, v14}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    .line 741
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-ne v1, v14, :cond_2

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v2, v14}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enableRequestSdcardPermission(Z)V

    goto/16 :goto_9

    :cond_3
    const-string v4, "generateMigrateCode"

    .line 743
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_4

    .line 745
    :try_start_2
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    :catchall_0
    :try_start_3
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$3;

    invoke-direct {v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$3;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->generateMigrateCode(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto/16 :goto_9

    :cond_4
    const-string v4, "getThirdPartyCredentials"

    .line 770
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    .line 771
    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    goto/16 :goto_9

    :cond_5
    const-string v4, "isThirdPartyAuthValid"

    .line 773
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 774
    invoke-direct {v0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isThirdPartyAuthValid(Lorg/json/JSONObject;)V

    goto/16 :goto_9

    :cond_6
    const-string v4, "guestBind"

    .line 776
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v4, :cond_7

    .line 778
    :try_start_4
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 781
    :catchall_1
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->guestBind()V

    goto/16 :goto_9

    :cond_7
    const-string v4, "guestLogin"

    .line 782
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v4, :cond_9

    .line 784
    :try_start_6
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    :try_start_7
    const-string v1, "CLEAR_GUEST_WHEN_LOGOUT"

    .line 790
    invoke-virtual {v0, v1, v13}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v14, :cond_8

    .line 792
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->loginNewGuest(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto/16 :goto_9

    .line 794
    :cond_8
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v14, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->channelLogin(ILcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto/16 :goto_9

    :cond_9
    const-string v4, "unBind"

    .line 796
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "guestUnbind"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_5

    :cond_a
    const-string v4, "shouldAutoLogin"

    .line 799
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 800
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v3, Lcom/netease/ntunisdk/SdkNeteaseGlobal$4;

    invoke-direct {v3, v0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$4;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->shouldAutoLogin(Lcom/netease/mpay/oversea/CheckAutoLoginCallback;)V

    goto/16 :goto_9

    :cond_b
    const-string v4, "getLastLoginType"

    .line 812
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 813
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getLastLoginType()I

    move-result v1

    const-string v3, "result"

    .line 816
    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 817
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->extendFuncCall(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_c
    const-string v4, "openFeedback"

    .line 821
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 822
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v3, Lcom/netease/ntunisdk/SdkNeteaseGlobal$5;

    invoke-direct {v3, v0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$5;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openFeedback(Lcom/netease/mpay/oversea/FeedbackCallback;)V

    goto/16 :goto_9

    :cond_d
    const-string v4, "uploadEmail"

    .line 844
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 845
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UploadEmailTask;

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UploadEmailTask;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v2, v3, v13

    invoke-virtual {v1, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UploadEmailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_9

    :cond_e
    const-string v4, "loginNewGuest"

    .line 846
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 847
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->loginNewGuest(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto/16 :goto_9

    :cond_f
    const-string v4, "setSkin"

    .line 848
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v1, "SKIN_TYPE"

    .line 849
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 850
    invoke-virtual {v2, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set skin: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 853
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setSkinPath(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_10
    const-string v4, "enablePermissionRetry"

    .line 856
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v1, "shouldRetry"

    .line 857
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 858
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enablePermissionRetry(Z)V

    goto/16 :goto_9

    :cond_11
    const-string v4, "enableSaveImageData"

    .line 859
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v1, "enable"

    .line 860
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 861
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enableSaveImageData(Z)V

    goto/16 :goto_9

    :cond_12
    const-string v4, "getCurrentUser"

    .line 862
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 863
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getCurrentUser()Lcom/netease/mpay/oversea/User;

    move-result-object v1

    .line 864
    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->processCurrentUser(Lcom/netease/mpay/oversea/User;Lorg/json/JSONObject;)V

    goto/16 :goto_9

    :cond_13
    const-string v4, "presentUserCenter"

    .line 865
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const-string v9, "key"

    if-eqz v4, :cond_14

    .line 866
    :try_start_8
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 867
    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->presentUserCenter(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_14
    const-string v4, "presentUserCenterDynamicEntry"

    .line 868
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    if-eqz v4, :cond_15

    .line 870
    :try_start_9
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 873
    :catchall_3
    :try_start_a
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 874
    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->presentUserCenter(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_15
    const-string v4, "setGameRegion"

    .line 875
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v1, "isoCode"

    .line 876
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 877
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setGameRegionISOCode(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_16
    const-string v4, "refreshUser"

    .line 878
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 879
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v3, Lcom/netease/ntunisdk/SdkNeteaseGlobal$6;

    invoke-direct {v3, v0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$6;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->refresh(Lcom/netease/mpay/oversea/RefreshCallback;)V

    goto/16 :goto_9

    :cond_17
    const-string v4, "updateConfig"

    .line 904
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 905
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 906
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->host:Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 907
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 908
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-boolean v1, v1, Lcom/netease/mpay/oversea/GameConfig;->debug:Z

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 909
    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/GameConfig;->isHiddenCloseBtn()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1

    :cond_18
    const/4 v14, 0x0

    .line 910
    :cond_19
    :goto_1
    invoke-virtual {v0, v11}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 911
    new-instance v2, Lcom/netease/mpay/oversea/GameConfig;

    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v19

    move-object v15, v2

    invoke-direct/range {v15 .. v20}, Lcom/netease/mpay/oversea/GameConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)V

    iput-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    .line 912
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    .line 913
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v14}, Lcom/netease/mpay/oversea/GameConfig;->setHiddenCloseBtn(Z)V

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide_login_close_button: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1, v10}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V

    .line 916
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateConfig(Lcom/netease/mpay/oversea/GameConfig;)V

    goto/16 :goto_9

    :cond_1a
    const-string v4, "setForbidChannels"

    .line 918
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    const-string v5, ""

    if-eqz v4, :cond_20

    :try_start_b
    const-string v1, "channels"

    .line 919
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 920
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    const-string v1, "FORBID_CHANNELS"

    .line 921
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 922
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_4

    .line 927
    :cond_1c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Integer;

    .line 928
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eq v13, v4, :cond_1e

    .line 929
    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 930
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_3

    .line 933
    :cond_1d
    invoke-direct {v0, v4}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v6

    .line 934
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v13

    .line 935
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 937
    :cond_1e
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-virtual {v0, v11}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 940
    new-instance v9, Lcom/netease/mpay/oversea/GameConfig;

    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v4, v3, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v5, v3, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v6, v3, Lcom/netease/mpay/oversea/GameConfig;->host:Ljava/lang/String;

    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v7, v3, Lcom/netease/mpay/oversea/GameConfig;->language:Lcom/netease/mpay/oversea/GameLanguage;

    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-boolean v8, v3, Lcom/netease/mpay/oversea/GameConfig;->debug:Z

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/netease/mpay/oversea/GameConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)V

    .line 943
    invoke-virtual {v9, v1}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v9, v2}, Lcom/netease/mpay/oversea/GameConfig;->setForbidChannels([Ljava/lang/Integer;)V

    .line 945
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/GameConfig;->isHiddenCloseBtn()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/netease/mpay/oversea/GameConfig;->setHiddenCloseBtn(Z)V

    .line 946
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1, v9}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateConfig(Lcom/netease/mpay/oversea/GameConfig;)V

    .line 947
    iput-object v9, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    goto/16 :goto_9

    :cond_1f
    :goto_4
    const-string v1, "please pass channels"

    .line 923
    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    const-string v4, "setSoundVolume"

    .line 948
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v1, "volume"

    const-string v3, "1"

    .line 949
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 951
    :try_start_c
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setSoundVolume(F)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_9

    .line 953
    :catch_0
    :try_start_d
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setSoundVolume(F)V

    goto/16 :goto_9

    .line 955
    :cond_21
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 956
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v14}, Lcom/netease/mpay/oversea/GameConfig;->setHiddenCloseBtn(Z)V

    const-string v1, "hide_login_close_button: true"

    .line 957
    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateConfig(Lcom/netease/mpay/oversea/GameConfig;)V

    goto/16 :goto_9

    :cond_22
    const-string v3, "openLVU"

    .line 959
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    if-eqz v3, :cond_23

    .line 962
    :try_start_e
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    :try_start_f
    const-string v1, "orderInfo"

    const-string v3, "{}"

    .line 965
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 966
    invoke-static {v1}, Lcom/netease/ntunisdk/base/OrderInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/OrderInfo;

    move-result-object v1

    .line 967
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v3, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;

    invoke-direct {v3, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openLVU(Lcom/netease/mpay/oversea/OnLVUCallback;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_9

    :cond_23
    :try_start_10
    const-string v3, "openCPT"

    .line 985
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    if-eqz v3, :cond_24

    .line 988
    :try_start_11
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 991
    :catchall_5
    :try_start_12
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$8;

    invoke-direct {v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$8;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openCPT(Lcom/netease/mpay/oversea/OnCPTCallback;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto/16 :goto_9

    :cond_24
    :try_start_13
    const-string v3, "showAASDialog"

    .line 1034
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    if-eqz v1, :cond_2b

    .line 1036
    :try_start_14
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :catchall_6
    :try_start_15
    const-string v1, "message"

    .line 1039
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extra"

    .line 1040
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->showAASDialog(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_9

    .line 797
    :cond_25
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->unBind()V

    goto/16 :goto_9

    .line 717
    :cond_26
    :goto_6
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 719
    invoke-virtual {v10, v1}, Lcom/netease/mpay/oversea/GameLanguage;->setFontPath(Ljava/lang/String;)V

    .line 720
    iput-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCachedFontPath:Ljava/lang/String;

    goto :goto_7

    .line 722
    :cond_27
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCachedFontPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 723
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCachedFontPath:Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/netease/mpay/oversea/GameLanguage;->setFontPath(Ljava/lang/String;)V

    .line 726
    :cond_28
    :goto_7
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    iget-object v4, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v4, v4, Lcom/netease/mpay/oversea/GameConfig;->host:Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 728
    iget-object v4, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v4, v4, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 729
    iget-object v4, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-boolean v4, v4, Lcom/netease/mpay/oversea/GameConfig;->debug:Z

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 730
    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/GameConfig;->isHiddenCloseBtn()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_8

    :cond_29
    const/4 v14, 0x0

    .line 731
    :cond_2a
    :goto_8
    invoke-virtual {v0, v11}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 732
    new-instance v11, Lcom/netease/mpay/oversea/GameConfig;

    move-object v4, v11

    move-object v5, v1

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/netease/mpay/oversea/GameConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)V

    iput-object v11, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    .line 733
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    .line 734
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v14}, Lcom/netease/mpay/oversea/GameConfig;->setHiddenCloseBtn(Z)V

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidden_close_button: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1, v10}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V

    .line 737
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateConfig(Lcom/netease/mpay/oversea/GameConfig;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    :catch_1
    :catchall_7
    :cond_2b
    :goto_9
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v0, :cond_0

    const-string p1, "sdk not init successfully"

    .line 684
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 688
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 689
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "updateActivity"

    .line 690
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 691
    array-length p1, p2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 692
    aget-object v0, p2, p1

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActivity:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    aget-object p1, p2, p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateActivity(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 699
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAuthType()I
    .locals 1

    .line 662
    iget v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginType:I

    return v0
.end method

.method public getAuthTypeName()Ljava/lang/String;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_global"

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "UniSDK netease_global"

    const-string v2, "SDK is uninitialized!"

    .line 346
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DEVICE_ID"

    .line 351
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getJfPaylMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/base/OrderInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 374
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getLineGameAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "UniSDK netease_global"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sub_channel"

    const-string v2, "line"

    .line 377
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJfPaylMap mid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "getJfPaylMap mid: 0"

    .line 380
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public getJfQueryOrderlMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/base/OrderInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 388
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "line_region"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "region"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getLineGameAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getJfQueryOrderlMap mid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    const-string v1, "mid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    const-string v1, "not_login"

    if-nez v0, :cond_0

    const-string v0, "UniSDK netease_global"

    const-string v2, "SDK is uninitialized!"

    .line 332
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SESSION"

    .line 337
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "UniSDK netease_global"

    const-string v2, "SDK is uninitialized!"

    .line 360
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UIN"

    .line 365
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2.0"

    return-object v0
.end method

.method public getUniSDKVersion()Ljava/lang/String;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public guestBind()V
    .locals 3

    const-string v0, "UniSDK netease_global"

    const-string v1, "bind guest"

    .line 535
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v1, :cond_0

    const-string v1, "SDK is uninitialized!"

    .line 537
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "BIND_TYPE"

    .line 540
    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openBindCenter(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 545
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v1

    .line 546
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->is3rdLibValid(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 547
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->bind(ILcom/netease/mpay/oversea/MpayBindCallback;)V

    goto :goto_0

    :cond_2
    const-string v1, "library not support this channel bind type"

    .line 549
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 553
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public hasPlatform(Ljava/lang/String;)Z
    .locals 4

    .line 1710
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "facebook_sdk"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->hasPlatform(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1713
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v3, "twitter"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 1714
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->hasPlatform(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    const/4 v0, 0x1

    :cond_3
    :goto_2
    return v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 11

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try netease init current thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v2, "FEATURE_HAS_GUEST"

    .line 119
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_GUEST_BIND"

    .line 120
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_SHARE"

    .line 121
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_NEED_UNITED_LOGIN"

    .line 122
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_QUERYSKUDETAILS"

    .line 123
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_ACHIEVEMENT"

    .line 124
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_MANAGER"

    .line 125
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_SWITCH_ACCOUNT"

    .line 126
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_LOGOUT"

    .line 127
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_FRIEND"

    .line 128
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_RANK"

    .line 129
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_LVU_DIALOG"

    .line 130
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    .line 133
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->configMpayHosts()V

    const-string v2, "JF_GAMEID"

    .line 135
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->jfGameId:Ljava/lang/String;

    const-string v2, "APPID"

    .line 137
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "DOMAIN"

    .line 138
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "WRITE_EXTERNAL_STORAGE"

    .line 139
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeExternalStorage: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isGoogleGamesV2Available()Z

    move-result v3

    const-string v5, "GOOGLE_PGS_V2_ENABLE"

    invoke-virtual {p0, v5, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 142
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v9, 0x0

    if-nez v3, :cond_1

    const-string v3, "http://"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 143
    :goto_0
    iget-boolean v5, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->debugMode:Z

    if-nez v5, :cond_3

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    const/4 v8, 0x0

    .line 144
    invoke-virtual {v7, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const-string v8, "netease_global_debug_on"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v10, 0x1

    :goto_2
    if-eqz v2, :cond_4

    const-string v5, "1"

    .line 145
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isNeedWriteExternalStorage:Z

    .line 147
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v2

    if-nez v3, :cond_5

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid domain: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", use default"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getAppChannel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2, v10}, Lcom/netease/mpay/oversea/GameConfig;->genDefaultConfig(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)Lcom/netease/mpay/oversea/GameConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    .line 152
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->jfGameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    goto :goto_4

    .line 154
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use custom domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v2, Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getAppChannel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v7

    move-object v3, v2

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/netease/mpay/oversea/GameConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)V

    iput-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    .line 156
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->jfGameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    .line 158
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsGameId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v3, v3, Lcom/netease/mpay/oversea/GameConfig;->jfGameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v2, Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-super {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-direct {v2, v3, v4, v5}, Lcom/netease/mpay/oversea/MpayOverseaApi;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/GameConfig;)V

    iput-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    .line 160
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mMonitorCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->addTraceCallback(Lcom/netease/mpay/oversea/trackers/Monitor$Callback;)Lcom/netease/mpay/oversea/MpayOverseaApi;

    .line 161
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->initMCountTracker()V

    const/4 v2, -0x1

    const-string v3, "SCR_ORIENTATION"

    .line 163
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v3, v2, :cond_c

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SCR_ORIENTATION: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    const/4 v8, 0x6

    if-ne v3, v7, :cond_6

    const/4 v3, 0x6

    goto :goto_5

    :cond_6
    if-ne v3, v8, :cond_7

    const/4 v3, 0x7

    goto :goto_5

    :cond_7
    if-ne v3, v0, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    if-ne v3, v5, :cond_9

    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    if-ne v3, v4, :cond_a

    const/16 v3, 0x8

    goto :goto_5

    :cond_a
    if-ne v3, v6, :cond_b

    const/4 v3, 0x4

    goto :goto_5

    :cond_b
    const/4 v3, -0x1

    :goto_5
    if-eq v3, v2, :cond_c

    .line 183
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setOrientation(I)V

    .line 187
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openDebug="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1, v10}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enableDebugMode(Z)V

    .line 190
    iget-boolean v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isNeedWriteExternalStorage:Z

    if-eqz v1, :cond_d

    .line 191
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enableRequestSdcardPermission(Z)V

    goto :goto_7

    :cond_d
    const-string v1, "ENABLE_REQUEST_SDCARD_PERMISSION"

    .line 193
    invoke-virtual {p0, v1, v9}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    .line 194
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-ne v1, v0, :cond_e

    const/4 v1, 0x1

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enableRequestSdcardPermission(Z)V

    .line 197
    :goto_7
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "line_region"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SKIN_TYPE"

    .line 200
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 202
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setSkinPath(Ljava/lang/String;)V

    :cond_f
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "func"

    aput-object v2, v1, v9

    const-string v2, "init"

    aput-object v2, v1, v0

    const-string v0, "step"

    aput-object v0, v1, v5

    const-string v0, "onInitDone"

    aput-object v0, v1, v4

    .line 205
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    if-eqz p1, :cond_10

    .line 210
    invoke-interface {p1, v9}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    :cond_10
    return-void
.end method

.method public isBinded(Ljava/lang/String;)Z
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->hasAuthTypeName(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public login()V
    .locals 11

    const-string v0, "login"

    const-string v1, "UniSDK netease_global"

    .line 464
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MINOR_STATUS"

    const/16 v3, 0x66

    .line 465
    invoke-virtual {p0, v2, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 466
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, ""

    const-string v4, "MINOR_ISO_CODE"

    invoke-interface {v2, v4, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v2, :cond_0

    const-string v0, "SDK is uninitialized!"

    .line 468
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    const-string v2, "AUTO_LINK_ACCOUNT"

    const/4 v4, 0x1

    .line 472
    invoke-virtual {p0, v2, v4}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 473
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUTO_LINK_ACCOUNT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v6, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v6, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setAcceptLinkAccount(Z)V

    const-string v2, "LOGIN_TYPE"

    .line 475
    invoke-virtual {p0, v2, v5}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_6

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    goto :goto_1

    .line 513
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v9, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v9}, Lcom/netease/mpay/oversea/MpayOverseaApi;->loginNewGuest(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_1

    .line 510
    :cond_3
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v9, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v9}, Lcom/netease/mpay/oversea/MpayOverseaApi;->migrateCodeLogin(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_1

    .line 501
    :cond_4
    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v9

    .line 502
    invoke-direct {p0, v9}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->is3rdLibValid(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 503
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v10, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v9, v10}, Lcom/netease/mpay/oversea/MpayOverseaApi;->channelLogin(ILcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_1

    :cond_5
    const-string v9, "library not support this channel login type"

    .line 505
    invoke-static {v1, v9}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 482
    :cond_6
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v9, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;

    invoke-direct {v9, p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    invoke-virtual {v1, v9}, Lcom/netease/mpay/oversea/MpayOverseaApi;->shouldAutoLogin(Lcom/netease/mpay/oversea/CheckAutoLoginCallback;)V

    goto :goto_1

    .line 478
    :cond_7
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v9, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v9}, Lcom/netease/mpay/oversea/MpayOverseaApi;->login(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    :goto_1
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v9, "func"

    aput-object v9, v1, v5

    aput-object v0, v1, v4

    const-string v0, "step"

    aput-object v0, v1, v8

    const-string v0, "login_start"

    aput-object v0, v1, v7

    const-string v0, "loginType"

    aput-object v0, v1, v6

    const/4 v0, 0x5

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public logout()V
    .locals 4

    const-string v0, "logout"

    const-string v1, "UniSDK netease_global"

    .line 607
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v2, :cond_0

    const-string v0, "SDK is uninitialized!"

    .line 609
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 613
    :cond_0
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->logout()V

    const/16 v1, 0x66

    const-string v2, "MINOR_STATUS"

    .line 614
    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 615
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "MINOR_ISO_CODE"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->resetCommonProp()V

    const/4 v1, 0x0

    .line 617
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->logoutDone(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "func"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    const-string v1, "step"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "logoutDone"

    aput-object v1, v2, v0

    .line 618
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    return-void
.end method

.method public openManager()V
    .locals 6

    const-string v0, "UniSDK netease_global"

    const-string v1, "user center"

    .line 580
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v1, :cond_0

    const-string v1, "SDK is uninitialized!"

    .line 582
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 586
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_1
    const-string v3, "AUTO_LINK_ACCOUNT"

    .line 590
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 591
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTO_LINK_ACCOUNT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setAcceptLinkAccount(Z)V

    .line 593
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v3, "MINOR_STATUS"

    const/16 v4, 0x12c

    invoke-interface {v0, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 594
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v3, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateMinorStatus(I)V

    .line 595
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openUserCenter(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "func"

    aput-object v3, v0, v1

    const-string v1, "openManager"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "step"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "open_manager_start"

    aput-object v2, v0, v1

    .line 599
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    return-void
.end method

.method public queryAvailablesInvitees()V
    .locals 2

    .line 1673
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "facebook_sdk"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->queryAvailablesInvitees()V

    :cond_0
    return-void
.end method

.method public queryFriendList()V
    .locals 3

    const-string v0, "UniSDK netease_global"

    const-string v1, "queryFriendList"

    .line 1614
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AUTH_CHANNEL"

    const-string v2, "facebook"

    .line 1615
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "linegame"

    .line 1616
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "linegame queryFriendList"

    .line 1617
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1619
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "getThirdPartyCredentials"

    .line 1621
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    :catch_0
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$15;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$15;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    goto :goto_0

    :cond_0
    const-string v1, "no pack linegame"

    .line 1631
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1634
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "facebook_sdk"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "fb queryFriendList"

    .line 1635
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->queryFriendList()V

    :cond_2
    :goto_0
    return-void
.end method

.method public queryFriendListInGame()V
    .locals 3

    const-string v0, "UniSDK netease_global"

    const-string v1, "queryFriendListInGame"

    .line 1643
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AUTH_CHANNEL"

    const-string v2, "facebook"

    .line 1644
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "linegame"

    .line 1645
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "linegame queryFriendListInGame"

    .line 1646
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1648
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "getThirdPartyCredentials"

    .line 1650
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    :catch_0
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$16;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$16;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    goto :goto_0

    :cond_0
    const-string v1, "no pack linegame"

    .line 1661
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1664
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "facebook_sdk"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "fb queryFriendListInGame"

    .line 1665
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->queryFriendListInGame()V

    :cond_2
    :goto_0
    return-void
.end method

.method public queryMyAccount()V
    .locals 3

    const-string v0, "UniSDK netease_global"

    const-string v1, "queryMyAccount"

    .line 1680
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AUTH_CHANNEL"

    const-string v2, "facebook"

    .line 1681
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "linegame"

    .line 1682
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "linegame queryMyAccount"

    .line 1683
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1685
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "getThirdPartyCredentials"

    .line 1687
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    :catch_0
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$17;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$17;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    goto :goto_0

    :cond_0
    const-string v1, "no pack linegame"

    .line 1697
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1700
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "facebook_sdk"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "fb queryMyAccount"

    .line 1701
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->queryMyAccount()V

    :cond_2
    :goto_0
    return-void
.end method

.method public queryRank(Lcom/netease/ntunisdk/base/QueryRankInfo;)V
    .locals 0

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 2

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugMode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->debugMode:Z

    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 3

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->obj2JsonStr(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v0

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_7

    const/16 v2, 0xca

    if-eq v0, v2, :cond_5

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_3

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_5

    const/16 v2, 0x132

    if-eq v0, v2, :cond_5

    const/16 v2, 0x133

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    const-string p1, "\u6ca1\u6709\u8bbe\u7f6e\u5206\u4eab\u6e20\u9053\uff1ashareInfo.setShareChannel"

    .line 1315
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1288
    :pswitch_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "line"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "\u6ca1\u6709\u6253\u5305line sdk"

    .line 1291
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    const-string v2, "kakao"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u6ca1\u6709\u6253\u5305kakao sdk"

    .line 1283
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "NT_SHARE_TYPE_LINE_GAME"

    .line 1296
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    const-string v2, "linegame"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1298
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "getThirdPartyCredentials"

    .line 1300
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    :catch_0
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$13;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$13;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/base/ShareInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    goto :goto_0

    :cond_4
    const-string p1, "no pack linegame"

    .line 1310
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1272
    :cond_5
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "twitter"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1273
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    :cond_6
    const-string p1, "\u6ca1\u6709\u6253\u5305twitter sdk"

    .line 1275
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    :cond_7
    :pswitch_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "facebook_sdk"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1263
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    :cond_8
    const-string p1, "\u6ca1\u6709\u6253\u5305facebook sdk"

    .line 1265
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected showAASDialog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-string v0, "UniSDK netease_global"

    const-string v1, "showAASDialog enter"

    .line 1049
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAASDialog message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v5, Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;

    invoke-direct {v5, p0, p2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Ljava/lang/String;)V

    new-instance v7, Lcom/netease/ntunisdk/SdkNeteaseGlobal$10;

    invoke-direct {v7, p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$10;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/netease/mpay/oversea/MpayOverseaApi;->showAASDialog(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result p1

    return p1
.end method

.method public switchAccount()V
    .locals 5

    const-string v0, "switchAccount"

    const-string v1, "UniSDK netease_global"

    .line 311
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->presentAccountSwitch(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "func"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "step"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "switchAccount_start"

    aput-object v3, v2, v0

    .line 314
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 4

    .line 631
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    const-string v1, "UniSDK netease_global"

    if-nez v0, :cond_0

    const-string v0, "SDK not init."

    .line 632
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "call upLoadUserInfo..."

    .line 635
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "USERINFO_UID"

    .line 637
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "role_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_NAME"

    .line 638
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nickname"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_GRADE"

    .line 639
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "grade"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_HOSTID"

    .line 640
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "host_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_HOSTNAME"

    .line 641
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "host_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_ROLE_TYPE_ID"

    .line 642
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_ROLE_TYPE_NAME"

    .line 643
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_MENPAI_ID"

    .line 644
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "menpai_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_MENPAI_NAME"

    .line 645
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "menpai_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_CAPABILITY"

    .line 646
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "capability"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_VIP"

    .line 647
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vip"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_GANG_ID"

    .line 648
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gang_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_ORG"

    .line 649
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gang_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "region_id"

    .line 650
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "region_name"

    .line 651
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLoginUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->syncRoleInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upLoadUserInfo roleInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "func"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "upLoadUserInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "step"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "uploadUserInfo_start"

    aput-object v2, v0, v1

    .line 654
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    return-void
.end method

.method public updateAchievement(Ljava/lang/String;I)V
    .locals 2

    .line 1593
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->updateAchievement(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updateEvent(Ljava/lang/String;I)V
    .locals 2

    .line 1600
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->updateEvent(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updateRank(Ljava/lang/String;D)V
    .locals 2

    .line 1568
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->updateRank(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

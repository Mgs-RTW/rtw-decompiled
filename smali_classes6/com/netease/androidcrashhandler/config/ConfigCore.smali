.class public Lcom/netease/androidcrashhandler/config/ConfigCore;
.super Ljava/lang/Object;
.source "ConfigCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigCore"

.field private static sConfigCore:Lcom/netease/androidcrashhandler/config/ConfigCore;


# instance fields
.field private CONFIG_FILE_NAME:Ljava/lang/String;

.field private mCarrierLimit:I

.field private mCatchLimit:I

.field private mDiFreshInterval:I

.field private mEnable:Z

.field private mExpire:I

.field private mFileLimit:I

.field private mIConfigFinishCallBack:Lcom/netease/androidcrashhandler/config/IConfigFinishCallBack;

.field private mLagEnabled:Z

.field private mLazyInterval:I

.field private mNotThrowJavaThrowableToSystem:Z

.field private mQueueSize:I

.field private mUrl:Ljava/lang/String;

.field private mWifiOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mEnable:Z

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mWifiOnly:Z

    const/16 v1, 0x1e

    .line 24
    iput v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mExpire:I

    const/16 v1, 0x14

    .line 26
    iput v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mQueueSize:I

    const/16 v1, 0x1800

    .line 28
    iput v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mFileLimit:I

    .line 30
    iput v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCarrierLimit:I

    const/16 v1, 0x12c

    .line 32
    iput v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mDiFreshInterval:I

    .line 36
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mNotThrowJavaThrowableToSystem:Z

    .line 39
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLagEnabled:Z

    .line 41
    iput v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLazyInterval:I

    const/16 v0, 0xa

    .line 43
    iput v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCatchLimit:I

    const-string v0, "crashhunter_config.txt"

    .line 45
    iput-object v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->CONFIG_FILE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mIConfigFinishCallBack:Lcom/netease/androidcrashhandler/config/IConfigFinishCallBack;

    const-string v0, "https://appdump.nie.netease.com/config"

    .line 50
    iput-object v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/config/ConfigCore;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->CONFIG_FILE_NAME:Ljava/lang/String;

    return-object p0
.end method

.method private fresh()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "ConfigCore [fresh] start"

    .line 179
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/netease/androidcrashhandler/net/NetStringRequest;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/net/NetStringRequest;-><init>()V

    .line 181
    iget-object v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/net/NetStringRequest;->setmUrl(Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/netease/androidcrashhandler/config/ConfigCore$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/config/ConfigCore$1;-><init>(Lcom/netease/androidcrashhandler/config/ConfigCore;)V

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/net/NetStringRequest;->setmNetCallbackImpl(Lcom/netease/androidcrashhandler/net/NetCallbackImpl;)V

    .line 261
    invoke-static {}, Lcom/netease/androidcrashhandler/task/TaskProxy;->getInstances()Lcom/netease/androidcrashhandler/task/TaskProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/androidcrashhandler/task/TaskProxy;->put(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;
    .locals 1

    .line 57
    sget-object v0, Lcom/netease/androidcrashhandler/config/ConfigCore;->sConfigCore:Lcom/netease/androidcrashhandler/config/ConfigCore;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/config/ConfigCore;->sConfigCore:Lcom/netease/androidcrashhandler/config/ConfigCore;

    .line 61
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/config/ConfigCore;->sConfigCore:Lcom/netease/androidcrashhandler/config/ConfigCore;

    return-object v0
.end method

.method private readLocalConfig()V
    .locals 4

    const-string v0, "trace"

    const-string v1, "ConfigCore [readLocalConfig] start"

    .line 82
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sConfigFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->file2Str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "trace"

    const-string v1, "ConfigCore [readLocalConfig] configiInfo is null"

    .line 86
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "trace"

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigCore [readLocalConfig] configiInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "enable"

    .line 94
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enable"

    .line 95
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mEnable:Z

    :cond_1
    const-string v0, "wifi_only"

    .line 98
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "wifi_only"

    .line 99
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mWifiOnly:Z

    :cond_2
    const-string v0, "expire"

    .line 102
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "expire"

    .line 103
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    const/16 v2, 0x2710

    if-gt v0, v2, :cond_3

    .line 105
    iput v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mExpire:I

    :cond_3
    const-string v0, "queue_size"

    .line 109
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "queue_size"

    .line 110
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    const/16 v2, 0x14

    if-gt v0, v2, :cond_4

    .line 112
    iput v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mQueueSize:I

    :cond_4
    const-string v0, "file_limit"

    .line 116
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x400

    if-eqz v0, :cond_5

    const-string v0, "file_limit"

    .line 117
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_5

    const/16 v3, 0x2800

    if-gt v0, v3, :cond_5

    .line 119
    iput v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mFileLimit:I

    :cond_5
    const-string v0, "carrier_limit"

    .line 124
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "carrier_limit"

    .line 125
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_6

    const/16 v2, 0x7800

    if-gt v0, v2, :cond_6

    .line 127
    iput v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCarrierLimit:I

    :cond_6
    const-string v0, "di_refresh_interval"

    .line 131
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "di_refresh_interval"

    .line 132
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xb4

    if-lt v0, v2, :cond_7

    const/16 v2, 0xe10

    if-gt v0, v2, :cond_7

    .line 134
    iput v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mDiFreshInterval:I

    :cond_7
    const-string v0, "not_throw_java_throwable_to_system"

    .line 142
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "not_throw_java_throwable_to_system"

    .line 143
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mNotThrowJavaThrowableToSystem:Z

    :cond_8
    const-string v0, "lag_enabled"

    .line 146
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "lag_enabled"

    .line 147
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLagEnabled:Z

    :cond_9
    const-string v0, "lazy_interval"

    .line 150
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "lazy_interval"

    .line 151
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_a

    const/16 v2, 0x4b0

    if-gt v0, v2, :cond_a

    .line 153
    iput v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLazyInterval:I

    :cond_a
    const-string v0, "catch_limit"

    .line 157
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "catch_limit"

    .line 158
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_b

    const/16 v2, 0x32

    if-gt v0, v2, :cond_b

    .line 160
    iput v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCatchLimit:I

    :cond_b
    const-string v0, "breakpad_enabled"

    .line 164
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 165
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    const-string v2, "breakpad_enabled"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->setmIsOpenBreakpad(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "trace"

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigCore [readLocalConfig] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_0
    const-string v0, "trace"

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfigCore [readLocalConfig] mEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWifiOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mWifiOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mExpire="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mExpire:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mQueueSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mQueueSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFileLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mFileLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCarrierLimit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCarrierLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDiFreshInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mDiFreshInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mNotThrowJavaThrowableToSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mNotThrowJavaThrowableToSystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLagEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLagEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLazyInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLazyInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCatchLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCatchLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeToEasebar()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mUrl:Ljava/lang/String;

    const-string v1, "\\.netease\\."

    const-string v2, ".easebar."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public getmCarrierLimit()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCarrierLimit:I

    return v0
.end method

.method public getmCatchLimit()I
    .locals 1

    .line 333
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCatchLimit:I

    return v0
.end method

.method public getmDiFreshTime()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mDiFreshInterval:I

    return v0
.end method

.method public getmExpire()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mExpire:I

    return v0
.end method

.method public getmFileLimit()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mFileLimit:I

    return v0
.end method

.method public getmLazyInterval()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLazyInterval:I

    return v0
.end method

.method public getmQueueSize()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mQueueSize:I

    return v0
.end method

.method public ismEnable()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mEnable:Z

    return v0
.end method

.method public ismLagEnabled()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLagEnabled:Z

    return v0
.end method

.method public ismNotThrowJavaThrowableToSystem()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mNotThrowJavaThrowableToSystem:Z

    return v0
.end method

.method public ismWifiOnly()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mWifiOnly:Z

    return v0
.end method

.method public setIConfigFinishCallBack(Lcom/netease/androidcrashhandler/config/IConfigFinishCallBack;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mIConfigFinishCallBack:Lcom/netease/androidcrashhandler/config/IConfigFinishCallBack;

    return-void
.end method

.method public setmCatchLimit(I)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCatchLimit:I

    return-void
.end method

.method public setmDiFreshTime(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mDiFreshInterval:I

    return-void
.end method

.method public setmLagEnabled(Z)V
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLagEnabled:Z

    return-void
.end method

.method public setmLazyInterval(I)V
    .locals 0

    .line 329
    iput p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLazyInterval:I

    return-void
.end method

.method public setmNotThrowJavaThrowableToSystem(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mNotThrowJavaThrowableToSystem:Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->readLocalConfig()V

    .line 77
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->fresh()V

    return-void
.end method

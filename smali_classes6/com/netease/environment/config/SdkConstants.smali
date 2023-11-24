.class public Lcom/netease/environment/config/SdkConstants;
.super Ljava/lang/Object;
.source "SdkConstants.java"


# static fields
.field public static final AN_HOUR:J = 0x36ee80L

.field public static final A_MUNITE:J = 0xea60L

.field public static final A_SECOND:J = 0x3e8L

.field public static final DEFAULT_REPLACE:Ljava/lang/String; = "***"

.field public static final DEFLAUT_NORMALIZE:Z = true

.field public static final DEFLAUT_SIMPLIFY:Z = true

.field public static final DEFLAUT_TO_DBC:Z = true

.field public static final DOWNLOAD_TIME:Ljava/lang/String; = "download"

.field public static final GET_URL_TIME:Ljava/lang/String; = "getUrl"

.field public static final ID_REGULAR_NONE:Ljava/lang/String; = "-1"

.field public static final INIT_TIME:Ljava/lang/String; = "init"

.field public static final JSON_KEY_ENABLE:Ljava/lang/String; = "enable"

.field public static final JSON_KEY_INTERCEPT:Ljava/lang/String; = "intercept"

.field public static final JSON_KEY_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final JSON_KEY_REGEX:Ljava/lang/String; = "regex"

.field public static final JSON_KEY_REMIND:Ljava/lang/String; = "remind"

.field public static final JSON_KEY_REPLACE:Ljava/lang/String; = "replace"

.field public static final JSON_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field public static final JSON_KEY_SHIELD:Ljava/lang/String; = "shield"

.field public static final JSON_KEY_TASK_TIMEOUT:Ljava/lang/String; = "taskTimeout"

.field public static final JSON_KEY_UPDATE_INTERVAL:Ljava/lang/String; = "updateInterval"

.field public static final LIMIT_LOG_LENGTH:I = 0x19000

.field public static final MODE_FAST:Ljava/lang/String; = "fast"

.field public static final MODE_NORMAL:Ljava/lang/String; = "normal"

.field public static final PRE_CHANNEL:Ljava/lang/String; = "channel="

.field public static final PRE_CONTENT:Ljava/lang/String; = "content="

.field public static final PRE_LEVEL:Ljava/lang/String; = "level="

.field public static final RESULT_CODE_ERROR:I = 0x64

.field public static final RESULT_CODE_INTERCEPT:I = 0xc9

.field public static final RESULT_CODE_PASS:I = 0xc8

.field public static final RESULT_CODE_REMIND:I = 0xcf

.field public static final RESULT_CODE_REPLACE:I = 0xce

.field public static final RESULT_CODE_SHIELD:I = 0xca

.field public static final RESULT_MESSAGE_CONTEXT_NULL:Ljava/lang/String; = "context is null"

.field public static final RESULT_MESSAGE_EMPTY:Ljava/lang/String; = "param is null or empty"

.field public static final RESULT_MESSAGE_ERROR:Ljava/lang/String; = "error"

.field public static final RESULT_MESSAGE_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final RESULT_MESSAGE_FILE_FAIL:Ljava/lang/String; = "fail to get the file"

.field public static final RESULT_MESSAGE_INTERCEPT:Ljava/lang/String; = "intercept"

.field public static final RESULT_MESSAGE_PARAMETER_ILLEGAL:Ljava/lang/String; = "param illegal"

.field public static final RESULT_MESSAGE_PASS:Ljava/lang/String; = "pass"

.field public static final RESULT_MESSAGE_REMIND:Ljava/lang/String; = "0"

.field public static final RESULT_MESSAGE_SHIELD:Ljava/lang/String; = "shield"

.field public static final RESULT_MESSAGE_TIMEOUT:Ljava/lang/String; = "time out"

.field public static final SYSTEM:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "SdkConstants"

.field public static final TIMEOUT_PER_REGULAR:J = 0x3e8L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitUrl()Ljava/lang/String;
    .locals 2

    .line 171
    invoke-static {}, Lcom/netease/environment/utils/DeviceUtils;->isOverAndroidP()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    goto :goto_0

    :cond_0
    const-string v0, "http"

    .line 172
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/initbox_android_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getIfTest()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "test.html"

    goto :goto_1

    :cond_1
    const-string v0, ".html"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

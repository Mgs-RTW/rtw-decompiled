.class public Lcom/netease/environment/model/RegexGetter;
.super Ljava/lang/Object;
.source "RegexGetter.java"


# static fields
.field private static TAG:Ljava/lang/String; = "RegexGetter"

.field private static sInterceptPatternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static sNicknamePatternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static sRemindPatternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static sReplacePatternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static sShieldPatternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterceptPatternMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->sInterceptPatternMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 52
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v0, "get intercept pattern list from memory"

    invoke-static {p0, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->sInterceptPatternMap:Ljava/util/Map;

    return-object p0

    :cond_0
    const-string v0, "intercept"

    .line 55
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getNicknamePatternMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->sNicknamePatternMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 36
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v0, "get nickname pattern list from memory"

    invoke-static {p0, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->sNicknamePatternMap:Ljava/util/Map;

    return-object p0

    :cond_0
    const-string v0, "nickname"

    .line 39
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static getPatternMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lcom/netease/environment/model/RegexGetter;->getRegexObject(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    .line 76
    invoke-static {p0, p1}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 83
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 90
    :try_start_0
    invoke-static {v3, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v5

    .line 92
    sget-object v6, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "regex compile error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v5, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to compile pattern of : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v4, :cond_0

    .line 96
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_1
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pattern list from file"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static getRegexObject(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    invoke-static {p0}, Lcom/netease/environment/utils/FileUtils;->getRegexFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/environment/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getRC4Key()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/environment/utils/RC4Utils;->decryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 154
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 158
    sget-object v1, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to parse json string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 161
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v0, "use default regex data"

    invoke-static {p0, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance p0, Lcom/netease/environment/model/DefaultRegex3;

    invoke-direct {p0}, Lcom/netease/environment/model/DefaultRegex3;-><init>()V

    .line 163
    invoke-virtual {p0}, Lcom/netease/environment/model/DefaultRegex3;->getRegexObject()Lorg/json/JSONObject;

    move-result-object v0

    :cond_1
    const-string p0, "regex"

    .line 165
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getRemindPatternMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->sRemindPatternMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 68
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v0, "get remind pattern list from memory"

    invoke-static {p0, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->sRemindPatternMap:Ljava/util/Map;

    return-object p0

    :cond_0
    const-string v0, "remind"

    .line 71
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getReplacePatternMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->sReplacePatternMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 60
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v0, "get replace pattern list from memory"

    invoke-static {p0, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->sReplacePatternMap:Ljava/util/Map;

    return-object p0

    :cond_0
    const-string v0, "replace"

    .line 63
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getShieldPatternMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->sShieldPatternMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 44
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v0, "get shield pattern list from memory"

    invoke-static {p0, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object p0, Lcom/netease/environment/model/RegexGetter;->sShieldPatternMap:Ljava/util/Map;

    return-object p0

    :cond_0
    const-string v0, "shield"

    .line 47
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static setPatternMap(Landroid/content/Context;)V
    .locals 3

    .line 119
    :try_start_0
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v1, "set pattern list with file"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p0}, Lcom/netease/environment/model/RegexGetter;->getRegexObject(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "nickname"

    .line 121
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/model/RegexGetter;->sNicknamePatternMap:Ljava/util/Map;

    const-string v0, "shield"

    .line 122
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/model/RegexGetter;->sShieldPatternMap:Ljava/util/Map;

    const-string v0, "intercept"

    .line 123
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/model/RegexGetter;->sInterceptPatternMap:Ljava/util/Map;

    const-string v0, "replace"

    .line 124
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/model/RegexGetter;->sReplacePatternMap:Ljava/util/Map;

    const-string v0, "remind"

    .line 125
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/model/RegexGetter;->sRemindPatternMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 127
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to save pattern list on memory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setPatternMap(Lorg/json/JSONObject;)V
    .locals 3

    .line 106
    :try_start_0
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v1, "set pattern list with json object"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nickname"

    .line 107
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/model/RegexGetter;->sNicknamePatternMap:Ljava/util/Map;

    const-string v0, "shield"

    .line 108
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/model/RegexGetter;->sShieldPatternMap:Ljava/util/Map;

    const-string v0, "intercept"

    .line 109
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/model/RegexGetter;->sInterceptPatternMap:Ljava/util/Map;

    const-string v0, "replace"

    .line 110
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/model/RegexGetter;->sReplacePatternMap:Ljava/util/Map;

    const-string v0, "remind"

    .line 111
    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/model/RegexGetter;->sRemindPatternMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 113
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to save pattern list on memory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.class public Lcom/netease/environment/action/RemindAction;
.super Ljava/lang/Object;
.source "RemindAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemindAction"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RemindWordsFast(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 28
    :try_start_0
    sget-object v0, Lcom/netease/environment/action/RemindAction;->TAG:Ljava/lang/String;

    const-string v1, "remind words fast mode"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    const-string p0, "time out"

    const-string p1, "-1"

    const-string v0, "M_5"

    .line 30
    invoke-static {v1, p0, p1, v0}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/model/RegexGetter;->getRemindPatternMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :try_start_1
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(?#"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_2

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x3

    if-ge v0, v1, :cond_2

    .line 45
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "fast"

    .line 52
    invoke-static {p1, v0}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 53
    sget-object p1, Lcom/netease/environment/action/RemindAction;->TAG:Ljava/lang/String;

    const-string v0, "exception when get remind tips"

    invoke-static {p1, v0}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/16 p1, 0xcf

    const-string v0, "M_1"

    .line 56
    invoke-static {p1, p0, v2, v0}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "time out"

    const-string p1, "-1"

    const-string v0, "M_2"

    .line 59
    invoke-static {v1, p0, p1, v0}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p0, 0xc8

    const-string p1, "pass"

    const-string v0, "-1"

    const-string v1, "M_3"

    .line 62
    invoke-static {p0, p1, v0, v1}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string p1, "fast"

    .line 64
    invoke-static {p0, p1}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 65
    sget-object p1, Lcom/netease/environment/action/RemindAction;->TAG:Ljava/lang/String;

    const-string v0, "exception when run in remind words fast mode"

    invoke-static {p1, v0}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object p1, Lcom/netease/environment/action/RemindAction;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "M_4"

    .line 67
    invoke-static {p0, p1}, Lcom/netease/environment/utils/JsonUtils;->getExceptionJsonString(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

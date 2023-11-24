.class public Lcom/netease/environment/action/ShieldAction;
.super Ljava/lang/Object;
.source "ShieldAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShieldAction"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShieldWordsFast(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 27
    :try_start_0
    sget-object v0, Lcom/netease/environment/action/ShieldAction;->TAG:Ljava/lang/String;

    const-string v1, "shield words fast mode"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    const-string p0, "time out"

    const-string p1, "-1"

    const-string v0, "S_5"

    .line 29
    invoke-static {v1, p0, p1, v0}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/model/RegexGetter;->getShieldPatternMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 36
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0xca

    const-string p1, "shield"

    const-string v0, "S_1"

    .line 38
    invoke-static {p0, p1, v2, v0}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 40
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "time out"

    const-string p1, "-1"

    const-string v0, "S_2"

    .line 41
    invoke-static {v1, p0, p1, v0}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 p0, 0xc8

    const-string p1, "pass"

    const-string v0, "-1"

    const-string v1, "S_3"

    .line 44
    invoke-static {p0, p1, v0, v1}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "fast"

    .line 46
    invoke-static {p0, p1}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 47
    sget-object p1, Lcom/netease/environment/action/ShieldAction;->TAG:Ljava/lang/String;

    const-string v0, "exception when run in shield words fast mode"

    invoke-static {p1, v0}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object p1, Lcom/netease/environment/action/ShieldAction;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "S_4"

    .line 49
    invoke-static {p0, p1}, Lcom/netease/environment/utils/JsonUtils;->getExceptionJsonString(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

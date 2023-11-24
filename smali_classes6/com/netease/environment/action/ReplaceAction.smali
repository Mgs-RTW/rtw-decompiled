.class public Lcom/netease/environment/action/ReplaceAction;
.super Ljava/lang/Object;
.source "ReplaceAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReplaceAction"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReplaceWordsFast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 31
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getNormalize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Lcom/netease/environment/utils/UnicodeUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-eq v0, v1, :cond_1

    .line 36
    sget-object p0, Lcom/netease/environment/action/ReplaceAction;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " format length:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param illegal"

    const-string p1, "-1"

    const-string p2, "R_1"

    .line 37
    invoke-static {v2, p0, p1, p2}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 41
    :cond_1
    :try_start_0
    sget-object v0, Lcom/netease/environment/action/ReplaceAction;->TAG:Ljava/lang/String;

    const-string v1, "replace words fast mode"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "time out"

    const-string p1, "-1"

    const-string p2, "R_6"

    .line 43
    invoke-static {v2, p0, p1, p2}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_2
    invoke-static {p0}, Lcom/netease/environment/model/RegexGetter;->getReplacePatternMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 47
    new-array v1, v0, [I

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 50
    check-cast v4, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 52
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 53
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 55
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 57
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 58
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    .line 59
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    .line 60
    sget-object v10, Lcom/netease/environment/action/ReplaceAction;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "the regex "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " matches "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " at "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v5, :cond_4

    if-le v8, v5, :cond_4

    if-lt v0, v8, :cond_4

    :goto_2
    if-ge v5, v8, :cond_4

    .line 64
    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 67
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string p0, "time out"

    const-string p1, "-1"

    const-string p2, "R_2"

    .line 68
    invoke-static {v2, p0, p1, p2}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_3

    .line 72
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 76
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    :goto_3
    if-ge v5, v0, :cond_a

    .line 80
    aget v2, v1, v5

    if-nez v2, :cond_8

    .line 81
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 82
    :cond_8
    aget v2, v1, v5

    if-ne v2, v6, :cond_9

    if-nez p2, :cond_9

    .line 83
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getReplaceData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_9
    :goto_4
    aget p2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 87
    :cond_a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const/16 p1, 0xce

    const-string p2, "R_3"

    .line 89
    invoke-static {p1, p0, v3, p2}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 p0, 0xc8

    const-string p1, "pass"

    const-string p2, "-1"

    const-string v0, "R_4"

    .line 92
    invoke-static {p0, p1, p2, v0}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "fast"

    .line 94
    invoke-static {p0, p1}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 95
    sget-object p1, Lcom/netease/environment/action/ReplaceAction;->TAG:Ljava/lang/String;

    const-string p2, "exception when run in replace words fast mode"

    invoke-static {p1, p2}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object p1, Lcom/netease/environment/action/ReplaceAction;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "R_5"

    .line 97
    invoke-static {p0, p1}, Lcom/netease/environment/utils/JsonUtils;->getExceptionJsonString(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

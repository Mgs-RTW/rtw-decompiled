.class public Lcom/netease/advertSdk/base/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JsonUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bundle2Map(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 179
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static isJson(Ljava/lang/String;)Z
    .locals 1

    .line 194
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    .line 196
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of p0, p0, Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 201
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 108
    :try_start_0
    invoke-static {p0}, Lcom/netease/advertSdk/base/JsonUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 109
    invoke-static {p0}, Lcom/netease/advertSdk/base/JsonUtils;->jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 132
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 134
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 135
    :cond_2
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 136
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 137
    :cond_3
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 138
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 139
    :cond_4
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_5

    .line 140
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 141
    :cond_5
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_6

    .line 142
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 143
    :cond_6
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_7

    .line 145
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_7
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_a

    .line 147
    check-cast v3, Lorg/json/JSONArray;

    .line 148
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 149
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eq v5, v6, :cond_9

    .line 150
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 152
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_2

    :cond_8
    const-string v6, ""

    .line 154
    aput-object v6, v4, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 157
    :cond_9
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    return-object v0
.end method

.method public static jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v1, :cond_0

    .line 34
    invoke-static {p0}, Lcom/netease/advertSdk/base/JsonUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static obj2str(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_2

    .line 83
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "JsonUtils"

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 61
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 63
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 64
    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/netease/advertSdk/base/JsonUtils;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 67
    :cond_0
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 68
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/netease/advertSdk/base/JsonUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 70
    :cond_1
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 47
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 48
    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/netease/advertSdk/base/JsonUtils;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 51
    :cond_0
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 52
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/netease/advertSdk/base/JsonUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 54
    :cond_1
    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

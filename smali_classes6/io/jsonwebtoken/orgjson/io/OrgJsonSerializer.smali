.class public Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;
.super Ljava/lang/Object;
.source "OrgJsonSerializer.java"

# interfaces
.implements Lio/jsonwebtoken/io/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/jsonwebtoken/io/Serializer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final JSON_STRING_CLASS:Ljava/lang/Class;

.field private static final JSON_STRING_CLASS_NAME:Ljava/lang/String; = "org.json.JSONString"

.field private static final JSON_WRITER_CLASS_NAME:Ljava/lang/String; = "org.json.JSONWriter"

.field private static final VALUE_TO_STRING_ARG_TYPES:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 43
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->VALUE_TO_STRING_ARG_TYPES:[Ljava/lang/Class;

    const-string v0, "org.json.JSONString"

    .line 48
    invoke-static {v0}, Lio/jsonwebtoken/lang/Classes;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "org.json.JSONString"

    .line 49
    invoke-static {v0}, Lio/jsonwebtoken/lang/Classes;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->JSON_STRING_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->JSON_STRING_CLASS:Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isJSONString(Ljava/lang/Object;)Z
    .locals 1

    .line 73
    sget-object v0, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->JSON_STRING_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->JSON_STRING_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 2

    .line 150
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 152
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 153
    invoke-direct {p0, v1}, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->toJSONInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toJSONInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    .line 82
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object p1

    .line 85
    :cond_0
    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_9

    instance-of v0, p1, Lorg/json/JSONArray;

    if-nez v0, :cond_9

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->isJSONString(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/math/BigInteger;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-nez v0, :cond_9

    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 96
    :cond_1
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 97
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 100
    :cond_2
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 101
    check-cast p1, Ljava/util/Date;

    .line 102
    invoke-static {p1}, Lio/jsonwebtoken/lang/DateFormats;->formatIso8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 105
    :cond_3
    instance-of v0, p1, [B

    if-eqz v0, :cond_4

    .line 106
    sget-object v0, Lio/jsonwebtoken/io/Encoders;->BASE64:Lio/jsonwebtoken/io/Encoder;

    check-cast p1, [B

    invoke-interface {v0, p1}, Lio/jsonwebtoken/io/Encoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 109
    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    .line 110
    new-instance v0, Ljava/lang/String;

    check-cast p1, [C

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 113
    :cond_5
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 114
    check-cast p1, Ljava/util/Map;

    .line 115
    invoke-direct {p0, p1}, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->toJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 117
    :cond_6
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_7

    .line 118
    check-cast p1, Ljava/util/Collection;

    .line 119
    invoke-direct {p0, p1}, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1

    .line 121
    :cond_7
    invoke-static {p1}, Lio/jsonwebtoken/lang/Objects;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 122
    invoke-static {p1}, Lio/jsonwebtoken/lang/Collections;->arrayToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1

    .line 128
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to serialize object of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to JSON using known heuristics."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    new-instance v0, Lio/jsonwebtoken/io/SerializationException;

    invoke-direct {v0, p1}, Lio/jsonwebtoken/io/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_0
    return-object p1
.end method

.method private toJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 136
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 140
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-direct {p0, v1}, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->toJSONInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/io/SerializationException;
        }
    .end annotation

    .line 58
    :try_start_0
    invoke-direct {p0, p1}, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->toJSONInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_0
    .catch Lio/jsonwebtoken/io/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to serialize object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to JSON: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v1, Lio/jsonwebtoken/io/SerializationException;

    invoke-direct {v1, p1, v0}, Lio/jsonwebtoken/io/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 62
    throw p1
.end method

.method protected toBytes(Ljava/lang/Object;)[B
    .locals 5

    .line 171
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "org.json.JSONWriter"

    const-string/jumbo v1, "valueToString"

    .line 176
    sget-object v2, Lio/jsonwebtoken/orgjson/io/OrgJsonSerializer;->VALUE_TO_STRING_ARG_TYPES:[Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lio/jsonwebtoken/lang/Classes;->invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 178
    :goto_0
    sget-object v0, Lio/jsonwebtoken/lang/Strings;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

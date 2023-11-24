.class public final Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "KakaoRetrofitConverterFactory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKakaoRetrofitConverterFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KakaoRetrofitConverterFactory.kt\ncom/kakao/sdk/network/KakaoRetrofitConverterFactory\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,61:1\n3523#2,9:62\n3523#2,9:71\n*E\n*S KotlinDebug\n*F\n+ 1 KakaoRetrofitConverterFactory.kt\ncom/kakao/sdk/network/KakaoRetrofitConverterFactory\n*L\n47#1,9:62\n52#1,9:71\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J?\u0010\u0003\u001a\u000e\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\n\u0018\u00010\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory;",
        "Lretrofit2/Converter$Factory;",
        "()V",
        "stringConverter",
        "Lretrofit2/Converter;",
        "",
        "type",
        "Ljava/lang/reflect/Type;",
        "annotations",
        "",
        "",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    const-class p3, Ljava/lang/String;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    instance-of p3, p1, Ljava/lang/Class;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 41
    sget-object p1, Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory$stringConverter$1;->INSTANCE:Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory$stringConverter$1;

    check-cast p1, Lretrofit2/Converter;

    return-object p1

    .line 46
    :cond_1
    const-class p3, Ljava/util/Date;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    .line 62
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 69
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    instance-of v4, v3, Lcom/kakao/sdk/common/json/IntDate;

    if-eqz v4, :cond_2

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_3
    check-cast p3, Ljava/util/List;

    .line 47
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kakao/sdk/common/json/IntDate;

    if-eqz p3, :cond_4

    .line 48
    sget-object p1, Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory$stringConverter$2$1;->INSTANCE:Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory$stringConverter$2$1;

    check-cast p1, Lretrofit2/Converter;

    return-object p1

    .line 51
    :cond_4
    instance-of p3, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_7

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    const-class p3, Ljava/util/Map;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 78
    array-length p3, p2

    :goto_1
    if-ge v0, p3, :cond_6

    aget-object v1, p2, v0

    instance-of v2, v1, Lcom/kakao/sdk/common/json/MapToQuery;

    if-eqz v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_6
    check-cast p1, Ljava/util/List;

    .line 52
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/common/json/MapToQuery;

    if-eqz p1, :cond_7

    .line 53
    sget-object p1, Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory$stringConverter$3$1;->INSTANCE:Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory$stringConverter$3$1;

    check-cast p1, Lretrofit2/Converter;

    return-object p1

    .line 56
    :cond_7
    sget-object p1, Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory$stringConverter$4;->INSTANCE:Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory$stringConverter$4;

    check-cast p1, Lretrofit2/Converter;

    return-object p1
.end method

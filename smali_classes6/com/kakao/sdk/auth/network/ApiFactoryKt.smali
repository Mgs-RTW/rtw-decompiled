.class public final Lcom/kakao/sdk/auth/network/ApiFactoryKt;
.super Ljava/lang/Object;
.source "ApiFactory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiFactory.kt\ncom/kakao/sdk/auth/network/ApiFactoryKt\n*L\n1#1,54:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\"\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001f\u0010\u0007\u001a\u00020\u0001*\u00020\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0006\u001a\u0004\u0008\u0008\u0010\u0004\u00a8\u0006\n"
    }
    d2 = {
        "kapiWithOAuth",
        "Lretrofit2/Retrofit;",
        "Lcom/kakao/sdk/network/ApiFactory;",
        "getKapiWithOAuth",
        "(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;",
        "kapiWithOAuth$delegate",
        "Lkotlin/Lazy;",
        "kauth",
        "getKauth",
        "kauth$delegate",
        "auth_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final kapiWithOAuth$delegate:Lkotlin/Lazy;

.field private static final kauth$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "auth_release"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v4

    const-string v5, "kapiWithOAuth"

    const-string v6, "getKapiWithOAuth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;"

    invoke-direct {v2, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v0

    const-string v3, "kauth"

    const-string v4, "getKauth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 30
    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$kapiWithOAuth$2;->INSTANCE:Lcom/kakao/sdk/auth/network/ApiFactoryKt$kapiWithOAuth$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->kapiWithOAuth$delegate:Lkotlin/Lazy;

    .line 46
    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$kauth$2;->INSTANCE:Lcom/kakao/sdk/auth/network/ApiFactoryKt$kauth$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->kauth$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final getKapiWithOAuth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;
    .locals 2

    const-string v0, "$this$kapiWithOAuth"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->kapiWithOAuth$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0
.end method

.method public static final getKauth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;
    .locals 2

    const-string v0, "$this$kauth"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->kauth$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0
.end method

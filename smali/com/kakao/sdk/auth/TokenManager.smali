.class public final Lcom/kakao/sdk/auth/TokenManager;
.super Ljava/lang/Object;
.source "TokenManager.kt"

# interfaces
.implements Lcom/kakao/sdk/auth/TokenManageable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/auth/TokenManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenManager.kt\ncom/kakao/sdk/auth/TokenManager\n+ 2 TokenManager.kt\ncom/kakao/sdk/auth/TokenManagerKt\n*L\n1#1,200:1\n195#2,6:201\n195#2,6:207\n195#2,6:213\n195#2,6:219\n*E\n*S KotlinDebug\n*F\n+ 1 TokenManager.kt\ncom/kakao/sdk/auth/TokenManager\n*L\n142#1,6:201\n153#1,6:207\n164#1,6:213\n169#1,6:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\n\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u0010\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/TokenManager;",
        "Lcom/kakao/sdk/auth/TokenManageable;",
        "appCache",
        "Lcom/kakao/sdk/common/util/PersistentKVStore;",
        "encryptor",
        "Lcom/kakao/sdk/common/util/Cipher;",
        "(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;)V",
        "getAppCache",
        "()Lcom/kakao/sdk/common/util/PersistentKVStore;",
        "currentToken",
        "Lcom/kakao/sdk/auth/model/OAuthToken;",
        "getEncryptor",
        "()Lcom/kakao/sdk/common/util/Cipher;",
        "clear",
        "",
        "getToken",
        "migrateFromOldVersion",
        "setToken",
        "token",
        "Companion",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/auth/TokenManager$Companion;

.field public static final atExpiresAtKey:Ljava/lang/String; = "com.kakao.token.OAuthToken.ExpiresAt"

.field public static final atKey:Ljava/lang/String; = "com.kakao.token.AccessToken"

.field private static final instance$delegate:Lkotlin/Lazy;

.field public static final rtExpiresAtKey:Ljava/lang/String; = "com.kakao.token.RefreshToken.ExpiresAt"

.field public static final rtKey:Ljava/lang/String; = "com.kakao.token.RefreshToken"

.field public static final secureModeKey:Ljava/lang/String; = "com.kakao.token.KakaoSecureMode"

.field public static final tokenKey:Ljava/lang/String; = "com.kakao.sdk.oauth_token"

.field public static final versionKey:Ljava/lang/String; = "com.kakao.sdk.version"


# instance fields
.field private final appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

.field private currentToken:Lcom/kakao/sdk/auth/model/OAuthToken;

.field private final encryptor:Lcom/kakao/sdk/common/util/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/auth/TokenManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/auth/TokenManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/auth/TokenManager;->Companion:Lcom/kakao/sdk/auth/TokenManager$Companion;

    .line 115
    sget-object v0, Lcom/kakao/sdk/auth/TokenManager$Companion$instance$2;->INSTANCE:Lcom/kakao/sdk/auth/TokenManager$Companion$instance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/TokenManager;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/kakao/sdk/auth/TokenManager;-><init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;)V
    .locals 2

    const-string v0, "appCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    iput-object p2, p0, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const-string v1, "com.kakao.sdk.version"

    .line 56
    invoke-static {p1, v1, v0, p2, v0}, Lcom/kakao/sdk/common/util/PersistentKVStore$DefaultImpls;->getString$default(Lcom/kakao/sdk/common/util/PersistentKVStore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/kakao/sdk/auth/TokenManager;->migrateFromOldVersion()V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    const-string v1, "com.kakao.sdk.oauth_token"

    invoke-static {p1, v1, v0, p2, v0}, Lcom/kakao/sdk/common/util/PersistentKVStore$DefaultImpls;->getString$default(Lcom/kakao/sdk/common/util/PersistentKVStore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    :try_start_0
    sget-object p2, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 63
    iget-object v1, p0, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    invoke-interface {v1, p1}, Lcom/kakao/sdk/common/util/Cipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    const-class v1, Lcom/kakao/sdk/auth/model/OAuthToken;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 62
    invoke-virtual {p2, p1, v1}, Lcom/kakao/sdk/common/util/KakaoJson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/auth/model/OAuthToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 67
    sget-object p2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {p2, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 60
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->currentToken:Lcom/kakao/sdk/auth/model/OAuthToken;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 47
    new-instance p1, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;

    .line 48
    sget-object p4, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p4}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p4

    .line 47
    invoke-direct {p1, p4}, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;-><init>(Landroid/content/SharedPreferences;)V

    check-cast p1, Lcom/kakao/sdk/common/util/PersistentKVStore;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 51
    new-instance p2, Lcom/kakao/sdk/common/util/AESCipher;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4, p3}, Lcom/kakao/sdk/common/util/AESCipher;-><init>(Lcom/kakao/sdk/common/model/ContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakao/sdk/common/util/Cipher;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/auth/TokenManager;-><init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 45
    sget-object v0, Lcom/kakao/sdk/auth/TokenManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final getInstance()Lcom/kakao/sdk/auth/TokenManager;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/auth/TokenManager;->Companion:Lcom/kakao/sdk/auth/TokenManager$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/TokenManager$Companion;->getInstance()Lcom/kakao/sdk/auth/TokenManager;

    move-result-object v0

    return-object v0
.end method

.method private final migrateFromOldVersion()V
    .locals 22

    move-object/from16 v1, p0

    const-string v2, "true"

    const-string v3, "com.kakao.token.RefreshToken.ExpiresAt"

    const-string v4, "KakaoJson.fromJson<JsonO\u2026               )[\"value\"]"

    const-string v5, "com.kakao.token.OAuthToken.ExpiresAt"

    const-string v6, "com.kakao.token.RefreshToken"

    const-string v7, "com.kakao.token.AccessToken"

    .line 135
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v8, "=== Migrate from old version token"

    invoke-virtual {v0, v8}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 136
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    const-string v8, "com.kakao.sdk.version"

    const-string v9, "2.5.0"

    invoke-interface {v0, v8, v9}, Lcom/kakao/sdk/common/util/PersistentKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/kakao/sdk/common/util/PersistentKVStore;->commit()Lcom/kakao/sdk/common/util/PersistentKVStore;

    .line 138
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    const-string v8, "com.kakao.token.KakaoSecureMode"

    const/4 v9, 0x0

    invoke-interface {v0, v8, v9}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "KakaoJson.fromJson<JsonO\u2026ect::class.java)[\"value\"]"

    const-string v11, "value"

    if-eqz v0, :cond_0

    .line 139
    sget-object v12, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    const-class v13, Lcom/google/gson/JsonObject;

    check-cast v13, Ljava/lang/reflect/Type;

    invoke-virtual {v12, v0, v13}, Lcom/kakao/sdk/common/util/KakaoJson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    move-object v12, v0

    .line 141
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "secureMode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 143
    :try_start_0
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    invoke-interface {v0, v7, v9}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    sget-object v13, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 147
    const-class v14, Lcom/google/gson/JsonObject;

    check-cast v14, Ljava/lang/reflect/Type;

    .line 145
    invoke-virtual {v13, v0, v14}, Lcom/kakao/sdk/common/util/KakaoJson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v1, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    invoke-interface {v13, v0}, Lcom/kakao/sdk/common/util/Cipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object v0, v9

    :cond_2
    :goto_1
    move-object v15, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 204
    sget-object v13, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v13, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    move-object v15, v9

    .line 152
    :goto_2
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "accessToken: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 154
    :try_start_1
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    invoke-interface {v0, v6, v9}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    sget-object v13, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 158
    const-class v14, Lcom/google/gson/JsonObject;

    check-cast v14, Ljava/lang/reflect/Type;

    .line 156
    invoke-virtual {v13, v0, v14}, Lcom/kakao/sdk/common/util/KakaoJson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 160
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    invoke-interface {v2, v0}, Lcom/kakao/sdk/common/util/Cipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_3
    move-object v0, v9

    :cond_4
    :goto_3
    move-object v2, v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 210
    sget-object v2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v2, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    move-object v2, v9

    .line 163
    :goto_4
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "refreshToken: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 165
    :try_start_2
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    invoke-interface {v0, v5, v9}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 166
    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    const-class v12, Lcom/google/gson/JsonObject;

    check-cast v12, Ljava/lang/reflect/Type;

    invoke-virtual {v4, v0, v12}, Lcom/kakao/sdk/common/util/KakaoJson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 216
    sget-object v4, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v4, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    :cond_5
    move-object v0, v9

    :goto_5
    if-eqz v0, :cond_6

    .line 218
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_6

    :cond_6
    const-wide/16 v12, 0x0

    .line 170
    :goto_6
    :try_start_3
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    invoke-interface {v0, v3, v9}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 171
    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    const-class v14, Lcom/google/gson/JsonObject;

    check-cast v14, Ljava/lang/reflect/Type;

    invoke-virtual {v4, v0, v14}, Lcom/kakao/sdk/common/util/KakaoJson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v9, v0

    goto :goto_7

    :catch_3
    move-exception v0

    .line 222
    sget-object v4, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v4, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    :cond_7
    :goto_7
    if-eqz v9, :cond_8

    .line 224
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_8

    :cond_8
    const-wide v9, 0x7fffffffffffffffL

    :goto_8
    if-eqz v15, :cond_9

    if-eqz v2, :cond_9

    .line 176
    new-instance v0, Lcom/kakao/sdk/auth/model/OAuthToken;

    .line 178
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 180
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v9, v10}, Ljava/util/Date;-><init>(J)V

    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x0

    move-object v14, v0

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    .line 176
    invoke-direct/range {v14 .. v21}, Lcom/kakao/sdk/auth/model/OAuthToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    iget-object v2, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    .line 183
    iget-object v4, v1, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    sget-object v9, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-virtual {v9, v0}, Lcom/kakao/sdk/common/util/KakaoJson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/kakao/sdk/common/util/Cipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.kakao.sdk.oauth_token"

    invoke-interface {v2, v4, v0}, Lcom/kakao/sdk/common/util/PersistentKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 184
    invoke-interface {v0, v8}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 185
    invoke-interface {v0, v7}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 186
    invoke-interface {v0, v6}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 187
    invoke-interface {v0, v5}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 188
    invoke-interface {v0, v3}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Lcom/kakao/sdk/common/util/PersistentKVStore;->commit()Lcom/kakao/sdk/common/util/PersistentKVStore;

    :cond_9
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 105
    check-cast v0, Lcom/kakao/sdk/auth/model/OAuthToken;

    iput-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->currentToken:Lcom/kakao/sdk/auth/model/OAuthToken;

    .line 106
    iget-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    const-string v1, "com.kakao.sdk.oauth_token"

    invoke-interface {v0, v1}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/kakao/sdk/common/util/PersistentKVStore;->commit()Lcom/kakao/sdk/common/util/PersistentKVStore;

    return-void
.end method

.method public final getAppCache()Lcom/kakao/sdk/common/util/PersistentKVStore;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    return-object v0
.end method

.method public final getEncryptor()Lcom/kakao/sdk/common/util/Cipher;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    return-object v0
.end method

.method public getToken()Lcom/kakao/sdk/auth/model/OAuthToken;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->currentToken:Lcom/kakao/sdk/auth/model/OAuthToken;

    return-object v0
.end method

.method public setToken(Lcom/kakao/sdk/auth/model/OAuthToken;)V
    .locals 7

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/kakao/sdk/auth/model/OAuthToken;

    .line 87
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->getAccessTokenExpiresAt()Ljava/util/Date;

    move-result-object v3

    .line 89
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->getRefreshTokenExpiresAt()Ljava/util/Date;

    move-result-object v5

    .line 91
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->getScopes()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    .line 86
    invoke-direct/range {v1 .. v6}, Lcom/kakao/sdk/auth/model/OAuthToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)V

    .line 94
    :try_start_0
    iget-object p1, p0, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    const-string v1, "com.kakao.sdk.oauth_token"

    iget-object v2, p0, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    sget-object v3, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-virtual {v3, v0}, Lcom/kakao/sdk/common/util/KakaoJson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/kakao/sdk/common/util/Cipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/kakao/sdk/common/util/PersistentKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object p1

    invoke-interface {p1}, Lcom/kakao/sdk/common/util/PersistentKVStore;->commit()Lcom/kakao/sdk/common/util/PersistentKVStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 96
    sget-object v1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v1, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 98
    :goto_0
    iput-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->currentToken:Lcom/kakao/sdk/auth/model/OAuthToken;

    return-void
.end method

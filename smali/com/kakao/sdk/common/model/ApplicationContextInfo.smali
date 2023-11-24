.class public final Lcom/kakao/sdk/common/model/ApplicationContextInfo;
.super Ljava/lang/Object;
.source "ApplicationContextInfo.kt"

# interfaces
.implements Lcom/kakao/sdk/common/model/ApplicationInfo;
.implements Lcom/kakao/sdk/common/model/ContextInfo;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u000f\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000cR\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u000cR\u000e\u0010\u0019\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u000cR\u0014\u0010&\u001a\u00020!8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0011\u0010)\u001a\u00020#8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0014\u0010,\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u000c\u00a8\u0006."
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ApplicationContextInfo;",
        "Lcom/kakao/sdk/common/model/ApplicationInfo;",
        "Lcom/kakao/sdk/common/model/ContextInfo;",
        "context",
        "Landroid/content/Context;",
        "appKey",
        "",
        "customScheme",
        "sdkType",
        "Lcom/kakao/sdk/common/KakaoSdk$Type;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kakao/sdk/common/KakaoSdk$Type;)V",
        "getAppKey",
        "()Ljava/lang/String;",
        "appVer",
        "getAppVer",
        "applicationContext",
        "getApplicationContext",
        "()Landroid/content/Context;",
        "getCustomScheme",
        "extras",
        "Lcom/google/gson/JsonObject;",
        "getExtras",
        "()Lcom/google/gson/JsonObject;",
        "kaHeader",
        "getKaHeader",
        "mAppVer",
        "mApplicationContext",
        "mClientId",
        "mCustomScheme",
        "mExtras",
        "mKaHeader",
        "mKeyHash",
        "mSalt",
        "",
        "mSharedPreferences",
        "Landroid/content/SharedPreferences;",
        "redirectUri",
        "getRedirectUri",
        "salt",
        "getSalt",
        "()[B",
        "sharedPreferences",
        "getSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "signingKeyHash",
        "getSigningKeyHash",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final mAppVer:Ljava/lang/String;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mClientId:Ljava/lang/String;

.field private final mCustomScheme:Ljava/lang/String;

.field private final mExtras:Lcom/google/gson/JsonObject;

.field private final mKaHeader:Ljava/lang/String;

.field private final mKeyHash:Ljava/lang/String;

.field private final mSalt:[B

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kakao/sdk/common/KakaoSdk$Type;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customScheme"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mClientId:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mCustomScheme:Ljava/lang/String;

    .line 36
    sget-object p3, Lcom/kakao/sdk/common/util/Utility;->INSTANCE:Lcom/kakao/sdk/common/util/Utility;

    invoke-virtual {p3, p1, p4}, Lcom/kakao/sdk/common/util/Utility;->getKAHeader(Landroid/content/Context;Lcom/kakao/sdk/common/KakaoSdk$Type;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mKaHeader:Ljava/lang/String;

    .line 37
    sget-object p3, Lcom/kakao/sdk/common/util/Utility;->INSTANCE:Lcom/kakao/sdk/common/util/Utility;

    invoke-virtual {p3, p1}, Lcom/kakao/sdk/common/util/Utility;->getKeyHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mKeyHash:Ljava/lang/String;

    .line 40
    sget-object p3, Lcom/kakao/sdk/common/util/Utility;->INSTANCE:Lcom/kakao/sdk/common/util/Utility;

    invoke-virtual {p3, p1, p4}, Lcom/kakao/sdk/common/util/Utility;->getExtras(Landroid/content/Context;Lcom/kakao/sdk/common/KakaoSdk$Type;)Lcom/google/gson/JsonObject;

    move-result-object p3

    iput-object p3, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mExtras:Lcom/google/gson/JsonObject;

    const/4 p3, 0x0

    .line 43
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p4, "context.getSharedPrefere\u2026ey, Context.MODE_PRIVATE)"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string p3, "context.packageManager.g\u2026ckageName, 0).versionName"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mAppVer:Ljava/lang/String;

    .line 46
    sget-object p2, Lcom/kakao/sdk/common/util/Utility;->INSTANCE:Lcom/kakao/sdk/common/util/Utility;

    invoke-virtual {p2, p1}, Lcom/kakao/sdk/common/util/Utility;->androidId(Landroid/content/Context;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mSalt:[B

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mApplicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mAppVer:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomScheme()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mCustomScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Lcom/google/gson/JsonObject;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mExtras:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getKaHeader()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mKaHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mCustomScheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://oauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mSalt:[B

    return-object v0
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSigningKeyHash()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->mKeyHash:Ljava/lang/String;

    return-object v0
.end method

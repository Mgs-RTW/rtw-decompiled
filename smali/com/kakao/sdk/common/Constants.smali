.class public final Lcom/kakao/sdk/common/Constants;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/kakao/sdk/common/Constants;",
        "",
        "()V",
        "ANDROID_PKG",
        "",
        "APP_KEY",
        "APP_KEY_HASH",
        "APP_PACKAGE",
        "APP_VER",
        "AUTHORIZATION",
        "BEARER",
        "DEVICE",
        "EXTRAS",
        "KA",
        "KAKAO_AK",
        "LANG",
        "META_APP_KEY",
        "ORIGIN",
        "OS",
        "SCHEME",
        "SDK",
        "SDK_TYPE",
        "SDK_TYPE_KOTLIN",
        "SDK_TYPE_RX_KOTLIN",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final ANDROID_PKG:Ljava/lang/String; = "android_pkg"

.field public static final APP_KEY:Ljava/lang/String; = "app_key"

.field public static final APP_KEY_HASH:Ljava/lang/String; = "keyHash"

.field public static final APP_PACKAGE:Ljava/lang/String; = "appPkg"

.field public static final APP_VER:Ljava/lang/String; = "app_ver"

.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final BEARER:Ljava/lang/String; = "Bearer"

.field public static final DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRAS:Ljava/lang/String; = "extras"

.field public static final INSTANCE:Lcom/kakao/sdk/common/Constants;

.field public static final KA:Ljava/lang/String; = "KA"

.field public static final KAKAO_AK:Ljava/lang/String; = "KakaoAK"

.field public static final LANG:Ljava/lang/String; = "lang"

.field public static final META_APP_KEY:Ljava/lang/String; = "com.kakao.sdk.AppKey"

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final OS:Ljava/lang/String; = "os"

.field public static final SCHEME:Ljava/lang/String; = "https"

.field public static final SDK:Ljava/lang/String; = "sdk"

.field public static final SDK_TYPE:Ljava/lang/String; = "sdk_type"

.field public static final SDK_TYPE_KOTLIN:Ljava/lang/String; = "kotlin"

.field public static final SDK_TYPE_RX_KOTLIN:Ljava/lang/String; = "rx-kotlin"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/kakao/sdk/common/Constants;

    invoke-direct {v0}, Lcom/kakao/sdk/common/Constants;-><init>()V

    sput-object v0, Lcom/kakao/sdk/common/Constants;->INSTANCE:Lcom/kakao/sdk/common/Constants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class final enum Lcom/appsflyer/internal/aa$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsflyer/internal/aa$e;",
        ">;"
    }
.end annotation


# static fields
.field private static enum $$a:Lcom/appsflyer/internal/aa$e;

.field public static final enum $$b:Lcom/appsflyer/internal/aa$e;

.field private static enum AFDateFormat:Lcom/appsflyer/internal/aa$e;

.field private static enum AFDeepLinkManager:Lcom/appsflyer/internal/aa$e;

.field private static enum collectIntentsFromActivities:Lcom/appsflyer/internal/aa$e;

.field private static enum dateFormatUTC:Lcom/appsflyer/internal/aa$e;

.field private static enum getDataFormatter:Lcom/appsflyer/internal/aa$e;

.field private static enum getInstance:Lcom/appsflyer/internal/aa$e;

.field private static enum getRequestListener:Lcom/appsflyer/internal/aa$e;

.field private static final synthetic isEncrypt:[Lcom/appsflyer/internal/aa$e;

.field private static enum requestListener:Lcom/appsflyer/internal/aa$e;

.field private static enum urlString:Lcom/appsflyer/internal/aa$e;

.field private static enum valueOf:Lcom/appsflyer/internal/aa$e;

.field private static enum values:Lcom/appsflyer/internal/aa$e;


# instance fields
.field private AFEvent:Ljava/lang/String;

.field private context:Ljava/lang/String;


# direct methods
.method static synthetic $$a(Lcom/appsflyer/internal/aa$e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/appsflyer/internal/aa$e;->AFEvent:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "ADOBE_AIR"

    const-string v2, "android_adobe_air"

    const-string v3, "com.appsflyer.adobeair.AppsFlyerExtension"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->$$a:Lcom/appsflyer/internal/aa$e;

    .line 58
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "ADOBE_MOBILE_SDK"

    const-string v2, "android_adobe_mobile"

    const-string v3, "com.appsflyer.adobeextension.AppsFlyerAdobeExtension"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->valueOf:Lcom/appsflyer/internal/aa$e;

    .line 59
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "COCOS2DX"

    const-string v2, "android_cocos2dx"

    const-string v3, "org.cocos2dx.lib.Cocos2dxActivity"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->values:Lcom/appsflyer/internal/aa$e;

    .line 60
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "CORDOVA"

    const-string v2, "android_cordova"

    const-string v3, "com.appsflyer.cordova.plugin.AppsFlyerPlugin"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->AFDateFormat:Lcom/appsflyer/internal/aa$e;

    .line 61
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "DEFAULT"

    const-string v2, "android_native"

    const-string v3, "android_native"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->$$b:Lcom/appsflyer/internal/aa$e;

    .line 62
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "FLUTTER"

    const/4 v2, 0x5

    const-string v3, "android_flutter"

    const-string v4, "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->getDataFormatter:Lcom/appsflyer/internal/aa$e;

    .line 63
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "M_PARTICLE"

    const/4 v2, 0x6

    const-string v3, "android_mparticle"

    const-string v4, "com.mparticle.kits.AppsFlyerKit"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->dateFormatUTC:Lcom/appsflyer/internal/aa$e;

    .line 64
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "NATIVE_SCRIPT"

    const/4 v2, 0x7

    const-string v3, "android_native_script"

    const-string v4, "com.tns.NativeScriptActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->AFDeepLinkManager:Lcom/appsflyer/internal/aa$e;

    .line 65
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "REACT_NATIVE"

    const/16 v2, 0x8

    const-string v3, "android_reactNative"

    const-string v4, "com.appsflyer.reactnative.RNAppsFlyerModule"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->getInstance:Lcom/appsflyer/internal/aa$e;

    .line 66
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "SEGMENT"

    const/16 v2, 0x9

    const-string v3, "android_segment"

    const-string v4, "com.segment.analytics.android.integrations.appsflyer.AppsflyerIntegration"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->collectIntentsFromActivities:Lcom/appsflyer/internal/aa$e;

    .line 67
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "UNITY"

    const/16 v2, 0xa

    const-string v3, "android_unity"

    const-string v4, "com.appsflyer.unity.AppsFlyerAndroidWrapper"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->getRequestListener:Lcom/appsflyer/internal/aa$e;

    .line 68
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "UNREAL_ENGINE"

    const/16 v2, 0xb

    const-string v3, "android_unreal"

    const-string v4, "com.epicgames.ue4.GameActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->urlString:Lcom/appsflyer/internal/aa$e;

    .line 69
    new-instance v0, Lcom/appsflyer/internal/aa$e;

    const-string v1, "XAMARIN"

    const/16 v2, 0xc

    const-string v3, "android_xamarin"

    const-string v4, "mono.android.app.XamarinAndroidEnvironmentVariables"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/aa$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/aa$e;->requestListener:Lcom/appsflyer/internal/aa$e;

    .line 56
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/appsflyer/internal/aa$e;

    sget-object v1, Lcom/appsflyer/internal/aa$e;->$$a:Lcom/appsflyer/internal/aa$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/internal/aa$e;->valueOf:Lcom/appsflyer/internal/aa$e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/internal/aa$e;->values:Lcom/appsflyer/internal/aa$e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/appsflyer/internal/aa$e;->AFDateFormat:Lcom/appsflyer/internal/aa$e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/appsflyer/internal/aa$e;->$$b:Lcom/appsflyer/internal/aa$e;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/appsflyer/internal/aa$e;->getDataFormatter:Lcom/appsflyer/internal/aa$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/appsflyer/internal/aa$e;->dateFormatUTC:Lcom/appsflyer/internal/aa$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/appsflyer/internal/aa$e;->AFDeepLinkManager:Lcom/appsflyer/internal/aa$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/appsflyer/internal/aa$e;->getInstance:Lcom/appsflyer/internal/aa$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/appsflyer/internal/aa$e;->collectIntentsFromActivities:Lcom/appsflyer/internal/aa$e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/appsflyer/internal/aa$e;->getRequestListener:Lcom/appsflyer/internal/aa$e;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/appsflyer/internal/aa$e;->urlString:Lcom/appsflyer/internal/aa$e;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/appsflyer/internal/aa$e;->requestListener:Lcom/appsflyer/internal/aa$e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/appsflyer/internal/aa$e;->isEncrypt:[Lcom/appsflyer/internal/aa$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/appsflyer/internal/aa$e;->AFEvent:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/appsflyer/internal/aa$e;->context:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/aa$e;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/appsflyer/internal/aa$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/aa$e;

    return-object v0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/aa$e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/appsflyer/internal/aa$e;->context:Ljava/lang/String;

    return-object v0
.end method

.method public static values()[Lcom/appsflyer/internal/aa$e;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/appsflyer/internal/aa$e;->isEncrypt:[Lcom/appsflyer/internal/aa$e;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/aa$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/aa$e;

    return-object v0
.end method

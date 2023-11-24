.class public Lcom/netease/environment/config/SdkData;
.super Ljava/lang/Object;
.source "SdkData.java"


# static fields
.field private static sContext:Landroid/content/Context; = null

.field private static sGameId:Ljava/lang/String; = null

.field private static sHost:Ljava/lang/String; = null

.field private static sIfTest:Z = false

.field private static sNormalize:Z = true

.field private static sRC4Key:Ljava/lang/String; = null

.field private static sReplaceData:Ljava/lang/String; = "***"

.field private static sSimplify:Z = true

.field private static sToDBC:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 26
    sget-object v0, Lcom/netease/environment/config/SdkData;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getGameId()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/netease/environment/config/SdkData;->sGameId:Ljava/lang/String;

    return-object v0
.end method

.method public static getHost()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/netease/environment/config/SdkData;->sHost:Ljava/lang/String;

    return-object v0
.end method

.method public static getIfTest()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/netease/environment/config/SdkData;->sIfTest:Z

    return v0
.end method

.method public static getNormalize()Z
    .locals 1

    .line 79
    sget-boolean v0, Lcom/netease/environment/config/SdkData;->sNormalize:Z

    return v0
.end method

.method public static getRC4Key()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/netease/environment/config/SdkData;->sRC4Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getReplaceData()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/netease/environment/config/SdkData;->sReplaceData:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimplify()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/netease/environment/config/SdkData;->sSimplify:Z

    return v0
.end method

.method public static getToDBC()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/netease/environment/config/SdkData;->sToDBC:Z

    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/config/SdkData;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static setGameId(Ljava/lang/String;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/netease/environment/config/SdkData;->sGameId:Ljava/lang/String;

    return-void
.end method

.method public static setHost(Ljava/lang/String;)V
    .locals 0

    .line 55
    sput-object p0, Lcom/netease/environment/config/SdkData;->sHost:Ljava/lang/String;

    return-void
.end method

.method public static setIfTest(Z)V
    .locals 0

    .line 47
    sput-boolean p0, Lcom/netease/environment/config/SdkData;->sIfTest:Z

    return-void
.end method

.method public static setNormalize(Z)V
    .locals 0

    .line 83
    sput-boolean p0, Lcom/netease/environment/config/SdkData;->sNormalize:Z

    return-void
.end method

.method public static setRC4Key(Ljava/lang/String;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/netease/environment/config/SdkData;->sRC4Key:Ljava/lang/String;

    return-void
.end method

.method public static setReplaceData(Ljava/lang/String;)V
    .locals 0

    .line 91
    sput-object p0, Lcom/netease/environment/config/SdkData;->sReplaceData:Ljava/lang/String;

    return-void
.end method

.method public static setSimplify(Z)V
    .locals 0

    .line 63
    sput-boolean p0, Lcom/netease/environment/config/SdkData;->sSimplify:Z

    return-void
.end method

.method public static setToDBC(Z)V
    .locals 0

    .line 75
    sput-boolean p0, Lcom/netease/environment/config/SdkData;->sToDBC:Z

    return-void
.end method

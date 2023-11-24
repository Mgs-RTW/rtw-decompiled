.class public Lcom/netease/advertSdk/base/AdvertU3d;
.super Ljava/lang/Object;
.source "AdvertU3d.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvertU3d"

.field private static inst:Lcom/netease/advertSdk/base/AdvertMgr;

.field private static instU3d:Lcom/netease/advertSdk/base/AdvertU3d;

.field private static unityPlayClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyInst()V
    .locals 2

    const-string v0, "AdvertU3d"

    const-string v1, "AdvertU3d destroy!"

    .line 45
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->inst:Lcom/netease/advertSdk/base/AdvertMgr;

    return-void
.end method

.method public static getInst()Lcom/netease/advertSdk/base/AdvertMgr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->inst:Lcom/netease/advertSdk/base/AdvertMgr;

    if-nez v0, :cond_0

    const-string v0, "AdvertU3d"

    const-string v1, "AdvertU3d init!"

    .line 37
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v0

    invoke-static {}, Lcom/netease/advertSdk/base/AdvertU3d;->getUnityPlayerClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivity"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/advertSdk/base/AdvertMgr;->init(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v0

    sput-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->inst:Lcom/netease/advertSdk/base/AdvertMgr;

    .line 41
    :cond_0
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->inst:Lcom/netease/advertSdk/base/AdvertMgr;

    return-object v0
.end method

.method public static getInstU3d()Lcom/netease/advertSdk/base/AdvertU3d;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->instU3d:Lcom/netease/advertSdk/base/AdvertU3d;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/netease/advertSdk/base/AdvertU3d;

    invoke-direct {v0}, Lcom/netease/advertSdk/base/AdvertU3d;-><init>()V

    sput-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->instU3d:Lcom/netease/advertSdk/base/AdvertU3d;

    .line 32
    :cond_0
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->instU3d:Lcom/netease/advertSdk/base/AdvertU3d;

    return-object v0
.end method

.method private static getUnityPlayerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->unityPlayClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.unity3d.player.UnityPlayer"

    .line 23
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->unityPlayClass:Ljava/lang/Class;

    .line 25
    :cond_0
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->unityPlayClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 55
    invoke-static {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertU3d;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AdvertU3d"

    const-string p1, "chnlDtl is null"

    .line 66
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    invoke-static {p2}, Lcom/netease/advertSdk/base/JsonUtils;->jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    const-string p2, "AdvertU3d"

    const-string v1, "=====AdvertU3d.trackEvent"

    .line 75
    invoke-static {p2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 80
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AdvertU3d"

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "param : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p0, v1, v2, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-void
.end method

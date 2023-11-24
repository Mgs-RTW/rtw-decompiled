.class public Lcom/netease/ntunisdk/SdkPlayCore;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkPlayCore.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "play_core"

.field private static final TAG:Ljava/lang/String; = "SdkPlayCore"

.field private static final VER:Ljava/lang/String; = "1.8.2"


# instance fields
.field private final funcImplementations:[Lcom/netease/ntunisdk/func/FuncInterface;

.field private init:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 34
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkPlayCore;->init:Z

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/ntunisdk/func/FuncInterface;

    .line 27
    new-instance v1, Lcom/netease/ntunisdk/func/FuncReview;

    invoke-direct {v1}, Lcom/netease/ntunisdk/func/FuncReview;-><init>()V

    aput-object v1, v0, p1

    new-instance p1, Lcom/netease/ntunisdk/func/FuncAssetPack;

    invoke-direct {p1}, Lcom/netease/ntunisdk/func/FuncAssetPack;-><init>()V

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance p1, Lcom/netease/ntunisdk/func/FuncInAppUpdate;

    invoke-direct {p1}, Lcom/netease/ntunisdk/func/FuncInAppUpdate;-><init>()V

    const/4 v2, 0x2

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkPlayCore;->funcImplementations:[Lcom/netease/ntunisdk/func/FuncInterface;

    const-string p1, "INNER_MODE_SECOND_CHANNEL"

    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/netease/ntunisdk/SdkPlayCore;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "INNER_MODE_NO_PAY"

    .line 36
    invoke-virtual {p0, p1, v1}, Lcom/netease/ntunisdk/SdkPlayCore;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "PLAY_CORE_ENABLE"

    .line 38
    invoke-virtual {p0, p1, v1}, Lcom/netease/ntunisdk/SdkPlayCore;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public exit()V
    .locals 4

    .line 109
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkPlayCore;->init:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPlayCore;->funcImplementations:[Lcom/netease/ntunisdk/func/FuncInterface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 111
    invoke-interface {v3}, Lcom/netease/ntunisdk/func/FuncInterface;->onDestroy()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/netease/ntunisdk/base/SdkBase;->exit()V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkPlayCore"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkPlayCore;->init:Z

    if-nez v0, :cond_0

    const-string p1, "sdk not init, will not exec."

    .line 138
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPlayCore;->funcImplementations:[Lcom/netease/ntunisdk/func/FuncInterface;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 146
    invoke-interface {v3, v0}, Lcom/netease/ntunisdk/func/FuncInterface;->extendFunc(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkPlayCore"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkPlayCore;->init:Z

    if-nez v0, :cond_0

    const-string p1, "sdk not init, will not exec."

    .line 160
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPlayCore;->funcImplementations:[Lcom/netease/ntunisdk/func/FuncInterface;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 168
    invoke-interface {v3, v0, p2}, Lcom/netease/ntunisdk/func/FuncInterface;->extendFunc(Lorg/json/JSONObject;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "play_core"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.8.2"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkPlayCore;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPlayCore;->funcImplementations:[Lcom/netease/ntunisdk/func/FuncInterface;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 44
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkPlayCore;->myCtx:Landroid/content/Context;

    invoke-interface {v4, p0, v5}, Lcom/netease/ntunisdk/func/FuncInterface;->onCreate(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkPlayCore;->init:Z

    if-eqz p1, :cond_1

    .line 50
    invoke-interface {p1, v2}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    :cond_1
    return-void
.end method

.method public login()V
    .locals 0

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 100
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkPlayCore;->init:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPlayCore;->funcImplementations:[Lcom/netease/ntunisdk/func/FuncInterface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 102
    invoke-interface {v3, p1, p2, p3}, Lcom/netease/ntunisdk/func/FuncInterface;->onActivityResult(IILandroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sdkOnResume()V
    .locals 4

    .line 91
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkPlayCore;->init:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPlayCore;->funcImplementations:[Lcom/netease/ntunisdk/func/FuncInterface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 93
    invoke-interface {v3}, Lcom/netease/ntunisdk/func/FuncInterface;->onResume()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method

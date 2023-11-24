.class public Lcom/netease/ntunisdk/SdkPermissionKit;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkPermissionKit.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/permission/PermissionContext;


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "netease_permission_kit"

.field private static final FEATURE_HAS_INIT_UISDK:Ljava/lang/String; = "FEATURE_HAS_INIT_UISDK"

.field private static final TAG:Ljava/lang/String; = "UniSDK PermissionKit"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "TAG_PERMISSION"

.field private static final UNISDK_PERMISSION_SETTING_TIP:Ljava/lang/String; = "UNISDK_PERMISSION_SETTING_TIP"

.field private static final UNISDK_PERMISSION_TOAST_TIP:Ljava/lang/String; = "UNISDK_PERMISSION_TOAST_TIP"

.field private static final VER:Ljava/lang/String; = "1.2.0"


# instance fields
.field private handler:Landroid/os/Handler;

.field private permissionHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;",
            ">;"
        }
    .end annotation
.end field

.field private permissionHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkPermissionKit;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "INNER_MODE_NO_PAY"

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkPermissionKit;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/SdkPermissionKit;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->permissionHandlerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/SdkPermissionKit;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->permissionHandlerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/SdkPermissionKit;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkPermissionKit;->showFragment(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/SdkPermissionKit;Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/SdkPermissionKit;->extendCallHandOut(Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V

    return-void
.end method

.method private extendCall(Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V
    .locals 9

    const-string v0, "UniSDK PermissionKit"

    .line 264
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->SUCCESS:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "permissionName"

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    .line 265
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 268
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 270
    :goto_0
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v4, 0x538

    .line 271
    iput v4, v1, Landroid/os/Message;->what:I

    .line 272
    iget-object v4, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 278
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "refuseTip"

    .line 280
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 282
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object p3, v3

    :goto_1
    const-string v2, "respCode"

    .line 284
    invoke-virtual {p2}, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->getCode()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "respMsg"

    .line 285
    invoke-virtual {p2}, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p4, :cond_6

    .line 288
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 289
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_5

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "permissionName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v6, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "HAS_BEEN_SET_NEVER_ASK_AGAIN_"

    if-eqz v6, :cond_3

    .line 292
    :try_start_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v6, v8, :cond_3

    .line 293
    iget-object v6, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 295
    iget-object v6, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    .line 300
    :cond_3
    iget-object v6, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, -0x2

    .line 302
    aput v6, p4, v5

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 305
    :cond_5
    sget-object v2, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->SUCCESS:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    if-ne p2, v2, :cond_7

    const-string p2, "result"

    .line 306
    invoke-static {p4}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->joinString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    const-string p2, "permissionName is null or grantResults is null"

    .line 309
    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    .line 312
    invoke-direct {p0, p4, p3}, Lcom/netease/ntunisdk/SdkPermissionKit;->showToast([ILjava/lang/String;)V

    .line 314
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extendCall:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 316
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkPermissionKit;->extendFuncCall(Ljava/lang/String;)V

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " extendFuncCall Game: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string p2, "channel"

    .line 319
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V

    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " extendFuncCall SDK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 324
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "jsonException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method private extendCallCompatible(Ljava/lang/String;Lorg/json/JSONObject;[I)V
    .locals 10

    const-string v0, "UniSDK PermissionKit"

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "permissionName"

    .line 228
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, ","

    .line 229
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 230
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 232
    :goto_0
    array-length v7, p2

    if-ge v5, v7, :cond_2

    .line 233
    iget-object v7, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HAS_BEEN_SET_NEVER_ASK_AGAIN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, p2, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    .line 234
    aget v8, p3, v5

    if-eqz v8, :cond_1

    .line 236
    aget-object v6, p2, v5

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    const-string v1, "uniSDKPermissionDenied"

    .line 243
    :cond_3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 244
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 245
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "methodId"

    .line 246
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    .line 247
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "permissions"

    .line 248
    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "dontAskAgain"

    .line 249
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_4

    .line 251
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkPermissionKit;->extendFuncCall(Ljava/lang/String;)V

    const-string p1, " extendFuncCall Game"

    .line 252
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 255
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "jsonException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private extendCallHandOut(Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V
    .locals 2

    const-string v0, "isCallGame"

    const/4 v1, 0x1

    .line 214
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 215
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/SdkPermissionKit;->extendCall(Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1, p3, p4}, Lcom/netease/ntunisdk/SdkPermissionKit;->extendCallCompatible(Ljava/lang/String;Lorg/json/JSONObject;[I)V

    :cond_0
    return-void
.end method

.method private requestPermission(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "UniSDK PermissionKit"

    const-string v1, "requestPermission-onStart"

    .line 148
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {p2}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->checkParam(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 152
    sget-object v1, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->PARAM_ERROR:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/netease/ntunisdk/SdkPermissionKit;->extendCallHandOut(Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V

    const-string p1, "requestPermission check permissionString failed"

    .line 153
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "permissionName"

    .line 156
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    new-instance v3, Lcom/netease/ntunisdk/SdkPermissionKit$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/netease/ntunisdk/SdkPermissionKit$2;-><init>(Lcom/netease/ntunisdk/SdkPermissionKit;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 176
    new-instance p1, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-direct {p1, p0, v3, p2}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;-><init>(Lcom/netease/ntunisdk/modules/permission/PermissionContext;Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;Lorg/json/JSONObject;)V

    .line 178
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const/4 v3, 0x0

    const-string v4, "ENABLE_UNISDK_PERMISSION_TIPS"

    invoke-interface {p2, v4, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p1, v3}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->setShowDialog(Z)V

    .line 179
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v3, "UNISDK_PERMISSION_SETTING_TIP"

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->setTipSetting(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 181
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->permissionHandlerMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 182
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->permissionHandlerMap:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 183
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->permissionHandlerMap:Ljava/util/Map;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "put Permission Success"

    .line 184
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->permissionHandlerList:Ljava/util/List;

    new-instance v2, Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;

    invoke-direct {v2, v1, p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;-><init>(Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "add Permission Success"

    .line 187
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_3
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_4

    .line 192
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    move-object v2, p2

    check-cast v2, Landroid/app/Activity;

    :cond_4
    if-eqz v2, :cond_5

    .line 196
    new-instance p2, Lcom/netease/ntunisdk/SdkPermissionKit$3;

    invoke-direct {p2, p0, v1, p1}, Lcom/netease/ntunisdk/SdkPermissionKit$3;-><init>(Lcom/netease/ntunisdk/SdkPermissionKit;Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    invoke-virtual {v2, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    const-string p1, "Requesting Permission Success"

    .line 206
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p1, "Requesting Permission Failed"

    .line 208
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private showFragment(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 5

    .line 350
    new-instance v0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    invoke-direct {v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;-><init>()V

    .line 352
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkPermissionKit;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkPermissionKit;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 354
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 356
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "TAG_PERMISSION"

    .line 357
    invoke-virtual {v3, v0, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 359
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 360
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->setContext(Landroid/content/Context;)V

    .line 361
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->permissionHandlerMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->setPermissionHandlerMap(Ljava/util/Map;)V

    .line 362
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->classifyPermission(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    :cond_0
    return-void
.end method

.method private showToast([ILjava/lang/String;)V
    .locals 4

    .line 330
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p1, v2

    if-gez v3, :cond_2

    .line 332
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "UNISDK_PERMISSION_TOAST_TIP"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 335
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    iget-object p2, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    const v0, 0x7f0c0167

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/permissionkit/LanguageProxy;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionToast;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 337
    :cond_0
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    invoke-static {p2, p1, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionToast;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    invoke-static {p1, p2, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionToast;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 8

    .line 112
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "channel"

    .line 113
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "requestChannel"

    .line 114
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result"

    .line 115
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, "UniSDK PermissionKit"

    if-nez v2, :cond_0

    :try_start_1
    const-string p1, "extendFunc ignore json"

    .line 117
    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "methodId"

    .line 120
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extendFunc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "setLanguage"

    .line 122
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const-string v4, "language"

    .line 123
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v6

    const-string v7, "LANGUAGE_CODE"

    invoke-interface {v6, v7, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-static {v4}, Lcom/netease/ntunisdk/permissionkit/LanguageProxy;->setLanguageCode(Ljava/lang/String;)V

    :cond_1
    const-string v4, "netease_permission_kit"

    .line 126
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_3

    :try_start_2
    const-string p1, "requestPermission"

    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 129
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/SdkPermissionKit;->requestPermission(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 131
    :cond_2
    sget-object p1, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->NO_EXIST_METHOD:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    invoke-direct {p0, v1, p1, v0, v5}, Lcom/netease/ntunisdk/SdkPermissionKit;->extendCallHandOut(Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V

    const-string p1, "extendFunc No exist method"

    .line 132
    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    :try_start_3
    sget-object v2, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    invoke-direct {p0, v1, v2, v0, v5}, Lcom/netease/ntunisdk/SdkPermissionKit;->extendCallHandOut(Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc UnknownException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 135
    sget-object v2, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->JSON_ERROR:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    invoke-direct {p0, v1, v2, v0, v5}, Lcom/netease/ntunisdk/SdkPermissionKit;->extendCallHandOut(Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc JSONException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_3
    :goto_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_permission_kit"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

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

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 4

    const-string v0, "UniSDK PermissionKit"

    const-string v1, "netease_permission_kit version: 1.2.0"

    .line 63
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "init netease_permission_kit"

    .line 64
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "FEATURE_HAS_INIT_UISDK"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 66
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "LANGUAGE_CODE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init netease_permission_kit language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v1}, Lcom/netease/ntunisdk/permissionkit/LanguageProxy;->setLanguageCode(Ljava/lang/String;)V

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->permissionHandlerList:Ljava/util/List;

    .line 70
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->permissionHandlerMap:Ljava/util/Map;

    .line 71
    new-instance v1, Lcom/netease/ntunisdk/SdkPermissionKit$1;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->myCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/netease/ntunisdk/SdkPermissionKit$1;-><init>(Lcom/netease/ntunisdk/SdkPermissionKit;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkPermissionKit;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 99
    invoke-interface {p1, v1}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    const-string p1, "PermissionKit.onInitFinish: OK"

    .line 100
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

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

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method

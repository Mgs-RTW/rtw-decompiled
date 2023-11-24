.class public Lcom/netease/ntunisdk/modules/permission/PermissionModule;
.super Lcom/netease/ntunisdk/modules/base/BaseModules;
.source "PermissionModule.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/permission/PermissionContext;


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionModule"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "TAG_PERMISSION"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final permissionHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionHandlerMap:Ljava/util/Map;
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
.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/modules/base/BaseModules;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V

    const/4 p2, 0x1

    .line 58
    sput-boolean p2, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->isDebug:Z

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->permissionHandlerList:Ljava/util/List;

    .line 60
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->permissionHandlerMap:Ljava/util/Map;

    .line 61
    new-instance p2, Lcom/netease/ntunisdk/modules/permission/PermissionModule$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/netease/ntunisdk/modules/permission/PermissionModule$1;-><init>(Lcom/netease/ntunisdk/modules/permission/PermissionModule;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/modules/permission/PermissionModule;)Ljava/util/Map;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->permissionHandlerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/modules/permission/PermissionModule;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->permissionHandlerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/modules/permission/PermissionModule;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->showFragment(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    return-void
.end method

.method private requestPermission(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;
    .locals 3

    const-string v0, "PermissionModule"

    const-string v1, "requestPermission-onStart"

    .line 115
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p3}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->checkParam(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    sget-object p1, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->PARAM_ERROR:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    return-object p1

    :cond_0
    const-string v1, "permissionName"

    .line 121
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v2, Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;-><init>(Lcom/netease/ntunisdk/modules/permission/PermissionModule;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance p1, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-direct {p1, p0, v2, p3}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;-><init>(Lcom/netease/ntunisdk/modules/permission/PermissionContext;Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;Lorg/json/JSONObject;)V

    const-string p2, ""

    .line 142
    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->setTipSetting(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 144
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->permissionHandlerMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 145
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->permissionHandlerMap:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 146
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->permissionHandlerMap:Ljava/util/Map;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "put Permission Success"

    .line 147
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->permissionHandlerList:Ljava/util/List;

    new-instance p3, Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;

    invoke-direct {p3, v1, p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;-><init>(Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "add Permission Success"

    .line 150
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 154
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->context:Landroid/content/Context;

    instance-of p3, p3, Landroid/app/Activity;

    if-eqz p3, :cond_3

    .line 155
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    :cond_3
    if-eqz p2, :cond_4

    .line 159
    new-instance p3, Lcom/netease/ntunisdk/modules/permission/PermissionModule$3;

    invoke-direct {p3, p0, v1, p1}, Lcom/netease/ntunisdk/modules/permission/PermissionModule$3;-><init>(Lcom/netease/ntunisdk/modules/permission/PermissionModule;Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    const-string p1, "Requesting Permission Success"

    .line 168
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object p1, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->SUCCESS:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    return-object p1

    :cond_5
    const-string p1, "Requesting Permission Failed"

    .line 171
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object p1, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->FAILURE:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    return-object p1
.end method

.method private showFragment(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 5

    .line 275
    new-instance v0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    invoke-direct {v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;-><init>()V

    .line 277
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 279
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "TAG_PERMISSION"

    .line 282
    invoke-virtual {v3, v0, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 283
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 284
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 285
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->setContext(Landroid/content/Context;)V

    .line 286
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->permissionHandlerMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->setPermissionHandlerMap(Ljava/util/Map;)V

    .line 287
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->classifyPermission(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    :cond_0
    return-void
.end method

.method private showToast([ILjava/lang/String;)V
    .locals 4

    .line 260
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    if-gez v3, :cond_1

    .line 262
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->context:Landroid/content/Context;

    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->context:Landroid/content/Context;

    sget v0, Lcom/netease/ntunisdk/modules/permission/R$string;->netease_permissionkit_sdk__refuse_tip:I

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionToast;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->context:Landroid/content/Context;

    invoke-static {p1, p2, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionToast;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private synchronousCall(Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    .line 240
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string p2, "respCode"

    .line 244
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->getCode()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "respMsg"

    .line 245
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "jsonException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PermissionModule"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public extendCall(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V
    .locals 9

    const-string v0, "PermissionModule"

    .line 179
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->SUCCESS:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "permissionName"

    const/4 v3, 0x0

    if-ne p3, v1, :cond_1

    .line 180
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    if-eqz p4, :cond_0

    .line 183
    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 185
    :goto_0
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v4, 0x538

    .line 186
    iput v4, v1, Landroid/os/Message;->what:I

    .line 187
    iget-object v4, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    if-eqz p4, :cond_2

    .line 193
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "refuseTip"

    .line 195
    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    .line 197
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object p4, v3

    :goto_1
    const-string v2, "respCode"

    .line 199
    invoke-virtual {p3}, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->getCode()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "respMsg"

    .line 200
    invoke-virtual {p3}, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p5, :cond_6

    .line 203
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 204
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_5

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "permissionName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v6, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->context:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "HAS_BEEN_SET_NEVER_ASK_AGAIN_"

    if-eqz v6, :cond_3

    .line 207
    :try_start_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v6, v8, :cond_3

    .line 208
    iget-object v6, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->context:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 210
    iget-object v6, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    .line 215
    :cond_3
    iget-object v6, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->context:Landroid/content/Context;

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

    .line 217
    aput v6, p5, v5

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 220
    :cond_5
    sget-object v2, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->SUCCESS:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    if-ne p3, v2, :cond_7

    const-string p3, "result"

    .line 221
    invoke-static {p5}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->joinString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    const-string p3, "permissionName is null or grantResults is null"

    .line 224
    invoke-static {v0, p3}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    if-eqz p5, :cond_8

    .line 227
    invoke-direct {p0, p5, p4}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->showToast([ILjava/lang/String;)V

    .line 229
    :cond_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "jsonException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string p4, "PermissionModule"

    const/4 v0, 0x0

    .line 94
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p3, "methodId"

    .line 95
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "requestPermission"

    .line 96
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 97
    invoke-direct {p0, p1, p2, v1}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->requestPermission(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    move-result-object p1

    sget-object p2, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->SUCCESS:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    if-ne p1, p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 100
    :cond_0
    sget-object p1, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->FAILURE:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    invoke-direct {p0, p1, v1}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->synchronousCall(Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 103
    :cond_1
    sget-object p1, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->NO_EXIST_METHOD:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    invoke-direct {p0, p1, v1}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->synchronousCall(Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 109
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extendFunc Exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object p1, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    invoke-direct {p0, p1, v1}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->synchronousCall(Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extendFunc JSONException:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object p1, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->JSON_ERROR:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->synchronousCall(Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "permission"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.2.1"

    return-object v0
.end method

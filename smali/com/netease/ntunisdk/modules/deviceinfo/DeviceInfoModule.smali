.class public Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;
.super Lcom/netease/ntunisdk/modules/base/BaseModules;
.source "DeviceInfoModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;
    }
.end annotation


# static fields
.field public static final ENABLE_FAKE_ABOUT_ID:Ljava/lang/String; = "ENABLE_FAKE_ABOUT_ID"

.field private static final MODEL_NAME:Ljava/lang/String; = "deviceInfo"

.field public static final NO_ANDROIDID:Ljava/lang/String; = "NO_ANDROIDID"

.field private static final TAG:Ljava/lang/String; = "UNISDK DeviceInfoModule"

.field private static final VERSION:Ljava/lang/String; = "1.3.7"


# instance fields
.field private enableFake:Z

.field private hasRequestGaid:Z

.field private networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

.field private noAndroidId:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/modules/base/BaseModules;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V

    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->hasRequestGaid:Z

    .line 37
    iput-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    .line 38
    iput-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    const/4 p2, 0x0

    .line 42
    iput-object p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    .line 47
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->readLibraryConfig()V

    .line 48
    iget-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->hasRequestGaid:Z

    if-nez p2, :cond_0

    .line 49
    invoke-static {p1, p0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->requestGaid(Landroid/content/Context;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->hasRequestGaid:Z

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->registerNetworkReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDeviceBaseInfo(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 221
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imei"

    .line 224
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isNoAndroidId"

    .line 225
    iget-boolean v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "isFake"

    .line 226
    iget-boolean v3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 227
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getDeviceUDID(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v2

    const-string v3, "udid"

    .line 228
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getTransid(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v2

    const-string v3, "transId"

    .line 230
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getUnisdkDeviceId(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    const-string v1, "unisdkDeviceId"

    .line 232
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "localIpAddress"

    .line 234
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 238
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readLibraryConfig()V
    .locals 9

    const-string v0, "1"

    const-string v1, "0"

    const-string v2, "UNISDK DeviceInfoModule"

    const-string v3, "ntunisdk_config"

    .line 58
    iget-object v4, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 62
    :try_start_0
    invoke-virtual {v4, v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v7, "fail to read ntunisdk_config, try ntunisdk.cfg"

    .line 65
    invoke-static {v2, v7}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    :goto_0
    if-nez v7, :cond_0

    :try_start_1
    const-string v3, "ntunisdk.cfg"

    .line 71
    invoke-virtual {v4, v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_1
    if-nez v7, :cond_2

    const-string v4, "ntunisdk_config/ntunisdk.cfg null"

    .line 74
    invoke-static {v2, v4}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    .line 90
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    return-void

    .line 77
    :cond_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_4

    if-eqz v7, :cond_3

    .line 90
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    return-void

    .line 81
    :cond_4
    :try_start_5
    new-array v4, v4, [B

    .line 82
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    .line 84
    new-instance v5, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v5, v4, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_6

    .line 90
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    nop

    goto :goto_2

    :catch_4
    :try_start_7
    const-string v4, "ntunisdk_config/ntunisdk.cfg config not found"

    .line 86
    invoke-static {v2, v4}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_5

    .line 90
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_5
    move-object v5, v6

    :cond_6
    :goto_2
    if-nez v5, :cond_7

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_7
    invoke-static {v2, v5}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "\uff1a"

    .line 104
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u201c"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u201d"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 105
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_9
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 111
    :try_start_9
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "NO_ANDROIDID"

    .line 112
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    .line 114
    iput-boolean v5, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noAndroidId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v4, "ENABLE_FAKE_ABOUT_ID"

    .line 117
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 119
    iput-boolean v5, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableFake:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    :catch_6
    const-string v0, "ntunisdk_config/ntunisdk.cfg config parse to json error"

    .line 123
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void

    :goto_4
    if-eqz v7, :cond_c

    .line 90
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 94
    :catch_7
    :cond_c
    throw v0
.end method

.method private registerNetworkReceiver()V
    .locals 4

    const-string v0, "UNISDK DeviceInfoModule"

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    if-nez v1, :cond_0

    const-string v1, "register NetworkStateReceiver..."

    .line 273
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;-><init>(Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    .line 275
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 276
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register NetworkStateReceiver error, message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setEnableFake(Lorg/json/JSONObject;)V
    .locals 2

    .line 248
    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    const-string v1, "isFake"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableFake:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UNISDK DeviceInfoModule"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 142
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "methodId"

    .line 143
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "setImei"

    .line 144
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, ""

    if-eqz p3, :cond_0

    :try_start_1
    const-string p2, "imei"

    .line 145
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setImei(Ljava/lang/String;)V

    return-object p4

    :cond_0
    const-string p3, "setImsi"

    .line 148
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p2, "imsi"

    .line 149
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setImsi(Ljava/lang/String;)V

    return-object p4

    :cond_1
    const-string p3, "setAndroidId"

    .line 152
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p2, "androidId"

    .line 153
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setAndroidId(Ljava/lang/String;)V

    return-object p4

    :cond_2
    const-string p3, "setMacAddress"

    .line 156
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p2, "macAddress"

    .line 157
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setMacAddress(Ljava/lang/String;)V

    return-object p4

    :cond_3
    const-string p3, "setTimeZone"

    .line 160
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p2, "timeZone"

    .line 161
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setTimeZone(Ljava/lang/String;)V

    return-object p4

    :cond_4
    const-string p3, "setTimeArea"

    .line 164
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p2, "timeArea"

    .line 165
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->setTimeArea(Ljava/lang/String;)V

    return-object p4

    :cond_5
    const-string p3, "getSerial"

    .line 168
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 169
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p3, "getImei"

    .line 170
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 171
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p3, "getImsi"

    .line 172
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 173
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getMobileIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p3, "getTransId"

    .line 174
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "isFake"

    const-string v1, "isNoAndroidId"

    if-eqz p3, :cond_9

    .line 175
    :try_start_2
    iget-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 176
    iget-boolean p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 177
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p3, p2, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getTransid(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p3, "getUDID"

    .line 178
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 179
    iget-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 180
    iget-boolean p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 181
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p3, p2, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getDeviceUDID(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const-string p3, "getUnisdkDeviceId"

    .line 182
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 183
    iget-boolean p2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->noAndroidId:Z

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 184
    iget-boolean p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->enableFake:Z

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 185
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p3, p2, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getUnisdkDeviceId(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p3, "getAndroidId"

    .line 186
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 187
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const-string p3, "getMacAddress"

    .line 188
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 189
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p3, "getLocalIpAddress"

    .line 190
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 191
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    const-string p3, "getDeviceBaseInfo"

    .line 192
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 193
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->getDeviceBaseInfo(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const-string p3, "getTimeZone"

    .line 194
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 195
    invoke-static {}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getTimeZone()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    const-string p3, "getAreaZone"

    .line 196
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 197
    invoke-static {}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAreaZone()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    const-string p3, "getCellId"

    .line 198
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 199
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getCellId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    const-string p3, "getWifiSignal"

    .line 200
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 201
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getWifiSignal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    const-string p3, "getGateWay"

    .line 202
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 203
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getGateWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    const-string p3, "getNetworkType"

    .line 204
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 205
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    const-string p3, "ntGetNetworktype"

    .line 206
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 207
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->ntGetNetworktype(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    const-string p3, "getNetworkInfoJson"

    .line 208
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 209
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getNetworkInfoJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_17
    const-string p3, "setFake"

    .line 210
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 211
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->setEnableFake(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p4

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_18
    const-string p1, "unknow"

    return-object p1
.end method

.method public gaidCallback(Ljava/lang/String;)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gaidCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNISDK DeviceInfoModule"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "native"

    const-string v1, "unisdkbase"

    .line 244
    invoke-virtual {p0, v0, v1, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceInfo"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.7"

    return-object v0
.end method

.method protected onPause()V
    .locals 4

    const-string v0, "UNISDK DeviceInfoModule"

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 262
    iput-object v1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->networkStateReceiver:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule$NetworkStateReceiver;

    const-string v1, "unregister NetworkStateReceiver..."

    .line 263
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister NetworkStateReceiver error, message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->registerNetworkReceiver()V

    return-void
.end method

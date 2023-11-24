.class public abstract Lcom/netease/ntunisdk/base/SdkApplication;
.super Ljava/lang/Object;
.source "SdkApplication.java"


# instance fields
.field private final a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected myCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    const-string v0, "UniSDK SdkApplication"

    const-string v1, "SdkApplication construct"

    .line 34
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkApplication;->myCtx:Landroid/content/Context;

    const-string v0, "ntunisdk_config"

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "UniSDK SdkApplication"

    const-string v5, "fail to read ntunisdk_config, try ntunisdk.cfg"

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-nez v4, :cond_0

    :try_start_1
    const-string v6, "ntunisdk.cfg"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v6, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v0

    move-object v0, v6

    goto :goto_1

    :catch_1
    move-object v0, v6

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_0
    :goto_1
    if-nez v4, :cond_1

    :try_start_3
    const-string v1, "UniSDK SdkApplication"

    const-string v6, "ntunisdk_config/ntunisdk.cfg null"

    invoke-static {v1, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_8

    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_5

    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_2
    new-array v1, v1, [B

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_2
    :goto_3
    :try_start_7
    const-string v1, "UniSDK SdkApplication"

    const-string v6, "ntunisdk_config/ntunisdk.cfg config not found"

    invoke-static {v1, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_3

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :cond_3
    move-object v6, v3

    :catch_4
    :cond_4
    :goto_4
    if-nez v6, :cond_5

    const-string v1, "UniSDK SdkApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is null"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string v1, "UniSDK SdkApplication"

    invoke-static {v1, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\uff1a"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "\u201c"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "\u201d"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "UniSDK SdkApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    :try_start_9
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "EB"

    invoke-virtual {p0, v0, v1, v5}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v1, "NO_ANDROIDID"

    invoke-virtual {p0, v0, v1, v5}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    :catch_5
    const-string v0, "UniSDK SdkApplication"

    const-string v1, "ntunisdk_config/ntunisdk.cfg config parse to json error"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :catch_6
    :cond_8
    :goto_5
    const-string v0, "ntunisdk_common_data"

    .line 38
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "UniSDK SdkApplication"

    const-string v2, "ntunisdk_common_data null"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_8

    :cond_a
    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_6

    :catch_7
    const-string v1, "UniSDK SdkApplication"

    const-string v2, "ntunisdk_common_data config not found"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    :goto_6
    if-nez v1, :cond_b

    const-string v1, "UniSDK SdkApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    const-string v2, "UniSDK SdkApplication"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "\u201d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const-string v2, "UniSDK SdkApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    :try_start_b
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getAppChannel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    const-string v3, "APP_CHANNEL"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    const-string v1, "APP_CHANNEL"

    invoke-virtual {p0, v0, v1, v5}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :cond_f
    :goto_7
    const-string v1, "JF_GAMEID"

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_8

    :catch_8
    const-string v0, "UniSDK SdkApplication"

    const-string v1, "ntunisdk_common_data config parse to json error"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_8
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->readConfig(Landroid/content/Context;)V

    return-void

    :goto_9
    if-eqz v4, :cond_10

    .line 37
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :catch_9
    :cond_10
    throw p1
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 3

    .line 167
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "UniSDK SdkApplication"

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no tag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 175
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "UniSDK SdkApplication"

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doConfigVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 178
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method protected doSepcialConfigVal(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public getAppChannel()Ljava/lang/String;
    .locals 3

    const-string v0, "UniSDK SdkApplication"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APP_CHANNEL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "APP_CHANNEL"

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "APP_CHANNEL"

    .line 158
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChannel()Ljava/lang/String;
.end method

.method public getPropInt(Ljava/lang/String;I)I
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 147
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleOnApplicationAttachBaseContext(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationAttachBaseContext(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationConfigurationChanged(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationLowMemory(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationOnCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationOnCreate(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationTerminate(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public handleOnApplicationTrimMemory(Landroid/content/Context;Landroid/app/Application;I)V
    .locals 0

    return-void
.end method

.method protected readConfig(Landroid/content/Context;)V
    .locals 6

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "UniSDK SdkApplication"

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 323
    :cond_0
    new-array v2, v2, [B

    .line 324
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 325
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "UniSDK SdkApplication"

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " read exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 329
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "UniSDK SdkApplication"

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is empty"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 336
    :try_start_1
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->isBase64(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    new-instance v3, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 341
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const-string p1, "UniSDK SdkApplication"

    const-string v0, " null jsonStr"

    .line 345
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v3, "\uff1a"

    .line 350
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "\u201c"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "\u201d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "UniSDK SdkApplication"

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_5
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 357
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "UNISDK_SERVER_KEY"

    .line 358
    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v1, "UNISDK_SERVER_KEY"

    .line 359
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->setKey(Ljava/lang/String;)V

    const-string v1, "GAMEID"

    .line 360
    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v1, "APP_KEY"

    .line 361
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "APP_SECRET"

    .line 362
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "APPID"

    .line 363
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "APP_NAME"

    .line 364
    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v1, "APP_LOCATION"

    .line 365
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "APP_VERSION"

    .line 366
    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v1, "SCR_ORIENTATION"

    .line 367
    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v1, "CPID"

    .line 368
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "CP_KEY"

    .line 369
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "SERVER_ID"

    .line 370
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "PAY_CB_URL"

    .line 371
    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v1, "RSA_PRIVATE"

    .line 372
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "RSA_PUBLIC"

    .line 373
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "SDK_UPDATE_CHECK_STRICT"

    .line 374
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "BUOY_PRIVATEKEY"

    .line 375
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "USER_ID"

    .line 376
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "PACKET_ID"

    .line 377
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "EXCHANGE_RATE"

    .line 378
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "EXCHANGE_UNIT"

    .line 379
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "CHANNEL_ID"

    .line 380
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "SPLASH"

    .line 381
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "SPLASH_TIME"

    .line 382
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "SPLASH_COLOR"

    .line 383
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "SPLASH_SECOND"

    .line 384
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "DEBUG_MODE"

    .line 385
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getAppChannel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 387
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 389
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    const-string v3, "APP_CHANNEL"

    invoke-virtual {v1, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const-string p1, "APP_CHANNEL"

    .line 391
    invoke-virtual {p0, v0, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :cond_7
    :goto_2
    const-string p1, "LAUNCHER_NAME"

    .line 394
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "APPSFLYER_DEV_KEY"

    .line 395
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ADVERTISER_APPID"

    .line 396
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "TIMELINE_KEY"

    .line 397
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "PLATFORM_KEY"

    .line 398
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "GAME_REGION"

    .line 399
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "CN"

    .line 400
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "AS"

    .line 401
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "US"

    .line 402
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SA"

    .line 403
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "GAME_ENGINE"

    .line 404
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "CC_SHOW_FPS_SETTING"

    .line 405
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "CC_DEFAULT_FPS"

    .line 406
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "PAYTYPE"

    .line 407
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "PAYCODE"

    .line 408
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "MONTHTYPE"

    .line 409
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "LIANYUN"

    .line 410
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SINGLE_CB"

    .line 411
    invoke-virtual {p0, v0, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "DK_APPID"

    .line 412
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "DK_APP_KEY"

    .line 413
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SHARE_QQ_API"

    .line 414
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SHARE_WEIBO_API"

    .line 415
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SHARE_WEIXIN_API"

    .line 416
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SHARE_YIXIN_API"

    .line 417
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_EXLOGIN_GUEST"

    .line 418
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_EXLOGIN_WEIBO"

    .line 419
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_EXLOGIN_MOBILE"

    .line 420
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_EXLOGIN_GOOGLEPLUS"

    .line 421
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "DATA_REPORT_MODE"

    .line 422
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "GAME_NAME"

    .line 423
    invoke-virtual {p0, v0, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "RETRIEVE_USER"

    .line 424
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "DOMAIN"

    .line 425
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "QQ_APPID"

    .line 426
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "QQ_APP_KEY"

    .line 427
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "WX_APPID"

    .line 428
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "WX_APP_KEY"

    .line 429
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "WEIBO_SSO_APP_KEY"

    .line 430
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "WEIBO_SSO_URL"

    .line 431
    invoke-virtual {p0, v0, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "OFFER_ID"

    .line 432
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "VERIFY_MODE"

    .line 433
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "REQUEST_UNISDK_SERVER"

    .line 434
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_CREATEORDER_URL"

    .line 435
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_QUERYORDER_URL"

    .line 436
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_CONSUMEORDER_URL"

    .line 437
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "LANGUAGE_CODE"

    .line 438
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "COUNTRY_CODE"

    .line 439
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "PURCHASE_REG_SERVER"

    .line 440
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SPLASH_TYPE"

    .line 441
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "REQUEST_CMCC_PAYTYPE"

    .line 442
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "DEFAULT_CMCC_PAYTYPE"

    .line 443
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "GAME_VERSION"

    .line 444
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "DERIVE_CHANNEL"

    .line 445
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "CMCC_PAYTYPE_URL"

    .line 446
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "JF_LOG_KEY"

    .line 447
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "JF_OPEN_LOG_URL"

    .line 448
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "JF_PAY_LOG_URL"

    .line 449
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "JF_GAMEID"

    .line 450
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "HAS_PAY_CB"

    .line 451
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "NEED_PLAY_GAME_SERVICE"

    .line 452
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_SERVER_URL"

    .line 453
    invoke-virtual {p0, v0, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "ENABLE_UNISDK_GUEST_DISCONNECT"

    .line 454
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_UNISDK_GUEST_UI"

    .line 455
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "FLOATBTN_CLOSED"

    .line 456
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "FLOAT_BTN_POS"

    .line 457
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UPDATE_CHECK_URL"

    .line 458
    invoke-virtual {p0, v0, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "UPDATE_DOWNLOAD_URL"

    .line 459
    invoke-virtual {p0, v0, p1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "UNISDK_SERVER_MODE"

    .line 460
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_SERVER_EXTPARAM"

    .line 461
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_EXT_INFO"

    .line 462
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "CODE_SCANNER_PAY_URL"

    .line 463
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "ENABLE_TV"

    .line 464
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "EXTERNAL_OP_LIST"

    .line 465
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_JF_GAS3"

    .line 466
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_JF_GAS3_WEB"

    .line 467
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "UNISDK_JF_GAS3_URL"

    .line 468
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "SKIN_TYPE"

    .line 469
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "FLOW_CODE"

    .line 470
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "FLOW_KEY"

    .line 471
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doSepcialConfigVal(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    const-string p1, "UniSDK SdkApplication"

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data config parse to json error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "UniSDK SdkApplication"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "val:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

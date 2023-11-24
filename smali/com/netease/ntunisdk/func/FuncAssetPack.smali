.class public Lcom/netease/ntunisdk/func/FuncAssetPack;
.super Lcom/netease/ntunisdk/func/FuncBase;
.source "FuncAssetPack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FuncAssetPack"


# instance fields
.field private assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

.field private assetPackStateUpdateListener:Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncBase;-><init>()V

    return-void
.end method

.method private cancelPack(Lorg/json/JSONObject;)V
    .locals 4

    .line 296
    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackManager()V

    const-string v0, "modules"

    .line 297
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 298
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 299
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 300
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 301
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->cancel(Ljava/util/List;)Lcom/google/android/play/core/assetpacks/AssetPackStates;

    move-result-object p1

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FuncAssetPack"

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->packStates()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static errorCodeToText(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x64

    if-eq p0, v0, :cond_2

    const/16 v0, -0xd

    if-eq p0, v0, :cond_1

    const/16 v0, -0xa

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "NO_ERROR"

    return-object p0

    :pswitch_1
    const-string p0, "APP_UNAVAILABLE"

    return-object p0

    :pswitch_2
    const-string p0, "PACK_UNAVAILABLE"

    return-object p0

    :pswitch_3
    const-string p0, "INVALID_REQUEST"

    return-object p0

    :pswitch_4
    const-string p0, "DOWNLOAD_NOT_FOUND"

    return-object p0

    :pswitch_5
    const-string p0, "API_NOT_AVAILABLE"

    return-object p0

    :pswitch_6
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_7
    const-string p0, "ACCESS_DENIED"

    return-object p0

    :cond_0
    const-string p0, "INSUFFICIENT_STORAGE"

    return-object p0

    :cond_1
    const-string p0, "APP_NOT_OWNED"

    return-object p0

    :cond_2
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private fetchPack(Lorg/json/JSONObject;)V
    .locals 4

    .line 277
    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackManager()V

    const-string v0, "modules"

    .line 278
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 279
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 280
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 281
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 282
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->fetch(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$gbq4K4EKsE2izEqx4bdRZ0jmD0E;->INSTANCE:Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$gbq4K4EKsE2izEqx4bdRZ0jmD0E;

    .line 288
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    :cond_2
    return-void
.end method

.method private getAssetPackManager()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/AssetPackManagerFactory;->getInstance(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    :cond_0
    return-void
.end method

.method private static getAssetPackStateJson(Ljava/lang/String;Lcom/google/android/play/core/assetpacks/AssetPackState;Lcom/google/android/play/core/assetpacks/AssetPackLocation;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "name"

    .line 110
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    :try_start_0
    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p0, "status"

    .line 118
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "statusText"

    .line 119
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    invoke-static {v0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->statusToText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "errorCode"

    .line 120
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "errorText"

    .line 121
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v0

    invoke-static {v0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->errorCodeToText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "bytesDownloaded"

    .line 122
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->bytesDownloaded()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "totalBytesToDownload"

    .line 123
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->totalBytesToDownload()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "assetsPath"

    .line 127
    invoke-virtual {p2}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->assetsPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "path"

    .line 128
    invoke-virtual {p2}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->path()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "packStorageMethod"

    .line 129
    invoke-virtual {p2}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->packStorageMethod()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "packStorageMethodText"

    .line 130
    invoke-virtual {p2}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->packStorageMethod()I

    move-result p1

    invoke-static {p1}, Lcom/netease/ntunisdk/func/FuncAssetPack;->methodToText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getAssetPackStateUpdateListener()Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackStateUpdateListener:Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$Y3y3-phjVWgozrwvMUcw16B2ibI;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$Y3y3-phjVWgozrwvMUcw16B2ibI;-><init>(Lcom/netease/ntunisdk/func/FuncAssetPack;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackStateUpdateListener:Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackStateUpdateListener:Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;

    return-object v0
.end method

.method private getPackLocations(Lorg/json/JSONObject;)V
    .locals 5

    .line 314
    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackManager()V

    .line 315
    iget-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackLocations()Ljava/util/Map;

    move-result-object v0

    .line 317
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 318
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    invoke-static {v3, v4, v2}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackStateJson(Ljava/lang/String;Lcom/google/android/play/core/assetpacks/AssetPackState;Lcom/google/android/play/core/assetpacks/AssetPackLocation;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "results"

    .line 321
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    iget-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->sdkRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 326
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private getPackStates(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "modules"

    .line 216
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackManager()V

    .line 219
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    .line 220
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 221
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackStates(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$8F5RdqOwvI1SdFdaRVUzfc9Ez_k;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$8F5RdqOwvI1SdFdaRVUzfc9Ez_k;-><init>(Lcom/netease/ntunisdk/func/FuncAssetPack;Lorg/json/JSONObject;)V

    .line 227
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    :cond_2
    return-void
.end method

.method static synthetic lambda$fetchPack$3(Lcom/google/android/play/core/tasks/Task;)V
    .locals 0

    return-void
.end method

.method private static methodToText(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "APK_ASSETS"

    return-object p0

    :cond_1
    const-string p0, "STORAGE_FILES"

    return-object p0
.end method

.method private registerPackUpdateListener()V
    .locals 2

    .line 206
    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackManager()V

    .line 207
    iget-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackStateUpdateListener()Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->registerListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    return-void
.end method

.method private removePack(Lorg/json/JSONObject;)V
    .locals 2

    .line 259
    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackManager()V

    const-string v0, "module"

    .line 260
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->removePack(Ljava/lang/String;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$k8uBu3m_4sENfoA-0R631xH6huc;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$k8uBu3m_4sENfoA-0R631xH6huc;-><init>(Lcom/netease/ntunisdk/func/FuncAssetPack;Lorg/json/JSONObject;)V

    .line 263
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    :cond_0
    return-void
.end method

.method private static statusToText(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "NONE"

    return-object p0

    :pswitch_0
    const-string p0, "WAITING_FOR_WIFI"

    return-object p0

    :pswitch_1
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_2
    const-string p0, "FAILED"

    return-object p0

    :pswitch_3
    const-string p0, "COMPLETED"

    return-object p0

    :pswitch_4
    const-string p0, "TRANSFERRING"

    return-object p0

    :pswitch_5
    const-string p0, "DOWNLOADING"

    return-object p0

    :pswitch_6
    const-string p0, "PENDING"

    return-object p0

    :pswitch_7
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unregisterPackUpdateListener()V
    .locals 2

    .line 211
    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackManager()V

    .line 212
    iget-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackStateUpdateListener()Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->unregisterListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    return-void
.end method


# virtual methods
.method public extendFunc(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "methodId"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerPackUpdateListener"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->registerPackUpdateListener()V

    goto :goto_0

    :cond_0
    const-string v1, "unregisterPackUpdateListener"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->unregisterPackUpdateListener()V

    goto :goto_0

    :cond_1
    const-string v1, "getPackStates"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getPackStates(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    const-string v1, "removePack"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/func/FuncAssetPack;->removePack(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string v1, "fetchPack"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/func/FuncAssetPack;->fetchPack(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const-string v1, "cancelPack"

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/func/FuncAssetPack;->cancelPack(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    const-string v1, "getPackLocations"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getPackLocations(Lorg/json/JSONObject;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public varargs extendFunc(Lorg/json/JSONObject;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$getAssetPackStateUpdateListener$0$FuncAssetPack(Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 5

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v1

    invoke-static {v1}, Lcom/netease/ntunisdk/func/FuncAssetPack;->statusToText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FuncAssetPack"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackManager()V

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "onPackStateUpdate"

    .line 95
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result"

    const/4 v2, 0x0

    .line 96
    iget-object v3, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    .line 97
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackLocation(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object v3

    .line 96
    invoke-static {v2, p1, v3}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackStateJson(Ljava/lang/String;Lcom/google/android/play/core/assetpacks/AssetPackState;Lcom/google/android/play/core/assetpacks/AssetPackLocation;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    iget-object p1, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->sdkRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getPackStates$1$FuncAssetPack(Lorg/json/JSONObject;Lcom/google/android/play/core/tasks/Task;)V
    .locals 5

    :try_start_0
    const-string v0, "suc"

    .line 229
    invoke-virtual {p2}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    invoke-virtual {p2}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p2}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/play/core/assetpacks/AssetPackStates;

    .line 233
    invoke-virtual {p2}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->packStates()Ljava/util/Map;

    move-result-object p2

    .line 236
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 238
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    const/4 v3, 0x0

    .line 241
    iget-object v4, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v4, v2}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackLocation(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/netease/ntunisdk/func/FuncAssetPack;->getAssetPackStateJson(Ljava/lang/String;Lcom/google/android/play/core/assetpacks/AssetPackState;Lcom/google/android/play/core/assetpacks/AssetPackLocation;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p2, "results"

    .line 244
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :cond_1
    iget-object p2, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->sdkRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$removePack$2$FuncAssetPack(Lorg/json/JSONObject;Lcom/google/android/play/core/tasks/Task;)V
    .locals 1

    :try_start_0
    const-string v0, "result"

    .line 265
    invoke-virtual {p2}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    iget-object p2, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->sdkRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/ntunisdk/func/FuncAssetPack;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->clearListeners()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

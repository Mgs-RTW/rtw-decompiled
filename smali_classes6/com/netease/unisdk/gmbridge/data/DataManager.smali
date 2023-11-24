.class public Lcom/netease/unisdk/gmbridge/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;
    }
.end annotation


# static fields
.field private static final GM_FILE_PREFIX:Ljava/lang/String; = "unisdk_gm_"

.field private static final PREFERENCES_KEY_GM_RED_IDS:Ljava/lang/String; = "gm_red_ids_"

.field private static final PREFERENCES_KEY_GM_TIME:Ljava/lang/String; = "gm_time_"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "uni_gm_bridge"

.field private static final TAG:Ljava/lang/String; = "gm_bridge DataManager"


# instance fields
.field private mAsynTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;

.field private mBtnInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataCallback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

.field private mGmData:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRedMenuIds:Ljava/lang/String;

.field private mRefer:Ljava/lang/String;

.field private mRoleId:Ljava/lang/String;

.field private mTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    const-string p2, "uni_gm_bridge"

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 52
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gm_red_ids_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge/data/DataManager;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/unisdk/gmbridge/data/DataManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge/data/DataManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->saveData()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/unisdk/gmbridge/data/DataManager;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->parseData(Z)V

    return-void
.end method

.method private cacheOvertime()Z
    .locals 7

    .line 82
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gm_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private getCachePath()Ljava/lang/String;
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "unisdk_gm_"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadData(Z)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->readCache()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    :cond_0
    const-string v0, "gm_bridge DataManager"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->requestData(Z)V

    goto :goto_0

    .line 201
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->parseData(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "gm_bridge DataManager"

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GmData JSON error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    .line 207
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->requestData(Z)V

    :goto_0
    return-void
.end method

.method private parseData(Lorg/json/JSONObject;Z)V
    .locals 2

    if-eqz p2, :cond_0

    :try_start_0
    const-string p2, "menu"

    .line 286
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 287
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->parseMenu(Lorg/json/JSONArray;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p2, "refer"

    .line 289
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    .line 290
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mDataCallback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;->setRefer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p2, "gm_bridge DataManager"

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseData error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private parseData(Z)V
    .locals 3

    .line 276
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, v0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->parseData(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "gm_bridge DataManager"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GmData JSON error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private parseMenu(Lorg/json/JSONArray;)V
    .locals 6

    .line 298
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 303
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 304
    new-instance v3, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    invoke-direct {v3}, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;-><init>()V

    const-string v4, "id"

    .line 305
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->id:Ljava/lang/String;

    const-string v4, "name"

    .line 306
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->name:Ljava/lang/String;

    const-string v4, "url"

    .line 307
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->url:Ljava/lang/String;

    .line 308
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mContext:Landroid/content/Context;

    const-string v5, "icon"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->getBtnIcon(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mDataCallback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;->setBtnInfos(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private readCache()Ljava/lang/String;
    .locals 4

    .line 257
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read cache : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UTF-8"

    .line 261
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private requestData(Z)V
    .locals 3

    const-string v0, "gm_bridge DataManager"

    const-string v1, "request data from server"

    .line 213
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;

    invoke-interface {v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    const-string v0, "gm_bridge DataManager"

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->saveData()V

    .line 218
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->parseData(Z)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mAsynTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mAsynTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;

    new-instance v1, Lcom/netease/unisdk/gmbridge/data/DataManager$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager$1;-><init>(Lcom/netease/unisdk/gmbridge/data/DataManager;Z)V

    invoke-interface {v0, v1}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;->getToken(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveData()V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 239
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "expireTime"

    .line 240
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 241
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gm_time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "gm_bridge DataManager"

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save expireTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gm_bridge DataManager"

    const-string v1, "save cache data success"

    .line 247
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "gm_bridge DataManager"

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveData error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveRedIds()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gm_red_ids_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addRedIds(Ljava/lang/String;)V
    .locals 3

    const-string v0, "gm_bridge DataManager"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRedIds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 100
    :goto_0
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->saveRedIds()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->clearBtnInfos()V

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    .line 324
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    return-void
.end method

.method public clearBtnInfos()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public getBtnInfos(Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V
    .locals 4

    .line 172
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->cacheOvertime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheOvertime,delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;->setBtnInfos(Ljava/util/List;)V

    goto :goto_1

    .line 184
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mDataCallback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    const/4 p1, 0x1

    .line 185
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->loadData(Z)V

    :goto_1
    return-void
.end method

.method public getRedIds()[Ljava/lang/String;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 121
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefer(Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V
    .locals 4

    .line 155
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->cacheOvertime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheOvertime,delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mDataCallback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    const/4 p1, 0x0

    .line 165
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->loadData(Z)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;->setRefer(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isRedMenu(Ljava/lang/String;)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeRedId(Ljava/lang/String;)V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 134
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_2

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 138
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 139
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 142
    :cond_1
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 143
    iput-object v3, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_1

    .line 145
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->saveRedIds()V

    :cond_4
    return-void
.end method

.method public setAsynTokenRequest(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mAsynTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    .line 67
    :cond_1
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gm_red_ids_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public setTokenRequest(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;

    return-void
.end method

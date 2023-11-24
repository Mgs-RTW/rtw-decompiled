.class public Lcom/netease/unisdk/gmbridge5/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# static fields
.field private static final GM_FILE_PREFIX:Ljava/lang/String; = "unisdk_gm_"

.field private static final ICON_DIR_NAME:Ljava/lang/String; = "gm_icon"

.field private static final PREFERENCES_KEY_GM_EXPIRETIME:Ljava/lang/String; = "gm_expiretime_"

.field private static final PREFERENCES_KEY_GM_RED_IDS:Ljava/lang/String; = "gm_red_ids_"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "uni_gm_bridge"

.field private static final TAG:Ljava/lang/String; = "gm_bridge DataManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGenTokenResponse:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mIndex:Ljava/lang/String;

.field private mMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRedMenuIds:Ljava/lang/String;

.field private mRoleId:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    const-string p1, ""

    .line 62
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    return-void
.end method

.method private cacheOvertime()Z
    .locals 8

    .line 75
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    const-string v1, "uni_gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->get(Ljava/lang/String;Landroid/content/Context;)Lcom/netease/unisdk/gmbridge5/data/SPSingleton;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gm_expiretime_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expireTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gm_bridge DataManager"

    invoke-static {v5, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    return v4

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nowTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private clear()V
    .locals 2

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    .line 322
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mIndex:Ljava/lang/String;

    .line 323
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mHost:Ljava/lang/String;

    .line 324
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mToken:Ljava/lang/String;

    .line 325
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mMenus:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 326
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 327
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mMenus:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private downloadIcon(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 301
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 302
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 303
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 305
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    .line 306
    new-array p2, p2, [B

    .line 308
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 309
    invoke-virtual {v1, p2, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 312
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 315
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadIcon error : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gm_bridge DataManager"

    invoke-static {p2, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getCachePath()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "unisdk_gm_"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIcon(Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;Ljava/lang/String;)V
    .locals 4

    .line 267
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uni_gm_f_"

    .line 271
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p1, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 275
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "gm_icon"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 279
    :cond_2
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 280
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->ICON_WIDTH:I

    sget v1, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->ICON_HEIGHT:I

    invoke-static {p2, v0, v1}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p1, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 286
    :cond_3
    invoke-direct {p0, p2, v3}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->downloadIcon(Ljava/lang/String;Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "downloadIcon iconUrl success"

    .line 288
    invoke-static {v1, p2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->ICON_WIDTH:I

    sget v1, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->ICON_HEIGHT:I

    invoke-static {p2, v0, v1}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p1, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 291
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 292
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_0
    return-void
.end method

.method private loadCacheData()V
    .locals 2

    .line 188
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->readCacheFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->parseCacheData()V

    return-void
.end method

.method private parseCacheData()V
    .locals 3

    .line 236
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "menu"

    .line 237
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    invoke-direct {p0, v1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->parseMenu(Lorg/json/JSONArray;)V

    :cond_0
    const-string v1, "refer"

    .line 241
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mIndex:Ljava/lang/String;

    const-string v1, "token"

    .line 242
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mToken:Ljava/lang/String;

    const-string v1, "host"

    .line 243
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mHost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCacheData Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private parseMenu(Lorg/json/JSONArray;)V
    .locals 5

    .line 250
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mMenus:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 255
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 256
    new-instance v3, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

    invoke-direct {v3}, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;-><init>()V

    const-string v4, "id"

    .line 257
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->id:Ljava/lang/String;

    const-string v4, "name"

    .line 258
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->name:Ljava/lang/String;

    const-string v4, "url"

    .line 259
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->url:Ljava/lang/String;

    const-string v4, "icon"

    .line 260
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->getIcon(Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mMenus:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readCacheFile()Ljava/lang/String;
    .locals 3

    .line 217
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read cache : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gm_bridge DataManager"

    invoke-static {v2, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UTF-8"

    .line 221
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private saveCache()V
    .locals 6

    const-string v0, "gm_bridge DataManager"

    .line 194
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 199
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "expireTime"

    .line 200
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "uni_gm_bridge"

    .line 204
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->get(Ljava/lang/String;Landroid/content/Context;)Lcom/netease/unisdk/gmbridge5/data/SPSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->commitMode()Lcom/netease/unisdk/gmbridge5/data/SPSingleton;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gm_expiretime_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->putLong(Ljava/lang/String;J)Lcom/netease/unisdk/gmbridge5/data/SPSingleton;

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save expireTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "save cache data success"

    .line 208
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveData Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveRedIds()V
    .locals 4

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "gm_red_ids_"

    const-string v2, "uni_gm_bridge"

    const/16 v3, 0x9

    if-lt v0, v3, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->get(Ljava/lang/String;Landroid/content/Context;)Lcom/netease/unisdk/gmbridge5/data/SPSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->applyMode()Lcom/netease/unisdk/gmbridge5/data/SPSingleton;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/unisdk/gmbridge5/data/SPSingleton;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->get(Ljava/lang/String;Landroid/content/Context;)Lcom/netease/unisdk/gmbridge5/data/SPSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->commitMode()Lcom/netease/unisdk/gmbridge5/data/SPSingleton;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/unisdk/gmbridge5/data/SPSingleton;

    :goto_0
    return-void
.end method


# virtual methods
.method public addRedIds(Ljava/lang/String;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRedIds : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->saveRedIds()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getMenus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mMenus:Ljava/util/List;

    return-object v0
.end method

.method public getRedIds()[Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRedIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 116
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWholeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 162
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->cacheOvertime()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "gm_bridge DataManager"

    const-string v0, "cacheOvertime"

    .line 163
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->clear()V

    const/4 p1, 0x0

    return-object p1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->loadCacheData()V

    .line 170
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mIndex:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string v0, "?"

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&token="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?token="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isRedMenu(Ljava/lang/String;)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeRedId(Ljava/lang/String;)V
    .locals 7

    .line 127
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 129
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_2

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 132
    iput-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 133
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 134
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 137
    :cond_1
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 138
    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_1

    .line 140
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->saveRedIds()V

    :cond_4
    return-void
.end method

.method public setGenTokenResponse(Ljava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->clear()V

    .line 151
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->saveCache()V

    .line 153
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->parseCacheData()V

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->clear()V

    .line 70
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    const-string v0, "uni_gm_bridge"

    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->get(Ljava/lang/String;Landroid/content/Context;)Lcom/netease/unisdk/gmbridge5/data/SPSingleton;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gm_red_ids_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/netease/unisdk/gmbridge5/data/SPSingleton;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    :cond_0
    return-void
.end method

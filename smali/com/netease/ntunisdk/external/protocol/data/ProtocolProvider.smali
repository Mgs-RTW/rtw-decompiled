.class public Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;
.super Ljava/lang/Object;
.source "ProtocolProvider.java"


# static fields
.field public static final HAS_ACCEPT:I = 0x1

.field public static final HAS_UPDATE:I = 0x2

.field public static final NO_ACCEPT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "P"


# instance fields
.field private hasAcceptLaunchProtocol:Z

.field private mContext:Landroid/content/Context;

.field private mCurCompactUrl:Ljava/lang/String;

.field private mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

.field private mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

.field private mProtocolPools:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

.field private mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    return-void
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 350
    :cond_0
    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gameid"

    invoke-static {p1, v3, v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->encodeQs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->prepareHeader(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/external/protocol/utils/UrlConnectImpl;->fetch(Ljava/lang/String;Ljava/util/HashMap;)Lcom/netease/ntunisdk/external/protocol/utils/Response;

    move-result-object v2

    .line 352
    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/utils/Response;->getContentStr()Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "P"

    if-eqz v4, :cond_1

    .line 354
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    .line 358
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolTextSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save protocol path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", origin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {v4, v3}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ETag"

    .line 361
    invoke-virtual {v2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/Response;->getHeaderProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->saveETag(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "save Protocol success"

    .line 362
    invoke-static {v5, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "save Protocol error"

    .line 364
    invoke-static {v5, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_3
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 370
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {p1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textMd5 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "MD5 match"

    .line 377
    invoke-static {v5, p2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catch_0
    :cond_4
    return-object v1

    :cond_5
    return-object v3
.end method

.method private downloadProtocolText(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const-string v0, "FullTextBase64HttpsUrl"

    .line 328
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fullTextBase64Url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Hash"

    .line 333
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "FullTextHttpsUrl"

    .line 337
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 341
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static encodeQs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "utf-8"

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    .line 52
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "&"

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :goto_0
    :try_start_0
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-object p0
.end method

.method private getProtocolFromServer(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .line 139
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gameid"

    invoke-static {p1, v1, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->encodeQs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestUrl :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->prepareHeader(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/external/protocol/utils/UrlConnectImpl;->fetch(Ljava/lang/String;Ljava/util/HashMap;)Lcom/netease/ntunisdk/external/protocol/utils/Response;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/utils/Response;->getContentStr()Ljava/lang/String;

    move-result-object v3

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProtocolFromServer : \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/utils/Response;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v5

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolTextSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save protocol path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", origin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v4, v3}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ETag"

    .line 155
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/utils/Response;->getHeaderProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->saveETag(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "save Protocol success"

    .line 156
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "save Protocol error"

    .line 158
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_2
    :goto_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonException >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v5

    :goto_1
    return-object p1
.end method

.method private getProtocolTextSavePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 528
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "protocol"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 533
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 534
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRequestUrl()Ljava/lang/String;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private isAcceptProtocol(Ljava/lang/String;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 432
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAcceptProtocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 435
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "-"

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 436
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v4

    .line 441
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curIdVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    const/4 p1, 0x0

    return p1

    .line 448
    :cond_3
    iget-boolean v3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->isMinorChange:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_5

    .line 450
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v2, v1}, Lcom/netease/ntunisdk/external/protocol/data/Store;->getAcceptedProtocolVersion(Ljava/lang/String;)I

    move-result v2

    .line 462
    iget v3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->prevMajorChangeId:I

    if-lez v3, :cond_4

    .line 463
    iget v3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->prevMajorChangeId:I

    if-ge v2, v3, :cond_4

    return v4

    .line 468
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 470
    invoke-interface {p3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {p2, p3, p1}, Lcom/netease/ntunisdk/external/protocol/data/Store;->acceptProtocol(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->id:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "protocolV : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v4

    :cond_6
    :goto_0
    return v0
.end method

.method private parseLocalProtocol(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    return-object p1

    .line 603
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VersionId"

    .line 605
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const-string v3, "Id"

    .line 609
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    new-instance v4, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    invoke-direct {v4, v1, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;-><init>(ILjava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "i18n"

    .line 615
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 617
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;-><init>()V

    const-string v5, "unisdk_protocol_title"

    .line 618
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->title:Ljava/lang/String;

    const-string v5, "unisdk_protocol_confirm"

    .line 619
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->confirm:Ljava/lang/String;

    const-string v5, "unisdk_protocol_accept"

    .line 620
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->accept:Ljava/lang/String;

    const-string v5, "unisdk_protocol_reject"

    .line 621
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->reject:Ljava/lang/String;

    .line 622
    iput-object v1, v4, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->globalInfo:Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;

    :cond_3
    const/4 p1, 0x0

    const-string v1, "IsMinorChange"

    .line 626
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->isMinorChange:Z

    const-string v1, "PrevMajorChangeId"

    .line 629
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->prevMajorChangeId:I

    const-string v1, "FullTextBase64HttpsUrl"

    .line 632
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    new-instance v5, Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 635
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 636
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v1, v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    iput-object v0, v4, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    const-string v1, "FullTextUpdateBase64HttpsUrl"

    .line 644
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 647
    new-instance v5, Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    iput-object v1, v4, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->updateText:Ljava/lang/String;

    .line 651
    :cond_4
    iput-object v0, v4, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->reviewText:Ljava/lang/String;

    .line 662
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iput v0, v4, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    const-string v0, "SubProtocol"

    .line 667
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 668
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 669
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 670
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v4, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->subProtocol:Ljava/util/List;

    :goto_0
    if-ge p1, v0, :cond_9

    .line 672
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ProtocolUrl"

    .line 673
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 675
    :cond_5
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 676
    iget-object v2, v4, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->subProtocol:Ljava/util/List;

    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 680
    :cond_6
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    .line 682
    :cond_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 683
    invoke-direct {p0, v1, v3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->parseLocalProtocol(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 685
    iget-object v3, v4, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->subProtocol:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 689
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    return-object v4

    :cond_a
    return-object v0
.end method

.method private parseProtocolJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    return-object p1

    :cond_1
    const-string v1, "VersionId"

    .line 183
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "Id"

    .line 187
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "P"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    invoke-direct {v2, v1, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;-><init>(ILjava/lang/String;)V

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "i18n"

    .line 194
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 196
    new-instance v4, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;

    invoke-direct {v4}, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;-><init>()V

    const-string v5, "unisdk_protocol_title"

    .line 197
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->title:Ljava/lang/String;

    const-string v5, "unisdk_protocol_confirm"

    .line 198
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->confirm:Ljava/lang/String;

    const-string v5, "unisdk_protocol_accept"

    .line 199
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->accept:Ljava/lang/String;

    const-string v5, "unisdk_protocol_reject"

    .line 200
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->reject:Ljava/lang/String;

    .line 201
    iput-object v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->globalInfo:Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;

    :cond_3
    const/4 p1, 0x0

    const-string v4, "IsMinorChange"

    .line 205
    invoke-virtual {p2, v4, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->isMinorChange:Z

    const-string v4, "PrevMajorChangeId"

    .line 208
    invoke-virtual {p2, v4, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->prevMajorChangeId:I

    const-string v4, "FullTextBase64HttpsUrl"

    .line 211
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Hash"

    .line 212
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-direct {p0, v4, v5}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 215
    iget-object v5, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    iput-object v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    :cond_4
    const-string v5, "FullTextUpdateBase64HttpsUrl"

    .line 220
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "HashUpdate"

    .line 221
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-direct {p0, v5, v6}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 224
    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    iput-object v5, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->updateText:Ljava/lang/String;

    .line 227
    :cond_5
    iput-object v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->reviewText:Ljava/lang/String;

    .line 241
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v4, v1}, Lcom/netease/ntunisdk/external/protocol/data/Store;->getLocalVersion(I)I

    move-result v4

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iput v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    const/4 v5, 0x1

    if-lez v4, :cond_7

    if-le v0, v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    .line 262
    :cond_7
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needUpdateProtocol = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_9

    .line 266
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->downloadProtocolText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1 text :\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2 text :\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 272
    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v6, v1, v0}, Lcom/netease/ntunisdk/external/protocol/data/Store;->updateLocalVersion(II)V

    .line 273
    iput v0, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    .line 274
    iput-object v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v0, "down ProtocolText error"

    .line 276
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    const-string v0, "SubProtocol"

    .line 281
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 282
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 283
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->subProtocol:Ljava/util/List;

    :goto_2
    if-ge p1, v0, :cond_e

    .line 286
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "ProtocolUrl"

    .line 287
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_4

    .line 289
    :cond_a
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 290
    iget-object v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->subProtocol:Ljava/util/List;

    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 293
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Url[subProtocol] : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolFromServer(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_d

    if-eqz v5, :cond_c

    .line 299
    invoke-direct {p0, v1, v4}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->parseProtocolJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v4

    goto :goto_3

    .line 303
    :cond_c
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 304
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-direct {p0, v1, v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->parseLocalProtocol(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 307
    :catch_0
    invoke-direct {p0, v1, v4}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->parseProtocolJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_d

    .line 311
    iget-object v6, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->subProtocol:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProtocolPools:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_e
    return-object v2
.end method

.method private prepareHeader(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getLocalETag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ETag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\""

    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 130
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v1, "If-None-Match"

    .line 133
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public checkLatestProtocol()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    .line 104
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    :cond_2
    :goto_0
    const-string v1, "P"

    const-string v2, "start check !! "

    .line 107
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolFromServer(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 113
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->parseProtocolJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    return-void

    .line 111
    :cond_3
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;-><init>()V

    throw v0
.end method

.method public checkNeedShowProtocolByUid(Ljava/lang/String;)I
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/Store;->getAcceptedProtocolsByUid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 412
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 415
    :cond_1
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    invoke-direct {p0, p1, v3, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->isAcceptProtocol(Ljava/lang/String;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;Ljava/util/List;)I

    move-result v0

    const-string v3, "P"

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "%s is need Update"

    .line 419
    invoke-static {v3, p1, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    .line 417
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "%s isAccept = %b"

    invoke-static {v3, p1, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return v0

    :cond_5
    :goto_3
    return v2
.end method

.method public checkNeedShowProtocolWhenLaunch()Z
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    iget v0, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->id:I

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/external/protocol/data/Store;->hasUserAcceptProtocol(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/Store;->getAppVersionCode()I

    move-result v0

    return v0
.end method

.method public getBaseProtocol()Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    return-object v0
.end method

.method public getLastUploadTime()J
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/Store;->getLastUploadTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalETag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/Store;->getETag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProtocolText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 504
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolTextSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 505
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "UTF-8"

    .line 507
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public hasAcceptLaunchProtocol()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/Store;->hasAcceptLaunchProtocol()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol:Z

    .line 516
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol:Z

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "P"

    const-string v1, "init ProtocolProvider"

    .line 69
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->initStore(Landroid/content/Context;)V

    return-void
.end method

.method public initStore(Landroid/content/Context;)V
    .locals 1

    .line 539
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    return-void
.end method

.method public isProtocolUrlChanged()Z
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadLocalProtocol()V
    .locals 3

    const-string v0, "P"

    const-string v1, "loadLocalProtocol"

    .line 550
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    .line 553
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    iput v2, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    .line 554
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mContext:Landroid/content/Context;

    const-string v2, "unisdk_protocol_default_txt"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->isAssetsFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->readAssetsFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_0

    .line 559
    :cond_0
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    :goto_0
    return-void
.end method

.method public loadLocalProtocolFromFiles()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "load local protocol error!"

    .line 565
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load local protocol : requestUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "P"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    goto :goto_0

    .line 570
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 572
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    if-eqz v2, :cond_2

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 577
    iput-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    .line 578
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    :cond_2
    :goto_0
    :try_start_0
    const-string v2, "start check !! "

    .line 583
    invoke-static {v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurCompactUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", content:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 587
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-direct {p0, v1, v3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->parseLocalProtocol(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    if-eqz v1, :cond_3

    return-void

    .line 594
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    .line 590
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 591
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public saveConfirmByUid(Ljava/lang/String;)V
    .locals 2

    .line 491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    if-nez v0, :cond_1

    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v1, v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/Store;->acceptProtocol(Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;Ljava/lang/String;)V

    return-void
.end method

.method public saveETag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/data/Store;->saveETag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveUploadClassTag(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 740
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/external/protocol/data/Store;->saveUploadClassTag(IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAcceptLaunchProtocol()V
    .locals 1

    .line 520
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol:Z

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/Store;->setAcceptLaunchProtocol()V

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->init(Landroid/content/Context;)V

    return-void
.end method

.method public setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    return-void
.end method

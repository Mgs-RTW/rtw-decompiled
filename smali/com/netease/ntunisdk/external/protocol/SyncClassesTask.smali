.class Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;
.super Ljava/lang/Thread;
.source "SyncClassesTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncClassesTask"

.field private static final bonusPool:[I


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mAppVersion:I

.field private mChannel:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mETag:Ljava/lang/String;

.field private mProject:Ljava/lang/String;

.field private mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->bonusPool:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SyncClassesTask"

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mAppVersion:I

    return-void
.end method

.method private download()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SyncClassesTask"

    const-string v1, "start download class list"

    .line 90
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->getETag()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\""

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 95
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "If-None-Match"

    .line 98
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, ""

    .line 100
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/UrlConnectImpl;->fetch(Ljava/lang/String;Ljava/util/HashMap;)Lcom/netease/ntunisdk/external/protocol/utils/Response;

    move-result-object v0

    const-string v1, "ETag"

    .line 101
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/Response;->getHeaderProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mETag:Ljava/lang/String;

    .line 102
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/utils/Response;->getContent()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private filterClasses(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->isClassFound(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    const-string v0, "SyncClassesTask"

    const-string v1, "classes is empty!"

    .line 117
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private getETag()Ljava/lang/String;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    const-string v1, ""

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getLocalETag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isClassFound(Ljava/lang/String;)Z
    .locals 0

    .line 165
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private lottery()Z
    .locals 3

    .line 77
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v1, 0xa

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "random:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncClassesTask"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->bonusPool:[I

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private uploadClass(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SyncClassesTask"

    if-eqz p1, :cond_3

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 142
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "project"

    .line 143
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mProject:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "app_key"

    .line 144
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mAppKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "channel_id"

    .line 145
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mChannel:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 147
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 148
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p1, "class_list"

    .line 150
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v1, :cond_2

    .line 155
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 156
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ""

    .line 157
    invoke-static {v2, p1, v1}, Lcom/netease/ntunisdk/external/protocol/utils/UrlConnectImpl;->post(Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object p1

    .line 158
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    iget v4, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mAppVersion:I

    iget-wide v5, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mCurrentTime:J

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mETag:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->saveUploadClassTag(IJLjava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_2
    const-string p1, "classes is empty!"

    .line 137
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;
    .locals 0

    .line 41
    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mProject:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mChannel:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mAppKey:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProvider()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    return-object p0
.end method

.method public run()V
    .locals 7

    const-string v0, "SyncClassesTask"

    :try_start_0
    const-string v1, "update classes!"

    .line 52
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/utils/CommonUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mAppVersion:I

    .line 54
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getLastUploadTime()J

    move-result-wide v1

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mCurrentTime:J

    .line 56
    iget-wide v3, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mCurrentTime:J

    const-wide/16 v5, 0x7

    add-long/2addr v1, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    const-string v1, "not need upload classes!"

    .line 57
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->lottery()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "need upload classes!"

    .line 61
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getAppVersionCode()I

    .line 64
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->download()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->filterClasses(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->uploadClass(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

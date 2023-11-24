.class final Lcom/appsflyer/AppsFlyerLibCore$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final $$a:Lcom/appsflyer/AFEvent;

.field private synthetic values:Lcom/appsflyer/AppsFlyerLibCore;


# direct methods
.method private constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V
    .locals 0

    .prologue
    .line 3177
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3178
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    .line 3179
    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;B)V
    .locals 0

    .prologue
    .line 3174
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/AppsFlyerLibCore$b;-><init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    .line 3182
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    invoke-virtual {v0}, Lcom/appsflyer/AFEvent;->params()Ljava/util/Map;

    move-result-object v4

    .line 3183
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    invoke-virtual {v0}, Lcom/appsflyer/AFEvent;->values()Z

    move-result v0

    .line 3184
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    invoke-virtual {v1}, Lcom/appsflyer/AFEvent;->urlString()Ljava/lang/String;

    move-result-object v5

    .line 3185
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    .line 4159
    iget v6, v1, Lcom/appsflyer/AFEvent;->AFDeepLinkManager:I

    .line 3186
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    invoke-virtual {v1}, Lcom/appsflyer/AFEvent;->context()Landroid/app/Application;

    move-result-object v7

    .line 3188
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3189
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    invoke-virtual {v0}, Lcom/appsflyer/AFEvent;->getRequestListener()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v0

    .line 3190
    if-eqz v0, :cond_0

    .line 3191
    sget v1, Lcom/appsflyer/attribution/RequestError;->STOP_TRACKING:I

    sget-object v2, Lcom/appsflyer/internal/attribution/RequestErrorMessage;->STOP_TRACKING:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 3255
    :cond_0
    :goto_0
    return-void

    .line 3194
    :cond_1
    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 3195
    if-eqz v0, :cond_6

    const/4 v0, 0x2

    if-gt v6, v0, :cond_6

    .line 3196
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3197
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->dateFormatUTC(Lcom/appsflyer/AppsFlyerLibCore;)[Lcom/appsflyer/internal/referrer/Referrer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->dateFormatUTC(Lcom/appsflyer/AppsFlyerLibCore;)[Lcom/appsflyer/internal/referrer/Referrer;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v10, :cond_4

    aget-object v1, v9, v3

    .line 3198
    instance-of v0, v1, Lcom/appsflyer/internal/referrer/GoogleReferrer;

    .line 3199
    sget-object v11, Lcom/appsflyer/AppsFlyerLibCore$10;->$$a:[I

    invoke-virtual {v1}, Lcom/appsflyer/internal/referrer/Referrer;->getState()Lcom/appsflyer/internal/referrer/Referrer$State;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 3197
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 3201
    :pswitch_0
    if-eqz v0, :cond_3

    .line 3202
    const-string v11, "rfr"

    move-object v0, v1

    check-cast v0, Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/GoogleReferrer;->oldMap:Ljava/util/Map;

    invoke-interface {v4, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3203
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3204
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v11, "newGPReferrerSent"

    const/4 v12, 0x1

    .line 3205
    invoke-interface {v0, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3208
    :cond_3
    iget-object v0, v1, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3211
    :pswitch_1
    const/4 v11, 0x2

    if-ne v6, v11, :cond_2

    if-nez v0, :cond_2

    .line 3212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3213
    const-string v11, "source"

    invoke-virtual {v1}, Lcom/appsflyer/internal/referrer/Referrer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3214
    const-string v1, "response"

    const-string v11, "TIMEOUT"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    new-instance v1, Lcom/appsflyer/internal/referrer/MandatoryFields;

    invoke-direct {v1}, Lcom/appsflyer/internal/referrer/MandatoryFields;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3216
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3221
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "referrers"

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3222
    :cond_5
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->$$a(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3223
    const-string v0, "fb_ddl"

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->$$a(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3226
    :cond_6
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    instance-of v0, v0, Lcom/appsflyer/internal/model/event/AdRevenue;

    if-nez v0, :cond_7

    .line 3227
    new-instance v0, Lcom/appsflyer/internal/a$a;

    invoke-direct {v0, v4, v7}, Lcom/appsflyer/internal/a$a;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3228
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLibCore;->valueOf()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3231
    :cond_7
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    instance-of v0, v0, Lcom/appsflyer/internal/model/event/AdRevenue;

    if-eqz v0, :cond_b

    const-string v0, "af_key"

    .line 3232
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3231
    :goto_3
    invoke-virtual {v1, v0}, Lcom/appsflyer/AFEvent;->key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    .line 3234
    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    .line 3235
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0x738f

    int-to-char v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    add-int/lit8 v3, v3, 0x17

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x30

    invoke-static {v0, v3, v6}, Lcom/appsflyer/internal/b;->$$b(CII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v3, "values"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lcom/appsflyer/AFEvent;

    aput-object v9, v6, v8

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3236
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 3237
    :try_start_4
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->values:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    invoke-virtual {v2, v0}, Lcom/appsflyer/AFEvent;->post([B)Lcom/appsflyer/AFEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->values(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_0

    .line 3239
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 3240
    :goto_4
    const-string v1, "Exception while sending request to server. "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3241
    if-eqz v2, :cond_9

    if-eqz v7, :cond_9

    const-string v1, "&isCachedRequest=true&timeincache="

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3242
    invoke-static {}, Lcom/appsflyer/internal/x;->values()Lcom/appsflyer/internal/x;

    new-instance v1, Lcom/appsflyer/internal/a$a$a;

    const-string v3, "6.2.0"

    invoke-direct {v1, v5, v2, v3}, Lcom/appsflyer/internal/a$a$a;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 5056
    const/4 v2, 0x0

    .line 5058
    :try_start_5
    invoke-static {v7}, Lcom/appsflyer/internal/x;->AFDateFormat(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 5059
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_d

    .line 5061
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3243
    :cond_8
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3245
    :cond_9
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    invoke-virtual {v1}, Lcom/appsflyer/AFEvent;->getRequestListener()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v1

    .line 3246
    if-eqz v1, :cond_a

    .line 3247
    sget v2, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 3248
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->AFDateFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3232
    :cond_b
    :try_start_6
    const-string v0, "appsflyerKey"

    .line 3233
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    .line 3235
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_c

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3236
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_6
    :try_start_8
    monitor-exit v4

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 3239
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 3235
    :cond_c
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5064
    :cond_d
    :try_start_a
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 5065
    if-eqz v3, :cond_e

    array-length v3, v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_e

    .line 5066
    const-string v1, "reached cache limit, not caching request"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    .line 5087
    :catch_2
    move-exception v1

    .line 5088
    :goto_7
    :try_start_b
    const-string v3, "Could not cache request"

    invoke-static {v3, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 5091
    if-eqz v2, :cond_8

    .line 5092
    :try_start_c
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    .line 5095
    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 5069
    :cond_e
    :try_start_d
    const-string v3, "caching request..."

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 5070
    new-instance v4, Ljava/io/File;

    invoke-static {v7}, Lcom/appsflyer/internal/x;->AFDateFormat(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5071
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 5072
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 5073
    :try_start_e
    const-string v2, "version="

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6057
    iget-object v2, v1, Lcom/appsflyer/internal/a$a$a;->$$b:Ljava/lang/String;

    .line 5074
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5075
    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    .line 5077
    const-string v2, "url="

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6073
    iget-object v2, v1, Lcom/appsflyer/internal/a$a$a;->values:Ljava/lang/String;

    .line 5078
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5079
    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    .line 5081
    const-string v2, "data="

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5082
    invoke-virtual {v1}, Lcom/appsflyer/internal/a$a$a;->$$a()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5083
    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(I)V

    .line 5085
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 5092
    :try_start_f
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_5

    .line 5095
    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 5090
    :catchall_2
    move-exception v0

    .line 5091
    :goto_8
    if-eqz v2, :cond_f

    .line 5092
    :try_start_10
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 5097
    :cond_f
    :goto_9
    throw v0

    .line 5095
    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 3249
    :catch_6
    move-exception v0

    .line 3250
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 3251
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->$$a:Lcom/appsflyer/AFEvent;

    invoke-virtual {v1}, Lcom/appsflyer/AFEvent;->getRequestListener()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v1

    .line 3252
    if-eqz v1, :cond_0

    .line 3253
    sget v2, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5090
    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_8

    .line 5087
    :catch_7
    move-exception v1

    move-object v2, v3

    goto/16 :goto_7

    .line 3239
    :catch_8
    move-exception v0

    goto/16 :goto_4

    .line 3236
    :catchall_4
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_6

    .line 3199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

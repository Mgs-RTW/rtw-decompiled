.class public Lcom/appsflyer/BackgroundHttpTask;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final $$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/model/event/BackgroundEvent;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    .line 22
    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/net/HttpURLConnection;
    .locals 18

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v2}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->urlString()Ljava/lang/String;

    move-result-object v7

    .line 36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v2}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->body()Ljava/lang/String;

    move-result-object v8

    .line 37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v2}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->trackingStopped()Z

    move-result v2

    .line 38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v3}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->readResponse()Z

    move-result v9

    .line 39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v3}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->proxyMode()Z

    move-result v10

    .line 40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v3}, Lcom/appsflyer/AFEvent;->isEncrypt()Z

    move-result v11

    .line 41
    const/4 v4, 0x0

    .line 42
    const-string v5, ""

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 46
    if-eqz v2, :cond_0

    .line 47
    const/4 v2, 0x0

    .line 90
    :goto_0
    return-object v2

    .line 50
    :cond_0
    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    if-eqz v10, :cond_1

    .line 52
    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1190
    const-string v14, "server_request"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-virtual {v2, v14, v13, v15}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 53
    const-string v2, "UTF-8"

    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    .line 54
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "call = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " byte"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    if-le v2, v14, :cond_3

    const-string v2, "s"

    :goto_1
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "; body = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/w;->valueOf(Ljava/lang/String;)V

    .line 58
    :cond_1
    const-string v2, "AppsFlyer"

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 59
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    const/16 v3, 0x7530

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 61
    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 62
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 63
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 64
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 65
    const-string v8, "Content-Type"

    if-eqz v11, :cond_4

    const-string v3, "application/octet-stream"

    :goto_2
    invoke-virtual {v2, v8, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 68
    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v3}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->key()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    const/4 v11, 0x1

    :try_start_2
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v11, v13

    const/4 v3, 0x0

    const/4 v13, 0x0

    invoke-static {v3, v13}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    int-to-char v3, v3

    const/4 v13, 0x0

    invoke-static {v13}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    add-int/lit8 v13, v13, 0x18

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x17

    invoke-static {v3, v13, v14}, Lcom/appsflyer/internal/b;->$$b(CII)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v13, "AFDateFormat"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    const/4 v3, 0x1

    :try_start_3
    new-array v13, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v13, v3

    const-string v3, ""

    const/16 v6, 0x30

    const/4 v14, 0x0

    invoke-static {v3, v6, v14}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    rsub-int/lit8 v3, v3, -0x1

    int-to-char v3, v3

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x17

    const-string v14, ""

    const/16 v15, 0x30

    invoke-static {v14, v15}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v14

    add-int/lit8 v14, v14, 0x19

    invoke-static {v3, v6, v14}, Lcom/appsflyer/internal/b;->$$b(CII)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v6, "AFDateFormat"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, [B

    aput-object v16, v14, v15

    invoke-virtual {v3, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    invoke-virtual {v8, v3}, Ljava/io/OutputStream;->write([B)V

    .line 69
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 70
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 72
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 73
    if-eqz v9, :cond_a

    .line 74
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/appsflyer/AppsFlyerLibCore;->readServerResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    .line 76
    :goto_4
    if-eqz v10, :cond_2

    .line 77
    :try_start_5
    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1194
    const-string v9, "server_response"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-virtual {v5, v9, v8, v10}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    :cond_2
    const/16 v5, 0xc8

    if-ne v6, v5, :cond_8

    .line 81
    const-string v5, "Status 200 ok"

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 89
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connection "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_9

    const-string v4, "error"

    :goto_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_3
    :try_start_6
    const-string v2, ""
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 65
    :cond_4
    :try_start_7
    const-string v3, "application/json"

    goto/16 :goto_2

    .line 68
    :catchall_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 85
    :catch_0
    move-exception v3

    move-object v4, v3

    move-object v3, v5

    .line 86
    :goto_7
    const-string v5, "Error while calling "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    const/4 v4, 0x1

    goto :goto_5

    .line 68
    :cond_5
    :try_start_8
    throw v3

    :catchall_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6

    throw v4

    :cond_6
    throw v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :cond_7
    move-object v3, v6

    goto/16 :goto_3

    .line 83
    :cond_8
    const/4 v4, 0x1

    goto :goto_5

    .line 89
    :cond_9
    const-string v4, "call succeeded"

    goto :goto_6

    .line 85
    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v3

    move-object v3, v5

    goto :goto_7

    :catch_2
    move-exception v4

    goto :goto_7

    :cond_a
    move-object v3, v5

    goto/16 :goto_4
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appsflyer/BackgroundHttpTask$4;

    invoke-direct {v1, p0}, Lcom/appsflyer/BackgroundHttpTask$4;-><init>(Lcom/appsflyer/BackgroundHttpTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    return-void
.end method

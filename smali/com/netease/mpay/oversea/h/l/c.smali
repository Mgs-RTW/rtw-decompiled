.class public Lcom/netease/mpay/oversea/h/l/c;
.super Lcom/netease/mpay/oversea/h/l/d;
.source "FetchUrlImpHurlStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/h/l/d;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;II)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    .line 202
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 204
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    .line 205
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    .line 206
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p1
.end method

.method private a(ILjava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "DELETE"

    .line 197
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "PUT"

    .line 198
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "POST"

    .line 199
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "GET"

    .line 200
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/util/HashMap;[BII)Lcom/netease/mpay/oversea/h/l/b$b;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BII)",
            "Lcom/netease/mpay/oversea/h/l/b$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/l/b$a;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, -0x2

    const/4 v10, -0x1

    const/4 v12, 0x0

    move/from16 v13, p5

    move/from16 v14, p6

    .line 3
    :try_start_0
    invoke-direct {v1, v2, v13, v14}, Lcom/netease/mpay/oversea/h/l/c;->a(Ljava/lang/String;II)Ljava/net/HttpURLConnection;

    move-result-object v13
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v14, p1

    .line 4
    :try_start_1
    invoke-direct {v1, v14, v13}, Lcom/netease/mpay/oversea/h/l/c;->a(ILjava/net/HttpURLConnection;)V

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 7
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v15, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v13, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 13
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 15
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 18
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/h/l/b$b;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/h/l/b$b;-><init>()V

    .line 19
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v0, Lcom/netease/mpay/oversea/h/l/b$b;->a:I
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v10, :cond_6

    .line 28
    :try_start_2
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v11, v3

    goto :goto_2

    .line 30
    :catch_0
    :try_start_3
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    if-eqz v11, :cond_2

    .line 33
    :try_start_4
    invoke-static {v11}, Lcom/netease/mpay/oversea/h/l/g;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, v0, Lcom/netease/mpay/oversea/h/l/b$b;->b:[B

    .line 35
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/netease/mpay/oversea/h/l/b$b;->c:Ljava/util/HashMap;

    .line 36
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 37
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 38
    iget-object v15, v0, Lcom/netease/mpay/oversea/h/l/b$b;->c:Ljava/util/HashMap;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    .line 39
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 40
    invoke-virtual {v15, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, -0x1

    goto :goto_3

    .line 43
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v3

    iget v10, v0, Lcom/netease/mpay/oversea/h/l/b$b;->a:I

    invoke-virtual {v3, v2, v4, v5, v10}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;JI)V
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v11, :cond_4

    .line 80
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    nop

    :cond_4
    :goto_4
    if-eqz v13, :cond_5

    .line 85
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v0

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto/16 :goto_d

    :catch_6
    move-exception v0

    goto/16 :goto_f

    :catch_7
    move-exception v0

    goto/16 :goto_11

    :catch_8
    move-exception v0

    goto/16 :goto_13

    :catch_9
    move-exception v0

    goto/16 :goto_15

    .line 86
    :cond_6
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/IllegalAccessError; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    goto :goto_8

    :catch_c
    move-exception v0

    goto :goto_a

    :catch_d
    move-exception v0

    goto :goto_c

    :catch_e
    move-exception v0

    goto :goto_e

    :catch_f
    move-exception v0

    goto :goto_10

    :catch_10
    move-exception v0

    goto/16 :goto_12

    :catch_11
    move-exception v0

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    const/4 v13, 0x0

    :goto_5
    const/4 v11, 0x0

    goto/16 :goto_16

    :catch_12
    move-exception v0

    const/4 v13, 0x0

    :goto_6
    const/4 v11, 0x0

    .line 135
    :goto_7
    :try_start_7
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v5, v12}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;JI)V

    .line 136
    new-instance v2, Lcom/netease/mpay/oversea/h/l/b$a;

    .line 137
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v7, v0}, Lcom/netease/mpay/oversea/h/l/b$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_13
    move-exception v0

    const/4 v13, 0x0

    :goto_8
    const/4 v11, 0x0

    .line 138
    :goto_9
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v5, v9}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;JI)V

    .line 139
    new-instance v2, Lcom/netease/mpay/oversea/h/l/b$a;

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v6, v0}, Lcom/netease/mpay/oversea/h/l/b$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_14
    move-exception v0

    const/4 v13, 0x0

    :goto_a
    const/4 v11, 0x0

    .line 141
    :goto_b
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v5, v12}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;JI)V

    .line 142
    new-instance v2, Lcom/netease/mpay/oversea/h/l/b$a;

    const/16 v3, 0x9

    .line 143
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/netease/mpay/oversea/h/l/b$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_15
    move-exception v0

    const/4 v13, 0x0

    :goto_c
    const/4 v11, 0x0

    .line 144
    :goto_d
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v5, v9}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;JI)V

    .line 145
    new-instance v2, Lcom/netease/mpay/oversea/h/l/b$a;

    .line 146
    invoke-virtual {v0}, Ljava/lang/IllegalAccessError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v6, v0}, Lcom/netease/mpay/oversea/h/l/b$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_16
    move-exception v0

    const/4 v13, 0x0

    :goto_e
    const/4 v11, 0x0

    .line 147
    :goto_f
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v5, v12}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;JI)V

    .line 148
    new-instance v2, Lcom/netease/mpay/oversea/h/l/b$a;

    const/4 v3, 0x4

    .line 149
    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/netease/mpay/oversea/h/l/b$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_17
    move-exception v0

    const/4 v13, 0x0

    :goto_10
    const/4 v11, 0x0

    .line 150
    :goto_11
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v5, v12}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;JI)V

    .line 151
    new-instance v2, Lcom/netease/mpay/oversea/h/l/b$a;

    .line 152
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lcom/netease/mpay/oversea/h/l/b$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_18
    move-exception v0

    const/4 v13, 0x0

    :goto_12
    const/4 v11, 0x0

    .line 153
    :goto_13
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v3

    const/4 v6, -0x1

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;JI)V

    .line 154
    new-instance v2, Lcom/netease/mpay/oversea/h/l/b$a;

    .line 155
    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v7, v0}, Lcom/netease/mpay/oversea/h/l/b$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_19
    move-exception v0

    const/4 v13, 0x0

    :goto_14
    const/4 v11, 0x0

    .line 156
    :goto_15
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v3

    const/4 v6, -0x3

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;JI)V

    .line 157
    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/h/l/d;->a(Ljava/lang/Exception;)Lcom/netease/mpay/oversea/h/l/b$a;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    :goto_16
    if-eqz v11, :cond_7

    .line 189
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1a

    goto :goto_17

    :catch_1a
    nop

    :cond_7
    :goto_17
    if-eqz v13, :cond_8

    .line 194
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 196
    :cond_8
    goto :goto_19

    :goto_18
    throw v0

    :goto_19
    goto :goto_18
.end method

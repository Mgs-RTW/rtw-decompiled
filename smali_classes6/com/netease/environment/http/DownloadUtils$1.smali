.class final Lcom/netease/environment/http/DownloadUtils$1;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/environment/http/DownloadUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/environment/listener/OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

.field final synthetic val$rootPath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/environment/listener/OnDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    iput-object p2, p0, Lcom/netease/environment/http/DownloadUtils$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/environment/http/DownloadUtils$1;->val$rootPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/environment/http/DownloadUtils$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    .line 40
    iget-object v0, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    invoke-interface {v0}, Lcom/netease/environment/listener/OnDownloadListener;->onStart()V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 51
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v4, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$url:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 53
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 54
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v6, v0

    .line 55
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v8, 0xc8

    if-ne v0, v8, :cond_5

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v8, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$rootPath:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_1
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$name:Ljava/lang/String;

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 66
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 69
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 71
    :try_start_4
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 73
    :try_start_5
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const-wide/16 v12, 0x0

    const/16 v0, 0x400

    .line 78
    :try_start_6
    new-array v0, v0, [B

    .line 79
    :goto_0
    invoke-virtual {v9, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v14, -0x1

    if-eq v3, v14, :cond_4

    .line 80
    invoke-virtual {v11, v0, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    int-to-long v14, v3

    add-long/2addr v12, v14

    long-to-double v14, v12

    long-to-double v2, v6

    .line 82
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v2

    double-to-int v2, v14

    .line 83
    :try_start_7
    iget-object v3, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    invoke-interface {v3, v2}, Lcom/netease/environment/listener/OnDownloadListener;->onProgress(I)V

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 86
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    .line 87
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 88
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 89
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 90
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v11

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    goto/16 :goto_22

    :catch_0
    move-exception v0

    move-object v3, v11

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object v3, v11

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object v3, v11

    goto/16 :goto_1b

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v10, v3

    goto/16 :goto_22

    :catch_3
    move-exception v0

    move-object v10, v3

    goto/16 :goto_b

    :catch_4
    move-exception v0

    move-object v10, v3

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-object v10, v3

    goto/16 :goto_1b

    :catch_6
    move-exception v0

    move-object v9, v3

    goto/16 :goto_a

    :catch_7
    move-exception v0

    move-object v9, v3

    goto/16 :goto_12

    :catch_8
    move-exception v0

    move-object v9, v3

    goto/16 :goto_1a

    :cond_5
    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    .line 92
    :goto_1
    :try_start_8
    iget-object v0, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/netease/environment/listener/OnDownloadListener;->onFinish(Z)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_6
    if-eqz v3, :cond_7

    .line 118
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 120
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_2
    if-eqz v10, :cond_8

    .line 125
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_3

    :catch_a
    move-exception v0

    move-object v2, v0

    .line 127
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_3
    if-eqz v9, :cond_9

    .line 132
    :try_start_b
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_4

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 134
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 139
    :cond_9
    :goto_4
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_5

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 141
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    if-eqz v4, :cond_1c

    goto/16 :goto_21

    :catch_d
    move-exception v0

    goto :goto_b

    :catch_e
    move-exception v0

    goto/16 :goto_13

    :catch_f
    move-exception v0

    goto/16 :goto_1b

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    goto :goto_7

    :catch_10
    move-exception v0

    move-object v8, v3

    goto :goto_9

    :catch_11
    move-exception v0

    move-object v8, v3

    goto/16 :goto_11

    :catch_12
    move-exception v0

    move-object v8, v3

    goto/16 :goto_19

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v5, v3

    goto :goto_6

    :catch_13
    move-exception v0

    move-object v5, v3

    goto :goto_8

    :catch_14
    move-exception v0

    move-object v5, v3

    goto/16 :goto_10

    :catch_15
    move-exception v0

    move-object v5, v3

    goto/16 :goto_18

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    move-object v5, v4

    :goto_6
    move-object v9, v5

    :goto_7
    move-object v10, v9

    goto/16 :goto_22

    :catch_16
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    :goto_8
    move-object v8, v5

    :goto_9
    move-object v9, v8

    :goto_a
    move-object v10, v9

    :goto_b
    if-eqz v8, :cond_a

    .line 109
    :try_start_d
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 110
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 112
    :cond_a
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "download failed : Exception"

    invoke-static {v2, v6}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {v0}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V

    .line 114
    iget-object v0, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/netease/environment/listener/OnDownloadListener;->onFinish(Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_b
    if-eqz v3, :cond_c

    .line 118
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_17

    goto :goto_c

    :catch_17
    move-exception v0

    move-object v2, v0

    .line 120
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_c
    if-eqz v10, :cond_d

    .line 125
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_18

    goto :goto_d

    :catch_18
    move-exception v0

    move-object v2, v0

    .line 127
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_d
    if-eqz v9, :cond_e

    .line 132
    :try_start_10
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_19

    goto :goto_e

    :catch_19
    move-exception v0

    move-object v2, v0

    .line 134
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_e
    if-eqz v5, :cond_f

    .line 139
    :try_start_11
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1a

    goto :goto_f

    :catch_1a
    move-exception v0

    move-object v2, v0

    .line 141
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_f
    if-eqz v4, :cond_1c

    goto/16 :goto_21

    :catch_1b
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    :goto_10
    move-object v8, v5

    :goto_11
    move-object v9, v8

    :goto_12
    move-object v10, v9

    :goto_13
    if-eqz v8, :cond_10

    .line 102
    :try_start_12
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 103
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 105
    :cond_10
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "download failed : IOException"

    invoke-static {v2, v6}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v0}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V

    .line 107
    iget-object v0, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/netease/environment/listener/OnDownloadListener;->onFinish(Z)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_11
    if-eqz v3, :cond_12

    .line 118
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1c

    goto :goto_14

    :catch_1c
    move-exception v0

    move-object v2, v0

    .line 120
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_14
    if-eqz v10, :cond_13

    .line 125
    :try_start_14
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1d

    goto :goto_15

    :catch_1d
    move-exception v0

    move-object v2, v0

    .line 127
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_15
    if-eqz v9, :cond_14

    .line 132
    :try_start_15
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1e

    goto :goto_16

    :catch_1e
    move-exception v0

    move-object v2, v0

    .line 134
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    :goto_16
    if-eqz v5, :cond_15

    .line 139
    :try_start_16
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1f

    goto :goto_17

    :catch_1f
    move-exception v0

    move-object v2, v0

    .line 141
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_15
    :goto_17
    if-eqz v4, :cond_1c

    goto/16 :goto_21

    :catch_20
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    :goto_18
    move-object v8, v5

    :goto_19
    move-object v9, v8

    :goto_1a
    move-object v10, v9

    :goto_1b
    if-eqz v8, :cond_16

    .line 95
    :try_start_17
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 96
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_1c

    :catchall_5
    move-exception v0

    move-object v2, v0

    goto :goto_22

    .line 98
    :cond_16
    :goto_1c
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "download failed : MalformedURLException"

    invoke-static {v2, v6}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v0}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V

    .line 100
    iget-object v0, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/netease/environment/listener/OnDownloadListener;->onFinish(Z)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :cond_17
    if-eqz v3, :cond_18

    .line 118
    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_21

    goto :goto_1d

    :catch_21
    move-exception v0

    move-object v2, v0

    .line 120
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_18
    :goto_1d
    if-eqz v10, :cond_19

    .line 125
    :try_start_19
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_22

    goto :goto_1e

    :catch_22
    move-exception v0

    move-object v2, v0

    .line 127
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_19
    :goto_1e
    if-eqz v9, :cond_1a

    .line 132
    :try_start_1a
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_23

    goto :goto_1f

    :catch_23
    move-exception v0

    move-object v2, v0

    .line 134
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1a
    :goto_1f
    if-eqz v5, :cond_1b

    .line 139
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_24

    goto :goto_20

    :catch_24
    move-exception v0

    move-object v2, v0

    .line 141
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1b
    :goto_20
    if-eqz v4, :cond_1c

    .line 146
    :goto_21
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1c
    return-void

    :goto_22
    if-eqz v3, :cond_1d

    .line 118
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_25

    goto :goto_23

    :catch_25
    move-exception v0

    move-object v3, v0

    .line 120
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d
    :goto_23
    if-eqz v10, :cond_1e

    .line 125
    :try_start_1d
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_26

    goto :goto_24

    :catch_26
    move-exception v0

    move-object v3, v0

    .line 127
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1e
    :goto_24
    if-eqz v9, :cond_1f

    .line 132
    :try_start_1e
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_27

    goto :goto_25

    :catch_27
    move-exception v0

    move-object v3, v0

    .line 134
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1f
    :goto_25
    if-eqz v5, :cond_20

    .line 139
    :try_start_1f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_28

    goto :goto_26

    :catch_28
    move-exception v0

    move-object v3, v0

    .line 141
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_20
    :goto_26
    if-eqz v4, :cond_21

    .line 146
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 148
    :cond_21
    throw v2
.end method

.class Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$1;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil;->download(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;

.field final synthetic val$saveFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$1;->val$listener:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$1;->val$saveFile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$1;->val$listener:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/netease/ntunisdk/okhttp3/Call;Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x800

    new-array p1, p1, [B

    const/4 v0, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 33
    :try_start_1
    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 34
    new-instance p2, Ljava/io/File;

    iget-object v4, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$1;->val$saveFile:Ljava/lang/String;

    invoke-direct {p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v5, 0x0

    .line 37
    :goto_0
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    const/4 v7, 0x0

    .line 38
    invoke-virtual {v4, p1, v7, v0}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v7, v0

    add-long/2addr v5, v7

    long-to-float v0, v5

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v0, v0, v7

    long-to-float v7, v2

    div-float/2addr v0, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v0, v0, v7

    float-to-int v0, v0

    .line 41
    iget-object v7, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$1;->val$listener:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;

    invoke-interface {v7, v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;->onDownloading(I)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 44
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$1;->val$listener:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;->onDownloadSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 50
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v4, v0

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v4, v0

    :goto_2
    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v1, v0

    move-object v4, v1

    goto :goto_6

    :catch_3
    move-exception p1

    move-object v4, v0

    .line 46
    :goto_3
    :try_start_5
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$1;->val$listener:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_2

    .line 50
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    if-eqz v4, :cond_3

    .line 56
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    return-void

    :catchall_3
    move-exception p1

    move-object v1, v0

    :goto_6
    if-eqz v1, :cond_4

    .line 50
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception p2

    .line 52
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    if-eqz v4, :cond_5

    .line 56
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    move-exception p2

    .line 58
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    :cond_5
    :goto_8
    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

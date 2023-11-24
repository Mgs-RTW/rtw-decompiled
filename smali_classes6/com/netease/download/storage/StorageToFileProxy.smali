.class public Lcom/netease/download/storage/StorageToFileProxy;
.super Ljava/lang/Object;
.source "StorageToFileProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageToFileProxy"

.field private static sStorageToFileProxy:Lcom/netease/download/storage/StorageToFileProxy;


# instance fields
.field private mAl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExs:Ljava/util/concurrent/ExecutorService;

.field private mFile:Ljava/io/File;

.field private mIsStart:Z

.field private mOut:Ljava/io/BufferedWriter;

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mAl:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    .line 44
    iput-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mIsStart:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/storage/StorageToFileProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/download/storage/StorageToFileProxy;)Ljava/io/BufferedWriter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    return-object p0
.end method

.method public static getInstances()Lcom/netease/download/storage/StorageToFileProxy;
    .locals 1

    .line 54
    sget-object v0, Lcom/netease/download/storage/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/download/storage/StorageToFileProxy;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/netease/download/storage/StorageToFileProxy;

    invoke-direct {v0}, Lcom/netease/download/storage/StorageToFileProxy;-><init>()V

    sput-object v0, Lcom/netease/download/storage/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/download/storage/StorageToFileProxy;

    .line 58
    :cond_0
    sget-object v0, Lcom/netease/download/storage/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/download/storage/StorageToFileProxy;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/storage/StorageToFileProxy$2;

    invoke-direct {v1, p0}, Lcom/netease/download/storage/StorageToFileProxy$2;-><init>(Lcom/netease/download/storage/StorageToFileProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    const-string p1, "StorageToFileProxy"

    const-string v0, "StorageToFileProxy [init] start"

    .line 64
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object p1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "StorageToFileProxy"

    const-string v0, "StorageToFileProxy [init] param error"

    .line 67
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    sget-object p1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/android_download_log/download_result.txt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    .line 76
    iget-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 83
    :try_start_0
    iget-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    :cond_2
    :goto_0
    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    iget-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    if-eqz p1, :cond_4

    .line 102
    :try_start_2
    iget-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 103
    iget-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    const-string v0, "StorageToFileProxy"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v2, "StorageToFileProxy [init] IOException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :try_start_3
    const-string v0, "StorageToFileProxy"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageToFileProxy [init] FileNotFoundException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    iget-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    if-eqz p1, :cond_4

    .line 102
    :try_start_4
    iget-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 103
    iget-object p1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    const-string v0, "StorageToFileProxy"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 99
    :goto_2
    iget-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_3

    .line 102
    :try_start_5
    iget-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 103
    iget-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageToFileProxy [init] IOException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageToFileProxy"

    invoke-static {v2, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    :cond_3
    :goto_3
    throw p1

    :cond_4
    :goto_4
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "StorageToFileProxy"

    const-string v1, "StorageToFileProxy [start] start"

    .line 126
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mIsStart:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mIsStart:Z

    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/storage/StorageToFileProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/download/storage/StorageToFileProxy$1;-><init>(Lcom/netease/download/storage/StorageToFileProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

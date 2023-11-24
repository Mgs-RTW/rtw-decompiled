.class public Lcom/netease/androidcrashhandler/util/StorageToFileProxy;
.super Ljava/lang/Object;
.source "StorageToFileProxy.java"


# static fields
.field public static final CRASHHUNTER_LOG_FILE_PATH:Ljava/lang/String; = "/crashhunter_/crashHunter_log.txt"

.field private static sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;


# instance fields
.field private mFile:Ljava/io/File;

.field private mHasInit:Z

.field private mHasStart:Z

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
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    .line 35
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasStart:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 39
    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/File;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/BufferedWriter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    return-object p1
.end method

.method public static getInstances()Lcom/netease/androidcrashhandler/util/StorageToFileProxy;
    .locals 1

    .line 50
    sget-object v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    .line 53
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "trace"

    const-string v1, "StorageToFileProxy [finish] mFile is null , [finish] fail"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const-string v1, "finish"

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;I)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "trace"

    const-string p2, "StorageToFileProxy [init] context is null, [init] fail"

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/crashhunter_/crashHunter_log.txt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    .line 74
    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "trace"

    const-string v0, "StorageToFileProxy [init] delete file"

    .line 75
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 80
    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "trace"

    const-string v0, "StorageToFileProxy [init] create file"

    .line 84
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :try_start_1
    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "trace"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageToFileProxy [init] createNewFile ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    const-string p1, "trace"

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageToFileProxy [init] mFile path ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "trace"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageToFileProxy [init] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    const/16 p1, 0x1f4

    if-ge p2, p1, :cond_5

    goto :goto_2

    :cond_5
    move p1, p2

    .line 107
    :goto_2
    iget-object p2, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez p2, :cond_6

    .line 108
    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    :cond_6
    return-void
.end method

.method public isInit()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    return v0
.end method

.method public start()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "trace"

    const-string v1, "StorageToFileProxy [Thread] mFile is null , [start] fail"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    if-nez v0, :cond_1

    const-string v0, "trace"

    const-string v1, "StorageToFileProxy [Thread] not initialized yet"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;-><init>(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

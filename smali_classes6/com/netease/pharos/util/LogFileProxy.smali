.class public Lcom/netease/pharos/util/LogFileProxy;
.super Ljava/lang/Object;
.source "LogFileProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "pharos"

.field private static mContainLogFile:Z

.field private static sLogFileProxy:Lcom/netease/pharos/util/LogFileProxy;


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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mHasInit:Z

    .line 38
    iput-boolean v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mHasStart:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 42
    iput-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    .line 44
    iput-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mOut:Ljava/io/BufferedWriter;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/File;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/BufferedWriter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/pharos/util/LogFileProxy;->mOut:Ljava/io/BufferedWriter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/pharos/util/LogFileProxy;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mOut:Ljava/io/BufferedWriter;

    return-object p1
.end method

.method public static containLogFile()Z
    .locals 3

    .line 184
    sget-boolean v0, Lcom/netease/pharos/util/LogFileProxy;->mContainLogFile:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/_pharos_log.txt"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pharos"

    const-string v1, "LogFileProxy [containLogFile] mContainLogFile true"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 193
    sput-boolean v0, Lcom/netease/pharos/util/LogFileProxy;->mContainLogFile:Z

    .line 198
    :cond_0
    sget-boolean v0, Lcom/netease/pharos/util/LogFileProxy;->mContainLogFile:Z

    return v0
.end method

.method public static getInstances()Lcom/netease/pharos/util/LogFileProxy;
    .locals 1

    .line 53
    sget-object v0, Lcom/netease/pharos/util/LogFileProxy;->sLogFileProxy:Lcom/netease/pharos/util/LogFileProxy;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/netease/pharos/util/LogFileProxy;

    invoke-direct {v0}, Lcom/netease/pharos/util/LogFileProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/util/LogFileProxy;->sLogFileProxy:Lcom/netease/pharos/util/LogFileProxy;

    .line 56
    :cond_0
    sget-object v0, Lcom/netease/pharos/util/LogFileProxy;->sLogFileProxy:Lcom/netease/pharos/util/LogFileProxy;

    return-object v0
.end method

.method private start()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "pharos"

    const-string v1, "LogFileProxy [Thread] mFile is null , [start] fail"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/util/LogFileProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/pharos/util/LogFileProxy$1;-><init>(Lcom/netease/pharos/util/LogFileProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "logThread"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

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

    .line 172
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "pharos"

    const-string v1, "LogFileProxy [finish] mFile is null , [finish] fail"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    const-string v1, "finish"

    .line 178
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "pharos"

    const-string v1, "LogFileProxy [init] start"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "LogFileProxy [init] context is null, [init] fail"

    .line 63
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/_pharos_log.txt"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 76
    iget-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 77
    iget-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogFileProxy [init] mFile path ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1f4

    if-ge p2, p1, :cond_1

    const/16 p2, 0x1f4

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez p1, :cond_2

    .line 86
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/netease/pharos/util/LogFileProxy;->start()V

    goto :goto_0

    :cond_3
    const-string p1, "LogFileProxy [init] mFile does not exist"

    .line 92
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "LogFileProxy [init] Directory does not exist"

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogFileProxy [init] Exception="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

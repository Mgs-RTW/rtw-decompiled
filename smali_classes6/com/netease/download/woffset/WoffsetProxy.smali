.class public Lcom/netease/download/woffset/WoffsetProxy;
.super Ljava/lang/Object;
.source "WoffsetProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WoffsetProxy"

.field private static mWoffsetProxy:Lcom/netease/download/woffset/WoffsetProxy;


# instance fields
.field private mHasInit:Z

.field private mParamsQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mHasInit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/woffset/WoffsetProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static getInstances()Lcom/netease/download/woffset/WoffsetProxy;
    .locals 1

    .line 44
    sget-object v0, Lcom/netease/download/woffset/WoffsetProxy;->mWoffsetProxy:Lcom/netease/download/woffset/WoffsetProxy;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/netease/download/woffset/WoffsetProxy;

    invoke-direct {v0}, Lcom/netease/download/woffset/WoffsetProxy;-><init>()V

    sput-object v0, Lcom/netease/download/woffset/WoffsetProxy;->mWoffsetProxy:Lcom/netease/download/woffset/WoffsetProxy;

    .line 47
    :cond_0
    sget-object v0, Lcom/netease/download/woffset/WoffsetProxy;->mWoffsetProxy:Lcom/netease/download/woffset/WoffsetProxy;

    return-object v0
.end method

.method private start()V
    .locals 2

    const-string v0, "WoffsetProxy"

    const-string v1, "WoffsetProxy [start] start"

    .line 78
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/woffset/WoffsetProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/download/woffset/WoffsetProxy$1;-><init>(Lcom/netease/download/woffset/WoffsetProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "donwloader woffset"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 2

    const-string v0, "WoffsetProxy"

    const-string v1, "WoffsetProxy [init] start"

    .line 57
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mHasInit:Z

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/netease/download/woffset/WoffsetProxy;->mHasInit:Z

    .line 61
    invoke-direct {p0}, Lcom/netease/download/woffset/WoffsetProxy;->start()V

    :cond_0
    return-void
.end method

.method public put(Lcom/netease/download/downloader/DownloadParams;)V
    .locals 2

    const-string v0, "WoffsetProxy"

    const-string v1, "WoffsetProxy [put] start"

    .line 66
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    const-string v0, "WoffsetProxy"

    const-string v1, "WoffsetProxy [put] call"

    .line 69
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "WoffsetProxy"

    const-string v0, "WoffsetProxy [put] mCallQueue is null"

    .line 73
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "WoffsetProxy"

    const-string v1, "WoffsetProxy [reset] start"

    .line 51
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mHasInit:Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public write2FileOffset(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7

    const-string v0, "WoffsetProxy"

    const-string v1, "WoffsetProxy [write2File] start"

    .line 128
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WoffsetProxy"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WoffsetProxy [write2File] srcPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", desPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", woffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gez v0, :cond_0

    goto/16 :goto_11

    .line 139
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "WoffsetProxy"

    const-string p2, "WoffsetProxy [write2File] \u6e90\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 142
    invoke-static {p1, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 146
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "WoffsetProxy"

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WoffsetProxy [write2File] IOException1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v2, 0x0

    .line 167
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const v4, 0x8000

    .line 168
    :try_start_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 170
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rwd"

    invoke-direct {v5, p2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    :try_start_3
    invoke-virtual {v5, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 172
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    :goto_1
    :try_start_4
    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p3

    const/4 p4, -0x1

    if-eq p3, p4, :cond_3

    .line 175
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 176
    invoke-virtual {p2, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 177
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 180
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "WoffsetProxy"

    .line 181
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WoffsetProxy [write2File] \u5199\u5165\u6210\u529f\uff0c\u5220\u9664\u6587\u4ef6 = "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    .line 198
    :cond_4
    :try_start_5
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v3, :cond_5

    .line 202
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    if-eqz p2, :cond_a

    .line 206
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_c

    :catch_1
    move-exception p1

    const-string p2, "WoffsetProxy"

    .line 210
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string p4, "WoffsetProxy [write2File] IOException3"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object p2, v2

    :goto_3
    move-object v2, v5

    goto/16 :goto_d

    :catch_4
    move-exception p1

    move-object p2, v2

    :goto_4
    move-object v2, v5

    goto :goto_6

    :catch_5
    move-exception p1

    move-object p2, v2

    :goto_5
    move-object v2, v5

    goto :goto_9

    :catchall_2
    move-exception p1

    move-object p2, v2

    goto/16 :goto_d

    :catch_6
    move-exception p1

    move-object p2, v2

    goto :goto_6

    :catch_7
    move-exception p1

    move-object p2, v2

    goto :goto_9

    :catchall_3
    move-exception p1

    move-object p2, v2

    move-object v3, p2

    goto/16 :goto_d

    :catch_8
    move-exception p1

    move-object p2, v2

    move-object v3, p2

    :goto_6
    :try_start_6
    const-string p3, "WoffsetProxy"

    .line 191
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WoffsetProxy [write2File] IOException2"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v2, :cond_6

    .line 198
    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_7

    :catch_9
    move-exception p1

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    .line 202
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_7
    if-eqz p2, :cond_a

    .line 206
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_c

    :goto_8
    const-string p2, "WoffsetProxy"

    .line 210
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_a
    move-exception p1

    move-object p2, v2

    move-object v3, p2

    :goto_9
    :try_start_8
    const-string p3, "WoffsetProxy"

    .line 187
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WoffsetProxy [write2File] FileNotFoundException"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v2, :cond_8

    .line 198
    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_a

    :catch_b
    move-exception p1

    goto :goto_b

    :cond_8
    :goto_a
    if-eqz v3, :cond_9

    .line 202
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_9
    if-eqz p2, :cond_a

    .line 206
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_c

    :goto_b
    const-string p2, "WoffsetProxy"

    .line 210
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :cond_a
    :goto_c
    return v1

    :catchall_4
    move-exception p1

    :goto_d
    if-eqz v2, :cond_b

    .line 198
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_e

    :catch_c
    move-exception p2

    goto :goto_f

    :cond_b
    :goto_e
    if-eqz v3, :cond_c

    .line 202
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_c
    if-eqz p2, :cond_d

    .line 206
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    goto :goto_10

    .line 210
    :goto_f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "WoffsetProxy [write2File] IOException3"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "WoffsetProxy"

    invoke-static {p4, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    :cond_d
    :goto_10
    throw p1

    :cond_e
    :goto_11
    const-string p1, "WoffsetProxy"

    const-string p2, "WoffsetProxy [write2File] param error"

    .line 135
    invoke-static {p1, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

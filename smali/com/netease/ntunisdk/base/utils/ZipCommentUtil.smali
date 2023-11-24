.class public Lcom/netease/ntunisdk/base/utils/ZipCommentUtil;
.super Ljava/lang/Object;
.source "ZipCommentUtil.java"


# static fields
.field private static final CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static MAGICTAG:Ljava/lang/String; = "NETEASE"

.field private static final TAG:Ljava/lang/String; = "UniSDK ZipCommentUtil"

.field private static TOTAL_COMMENT_LENGTH:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommentAppchannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 23
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {p0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/netease/ntunisdk/base/utils/ZipCommentUtil;->MAGICTAG:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 29
    array-length v2, v1

    new-array v2, v2, [B

    .line 30
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    .line 31
    array-length v5, v1

    int-to-long v5, v5

    sub-long/2addr v3, v5

    .line 32
    invoke-static {p0, v3, v4, v2}, Lcom/netease/ntunisdk/base/utils/ZipCommentUtil;->readFully(Ljava/io/RandomAccessFile;J[B)V

    .line 33
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 34
    new-array v2, v1, [B

    .line 35
    array-length v5, v2

    int-to-long v5, v5

    sub-long/2addr v3, v5

    .line 36
    invoke-static {p0, v3, v4, v2}, Lcom/netease/ntunisdk/base/utils/ZipCommentUtil;->readFully(Ljava/io/RandomAccessFile;J[B)V

    const/4 v5, 0x0

    .line 37
    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/utils/ZipCommentUtil;->stream2Short([BI)S

    move-result v2

    .line 38
    sget v5, Lcom/netease/ntunisdk/base/utils/ZipCommentUtil;->TOTAL_COMMENT_LENGTH:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v1

    sget-object v1, Lcom/netease/ntunisdk/base/utils/ZipCommentUtil;->MAGICTAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v5, v1

    new-array v1, v5, [B

    int-to-long v5, v2

    sub-long/2addr v3, v5

    .line 40
    array-length v2, v1

    int-to-long v5, v2

    sub-long/2addr v3, v5

    .line 41
    invoke-static {p0, v3, v4, v1}, Lcom/netease/ntunisdk/base/utils/ZipCommentUtil;->readFully(Ljava/io/RandomAccessFile;J[B)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 43
    :goto_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v1, :cond_1

    .line 46
    new-instance p0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "UniSDK ZipCommentUtil"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCommentAppchannel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const-string p0, "UniSDK ZipCommentUtil"

    const-string v1, "getCommentAppchannel null"

    .line 50
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "UniSDK ZipCommentUtil"

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCommentAppchannel excption:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method private static readFully(Ljava/io/RandomAccessFile;J[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67
    invoke-virtual {p0, p3}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-void
.end method

.method private static stream2Short([BI)S
    .locals 2

    const/4 v0, 0x2

    .line 76
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 78
    aget-byte v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    .line 79
    aget-byte p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 80
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0
.end method

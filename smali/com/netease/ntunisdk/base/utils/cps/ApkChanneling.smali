.class public Lcom/netease/ntunisdk/base/utils/cps/ApkChanneling;
.super Ljava/lang/Object;
.source "ApkChanneling.java"


# static fields
.field private static final LEGACY_PATTERN:Ljava/lang/String; = "NETEASE"

.field private static final TAG:Ljava/lang/String; = "ApkChanneling"

.field private static final V2_MAGIC_PREFIX:Ljava/lang/String; = "APK Sig Block"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannel(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/cps/ApkChanneling;->readZipComment(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v2, 0x16

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 28
    :cond_0
    new-instance v3, Lcom/netease/ntunisdk/base/utils/cps/ECDR;

    invoke-direct {v3, v1, v2}, Lcom/netease/ntunisdk/base/utils/cps/ECDR;-><init>(Ljava/io/RandomAccessFile;I)V

    .line 30
    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->offset()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    sub-long/2addr v4, v6

    const/16 v2, 0x10

    .line 31
    new-array v2, v2, [B

    .line 33
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 34
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v4, 0x0

    .line 39
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "APK Sig Block"

    .line 40
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->offset()J

    move-result-wide v4

    const-wide/16 v6, 0x18

    sub-long/2addr v4, v6

    .line 45
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 46
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/cps/a;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 48
    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->offset()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 49
    new-instance v4, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;

    invoke-direct {v4, v1, v2, v3}, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 51
    invoke-virtual {v4}, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->checkV2()Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    const-string p0, "ApkChanneling"

    const-string v0, "v2"

    .line 56
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4}, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->getChannel()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v2, "ApkChanneling"

    const-string v3, "v1"

    .line 61
    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/utils/cps/ApkChanneling;->getChannelForV1Legacy(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object p0
.end method

.method static getChannelForV1Legacy(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 76
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NETEASE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NETEASE"

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    const-string v3, "NETEASE"

    .line 80
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    if-lez v2, :cond_0

    .line 82
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x0

    .line 83
    aget-byte v4, v1, v4

    const/4 v5, 0x1

    aget-byte v1, v1, v5

    invoke-static {v4, v1}, Lcom/netease/ntunisdk/base/utils/cps/a;->a(BB)S

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x80

    add-int v4, v3, v1

    if-ge v4, v2, :cond_0

    sub-int/2addr v2, v1

    .line 87
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 92
    :goto_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ApkChanneling"

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid zip comment: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    .line 100
    :cond_2
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string p0, "META-INF/appchannel"

    .line 104
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_3

    const-wide/16 v2, 0x0

    .line 105
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 106
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-object p0, v1

    move-object v0, v2

    goto :goto_6

    :cond_3
    move-object p0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 115
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    :cond_4
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    :catch_2
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_3
    move-object p1, v0

    :catch_4
    move-object p0, v1

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object p1, v0

    :goto_3
    if-eqz v0, :cond_5

    .line 115
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    if-eqz p1, :cond_6

    .line 122
    :try_start_7
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    :cond_6
    :goto_5
    throw p0

    :catch_7
    move-object p0, v0

    move-object p1, p0

    :goto_6
    if-eqz v0, :cond_7

    .line 115
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_7
    if-eqz p1, :cond_8

    .line 122
    :try_start_9
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_8
    :goto_8
    return-object p0
.end method

.method private static getECDRHead(Ljava/io/File;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 136
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 137
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    .line 138
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p0, v4

    .line 139
    new-array v4, p0, [B

    int-to-long v5, p0

    sub-long/2addr v2, v5

    const-wide/16 v7, -0x1

    .line 144
    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 145
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 p0, 0x0

    move-wide v9, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 149
    :goto_1
    array-length v11, v4

    array-length v12, v1

    sub-int/2addr v11, v12

    if-eq v7, v11, :cond_3

    const/4 v11, 0x0

    .line 151
    :goto_2
    array-length v12, v1

    const/4 v13, 0x1

    if-eq v11, v12, :cond_1

    add-int v12, v7, v11

    .line 152
    aget-byte v12, v4, v12

    aget-byte v14, v1, v11

    if-eq v12, v14, :cond_0

    const/4 v11, 0x0

    goto :goto_3

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_2

    int-to-long v8, v7

    add-long/2addr v8, v2

    move-wide v9, v8

    const/4 v8, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-nez v8, :cond_6

    const-wide/16 v7, 0x0

    cmp-long p0, v7, v2

    if-eqz p0, :cond_6

    sub-long/2addr v2, v5

    const-wide/16 v11, 0x3

    add-long/2addr v2, v11

    cmp-long p0, v2, v7

    if-gez p0, :cond_4

    move-wide v2, v7

    :cond_4
    cmp-long p0, v2, v7

    if-gez p0, :cond_5

    goto :goto_4

    :cond_5
    move-wide v7, v9

    goto :goto_0

    .line 174
    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v9

    nop

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method private static readZipComment(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/cps/ApkChanneling;->getECDRHead(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    .line 182
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p0, 0x2

    .line 184
    new-array p0, p0, [B

    .line 185
    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v3, 0x0

    .line 186
    aget-byte v3, p0, v3

    const/4 v4, 0x1

    aget-byte p0, p0, v4

    invoke-static {v3, p0}, Lcom/netease/ntunisdk/base/utils/cps/a;->a(BB)S

    move-result p0

    if-lez p0, :cond_0

    .line 188
    new-array p0, p0, [B

    const-wide/16 v3, 0x2

    add-long/2addr v0, v3

    .line 189
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 190
    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 191
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    return-object v0
.end method

.class public Lcom/netease/mpay/oversea/h/l/h;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static a:F = 100.0f

.field private static b:F = 100.0f

.field private static c:I = 0x2ee

.field private static d:I = 0x7530


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(J)D
    .locals 2

    long-to-double p1, p1

    const-wide v0, 0x4050624dd2f1a9fcL    # 65.536

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private a(B)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private a([BI)J
    .locals 5

    .line 148
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 149
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    .line 150
    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    .line 151
    aget-byte p1, p1, p2

    .line 153
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/h/l/h;->a(B)I

    move-result p2

    int-to-long v3, p2

    const/16 p2, 0x18

    shl-long/2addr v3, p2

    .line 154
    invoke-direct {p0, v1}, Lcom/netease/mpay/oversea/h/l/h;->a(B)I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x10

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    .line 155
    invoke-direct {p0, v2}, Lcom/netease/mpay/oversea/h/l/h;->a(B)I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x8

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    .line 156
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/h/l/h;->a(B)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private a([J)J
    .locals 6

    const/4 v0, 0x1

    .line 124
    aget-wide v0, p1, v0

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    sub-long/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v2, p1, v2

    const/4 v4, 0x3

    aget-wide v4, p1, v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private a([B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1b

    .line 125
    aput-byte v1, p1, v0

    return-void
.end method

.method private a([BIJ)V
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 126
    div-long v2, p3, v0

    mul-long v4, v2, v0

    sub-long/2addr p3, v4

    const-wide v4, 0x83aa7e80L

    add-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x18

    shr-long v6, v2, v5

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 134
    aput-byte v6, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/16 v6, 0x10

    shr-long v7, v2, v6

    long-to-int v8, v7

    int-to-byte v7, v8

    .line 135
    aput-byte v7, p1, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v7, 0x8

    shr-long v8, v2, v7

    long-to-int v9, v8

    int-to-byte v8, v9

    .line 136
    aput-byte v8, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/4 v8, 0x0

    shr-long/2addr v2, v8

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 137
    aput-byte v2, p1, v4

    const-wide v2, 0x100000000L

    mul-long p3, p3, v2

    .line 139
    div-long/2addr p3, v0

    add-int/lit8 v0, p2, 0x1

    shr-long v1, p3, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 142
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-long v1, p3, v6

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 143
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-long/2addr p3, v7

    long-to-int p4, p3

    int-to-byte p3, p4

    .line 144
    aput-byte p3, p1, p2

    .line 147
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    const-wide v1, 0x406fe00000000000L    # 255.0

    mul-double p2, p2, v1

    double-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    return-void
.end method

.method private b([BI)J
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/h/l/h;->a([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x4

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/h/l/h;->a([BI)J

    move-result-wide p1

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    mul-long p1, p1, v2

    const-wide v2, 0x100000000L

    .line 6
    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private b([J)J
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/h/l/h;->a([J)J

    move-result-wide v0

    const/4 v2, 0x3

    .line 2
    aget-wide v2, p1, v2

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v2, 0x0

    const/16 v0, 0x30

    :try_start_0
    new-array v3, v0, [B

    .line 2
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 3
    new-instance v5, Ljava/net/DatagramPacket;

    const/16 v6, 0x7b

    invoke-direct {v5, v3, v0, v4, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 4
    invoke-direct {v1, v3}, Lcom/netease/mpay/oversea/h/l/h;->a([B)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v4, 0x28

    .line 7
    invoke-direct {v1, v3, v4, v6, v7}, Lcom/netease/mpay/oversea/h/l/h;->a([BIJ)V

    .line 9
    new-instance v10, Ljava/net/DatagramSocket;

    invoke-direct {v10}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    sget v2, Lcom/netease/mpay/oversea/h/l/h;->d:I

    invoke-virtual {v10, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 11
    invoke-virtual {v10, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 v2, 0x8

    new-array v5, v2, [J

    .line 14
    new-instance v11, Ljava/net/DatagramPacket;

    invoke-direct {v11, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 15
    invoke-virtual {v10, v11}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const/4 v0, 0x7

    aput-wide v11, v5, v0

    const/16 v13, 0x18

    .line 18
    invoke-direct {v1, v3, v13}, Lcom/netease/mpay/oversea/h/l/h;->b([BI)J

    move-result-wide v13

    const/16 v15, 0x20

    .line 19
    invoke-direct {v1, v3, v15}, Lcom/netease/mpay/oversea/h/l/h;->b([BI)J

    move-result-wide v15

    .line 20
    invoke-direct {v1, v3, v4}, Lcom/netease/mpay/oversea/h/l/h;->b([BI)J

    move-result-wide v17

    sub-long/2addr v11, v8

    add-long/2addr v6, v11

    const/4 v4, 0x0

    aput-wide v13, v5, v4

    const/4 v8, 0x1

    aput-wide v15, v5, v8

    const/4 v9, 0x2

    aput-wide v17, v5, v9

    const/4 v9, 0x3

    aput-wide v6, v5, v9

    const/4 v11, 0x4

    .line 28
    invoke-direct {v1, v3, v11}, Lcom/netease/mpay/oversea/h/l/h;->a([BI)J

    move-result-wide v19

    aput-wide v19, v5, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 p1, v10

    .line 29
    :try_start_2
    aget-wide v9, v5, v11

    invoke-direct {v1, v9, v10}, Lcom/netease/mpay/oversea/h/l/h;->a(J)D

    move-result-wide v9

    .line 30
    sget v12, Lcom/netease/mpay/oversea/h/l/h;->a:F

    float-to-double v11, v12

    cmpl-double v21, v9, v11

    if-gtz v21, :cond_7

    .line 35
    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/h/l/h;->a([BI)J

    move-result-wide v9

    const/4 v2, 0x5

    aput-wide v9, v5, v2

    .line 36
    aget-wide v9, v5, v2

    invoke-direct {v1, v9, v10}, Lcom/netease/mpay/oversea/h/l/h;->a(J)D

    move-result-wide v9

    .line 37
    sget v11, Lcom/netease/mpay/oversea/h/l/h;->b:F

    float-to-double v11, v11

    cmpl-double v21, v9, v11

    if-gtz v21, :cond_6

    .line 42
    aget-byte v9, v3, v4

    and-int/2addr v0, v9

    int-to-byte v0, v0

    const/4 v9, 0x4

    if-eq v0, v9, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: mode invalid"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    :goto_0
    aget-byte v0, v3, v8

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    const/4 v2, 0x6

    aput-wide v9, v5, v2

    if-lt v0, v8, :cond_5

    const/16 v8, 0xf

    if-gt v0, v8, :cond_5

    .line 53
    aget-byte v0, v3, v4

    shr-int/2addr v0, v2

    const/4 v2, 0x3

    and-int/2addr v0, v2

    int-to-byte v0, v0

    if-eq v0, v2, :cond_4

    sub-long/2addr v6, v13

    sub-long v17, v17, v15

    sub-long v6, v6, v17

    .line 58
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-double v2, v2

    .line 59
    sget v0, Lcom/netease/mpay/oversea/h/l/h;->c:I

    int-to-double v6, v0

    cmpl-double v0, v2, v6

    if-gez v0, :cond_3

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    cmp-long v0, v2, v6

    if-gez v0, :cond_2

    .line 68
    invoke-direct {v1, v5}, Lcom/netease/mpay/oversea/h/l/h;->b([J)J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit p0

    return-wide v2

    .line 74
    :cond_2
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: time elapsed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: delay >= serverResponseDelayMax"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid response from NTP server: unsynchronized"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid response from NTP server: mode stratum"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: rootDispersion > rootDispersionMax"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: rootDelay > rootDelayMax"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 p1, v10

    :goto_1
    move-object/from16 v2, p1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 p1, v10

    :goto_2
    move-object/from16 v2, p1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 118
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_4
    if-eqz v2, :cond_8

    .line 121
    :try_start_6
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 123
    :cond_8
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

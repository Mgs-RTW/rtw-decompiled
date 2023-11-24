.class public Lcom/appsflyer/internal/ag;
.super Ljava/io/FilterInputStream;
.source ""


# static fields
.field private static final values:S


# instance fields
.field private $$a:[B

.field private $$b:[B

.field private AFDateFormat:I

.field private AFDeepLinkManager:I

.field private AFEvent:I

.field private collectIntentsFromActivities:I

.field private dateFormatUTC:I

.field private getDataFormatter:I

.field private getInstance:I

.field private requestListener:I

.field private urlString:I

.field private valueOf:[B


# direct methods
.method private $$a()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 265
    iget v0, p0, Lcom/appsflyer/internal/ag;->collectIntentsFromActivities:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    .line 267
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/ag;->collectIntentsFromActivities:I

    .line 270
    :cond_0
    iget v0, p0, Lcom/appsflyer/internal/ag;->AFDateFormat:I

    if-ne v0, v1, :cond_5

    .line 273
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    iget v2, p0, Lcom/appsflyer/internal/ag;->collectIntentsFromActivities:I

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 277
    iget v0, p0, Lcom/appsflyer/internal/ag;->collectIntentsFromActivities:I

    if-gez v0, :cond_1

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    const/4 v0, 0x1

    .line 287
    :cond_2
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    rsub-int/lit8 v4, v0, 0x8

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 291
    if-lez v2, :cond_3

    .line 297
    add-int/2addr v0, v2

    .line 300
    if-lt v0, v1, :cond_2

    .line 304
    :cond_3
    if-ge v0, v1, :cond_4

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_4
    invoke-direct {p0}, Lcom/appsflyer/internal/ag;->$$b()V

    .line 313
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/ag;->collectIntentsFromActivities:I

    .line 316
    iput v5, p0, Lcom/appsflyer/internal/ag;->AFDateFormat:I

    .line 320
    iget v0, p0, Lcom/appsflyer/internal/ag;->collectIntentsFromActivities:I

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    rsub-int/lit8 v0, v0, 0x8

    :goto_0
    iput v0, p0, Lcom/appsflyer/internal/ag;->AFDeepLinkManager:I

    .line 325
    :cond_5
    iget v0, p0, Lcom/appsflyer/internal/ag;->AFDeepLinkManager:I

    return v0

    :cond_6
    move v0, v1

    .line 320
    goto :goto_0
.end method

.method private $$b()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v4, -0x1000000

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 212
    iget v0, p0, Lcom/appsflyer/internal/ag;->getDataFormatter:I

    if-ne v0, v7, :cond_0

    .line 214
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    iget-object v2, p0, Lcom/appsflyer/internal/ag;->valueOf:[B

    iget-object v3, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v4

    iget-object v2, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    aget-byte v2, v2, v8

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    aget-byte v2, v2, v9

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v0

    .line 220
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    const/4 v3, 0x4

    aget-byte v0, v0, v3

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v4

    iget-object v3, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    const/4 v4, 0x6

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    move v3, v2

    move v2, v0

    move v0, v1

    .line 224
    :goto_0
    iget v4, p0, Lcom/appsflyer/internal/ag;->dateFormatUTC:I

    if-ge v0, v4, :cond_1

    .line 226
    sget-short v4, Lcom/appsflyer/internal/ag;->values:S

    iget v5, p0, Lcom/appsflyer/internal/ag;->dateFormatUTC:I

    sub-int/2addr v5, v0

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    shl-int/lit8 v5, v3, 0x4

    iget v6, p0, Lcom/appsflyer/internal/ag;->requestListener:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v3, 0x5

    iget v6, p0, Lcom/appsflyer/internal/ag;->urlString:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 229
    sget-short v4, Lcom/appsflyer/internal/ag;->values:S

    iget v5, p0, Lcom/appsflyer/internal/ag;->dateFormatUTC:I

    sub-int/2addr v5, v0

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    shl-int/lit8 v5, v2, 0x4

    iget v6, p0, Lcom/appsflyer/internal/ag;->getInstance:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v2, 0x5

    iget v6, p0, Lcom/appsflyer/internal/ag;->AFEvent:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    shr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 234
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    shr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v8

    .line 235
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v9

    .line 236
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    int-to-byte v3, v3

    aput-byte v3, v0, v7

    .line 237
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    const/4 v3, 0x4

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 238
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    const/4 v3, 0x5

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 239
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    const/4 v3, 0x6

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 240
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    const/4 v3, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 241
    iget v0, p0, Lcom/appsflyer/internal/ag;->getDataFormatter:I

    if-ne v0, v7, :cond_3

    move v0, v1

    .line 1251
    :goto_1
    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    .line 1253
    iget-object v2, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    aget-byte v3, v2, v0

    iget-object v4, p0, Lcom/appsflyer/internal/ag;->$$a:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->valueOf:[B

    iget-object v2, p0, Lcom/appsflyer/internal/ag;->$$a:[B

    iget-object v3, p0, Lcom/appsflyer/internal/ag;->valueOf:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    :cond_3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 24
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    sput-short v0, Lcom/appsflyer/internal/ag;->values:S

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[II[BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v4, 0xffffffffL

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/16 v6, 0x20

    const/16 v2, 0x8

    .line 61
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    const v0, 0x7fffffff

    iput v0, p0, Lcom/appsflyer/internal/ag;->collectIntentsFromActivities:I

    .line 62
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    .line 63
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/appsflyer/internal/ag;->$$a:[B

    .line 64
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/appsflyer/internal/ag;->valueOf:[B

    .line 66
    iput v2, p0, Lcom/appsflyer/internal/ag;->AFDateFormat:I

    .line 67
    iput v2, p0, Lcom/appsflyer/internal/ag;->AFDeepLinkManager:I

    .line 70
    const/4 v0, 0x5

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/ag;->dateFormatUTC:I

    .line 71
    iput p6, p0, Lcom/appsflyer/internal/ag;->getDataFormatter:I

    .line 72
    if-ne p6, v7, :cond_0

    .line 74
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$a:[B

    invoke-static {p4, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    :cond_0
    aget v0, p2, v3

    int-to-long v0, v0

    and-long/2addr v0, v4

    shl-long/2addr v0, v6

    const/4 v2, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1185
    if-nez p3, :cond_1

    .line 1199
    long-to-int v2, v0

    iput v2, p0, Lcom/appsflyer/internal/ag;->getInstance:I

    .line 1200
    shr-long v2, v0, v7

    sget-short v4, Lcom/appsflyer/internal/ag;->values:S

    int-to-long v4, v4

    mul-long/2addr v2, v4

    shr-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, p0, Lcom/appsflyer/internal/ag;->AFEvent:I

    .line 1201
    shr-long v2, v0, v6

    long-to-int v2, v2

    iput v2, p0, Lcom/appsflyer/internal/ag;->requestListener:I

    .line 1202
    shr-long/2addr v0, v7

    sget-short v2, Lcom/appsflyer/internal/ag;->values:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/appsflyer/internal/ag;->urlString:I

    .line 1188
    :goto_0
    return-void

    .line 1190
    :cond_1
    long-to-int v2, v0

    iput v2, p0, Lcom/appsflyer/internal/ag;->getInstance:I

    .line 1191
    long-to-int v2, v0

    mul-int/2addr v2, p3

    iput v2, p0, Lcom/appsflyer/internal/ag;->AFEvent:I

    .line 1192
    long-to-int v2, v0

    xor-int/2addr v2, p3

    iput v2, p0, Lcom/appsflyer/internal/ag;->requestListener:I

    .line 1193
    shr-long/2addr v0, v6

    long-to-int v0, v0

    iput v0, p0, Lcom/appsflyer/internal/ag;->urlString:I

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/appsflyer/internal/ag;->$$a()I

    .line 166
    iget v0, p0, Lcom/appsflyer/internal/ag;->AFDeepLinkManager:I

    iget v1, p0, Lcom/appsflyer/internal/ag;->AFDateFormat:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/appsflyer/internal/ag;->$$a()I

    .line 114
    iget v0, p0, Lcom/appsflyer/internal/ag;->AFDateFormat:I

    iget v1, p0, Lcom/appsflyer/internal/ag;->AFDeepLinkManager:I

    if-lt v0, v1, :cond_0

    .line 116
    const/4 v0, -0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    iget v1, p0, Lcom/appsflyer/internal/ag;->AFDateFormat:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appsflyer/internal/ag;->AFDateFormat:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    .line 128
    add-int v2, p2, p3

    move v0, p2

    .line 132
    :goto_0
    if-ge v0, v2, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/appsflyer/internal/ag;->$$a()I

    .line 137
    iget v1, p0, Lcom/appsflyer/internal/ag;->AFDateFormat:I

    iget v3, p0, Lcom/appsflyer/internal/ag;->AFDeepLinkManager:I

    if-lt v1, v3, :cond_2

    .line 140
    if-ne v0, p2, :cond_1

    const/4 p3, -0x1

    .line 146
    :cond_0
    :goto_1
    return p3

    .line 140
    :cond_1
    sub-int v0, v2, v0

    sub-int/2addr p3, v0

    goto :goto_1

    .line 143
    :cond_2
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lcom/appsflyer/internal/ag;->$$b:[B

    iget v4, p0, Lcom/appsflyer/internal/ag;->AFDateFormat:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/appsflyer/internal/ag;->AFDateFormat:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v0

    move v0, v1

    goto :goto_0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const-wide/16 v0, 0x0

    .line 154
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 156
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 158
    :cond_0
    return-wide v0
.end method

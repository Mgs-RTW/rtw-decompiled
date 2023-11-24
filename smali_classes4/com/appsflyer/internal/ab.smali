.class public Lcom/appsflyer/internal/ab;
.super Ljava/io/FilterInputStream;
.source ""


# static fields
.field private static final $$a:[I

.field private static final $$b:[I

.field private static final AFDateFormat:[B

.field private static final valueOf:[I

.field private static final values:[I


# instance fields
.field private final AFDeepLinkManager:[[B

.field private final AFEvent:[B

.field private final collectIntentsFromActivities:[I

.field private context:I

.field private final dateFormatUTC:[I

.field private final getDataFormatter:I

.field private final getInstance:[B

.field private getRequestListener:I

.field private urlString:I


# direct methods
.method private $$b()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x10

    .line 189
    iget v0, p0, Lcom/appsflyer/internal/ab;->urlString:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    .line 191
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/ab;->urlString:I

    .line 195
    :cond_0
    iget v0, p0, Lcom/appsflyer/internal/ab;->context:I

    if-ne v0, v1, :cond_5

    .line 198
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->getInstance:[B

    iget v2, p0, Lcom/appsflyer/internal/ab;->urlString:I

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 202
    iget v0, p0, Lcom/appsflyer/internal/ab;->urlString:I

    if-gez v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    const/4 v0, 0x1

    .line 212
    :cond_2
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->getInstance:[B

    rsub-int/lit8 v4, v0, 0x10

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 216
    if-lez v2, :cond_3

    .line 222
    add-int/2addr v0, v2

    .line 225
    if-lt v0, v1, :cond_2

    .line 229
    :cond_3
    if-ge v0, v1, :cond_4

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->getInstance:[B

    iget-object v2, p0, Lcom/appsflyer/internal/ab;->AFEvent:[B

    invoke-direct {p0, v0, v2}, Lcom/appsflyer/internal/ab;->AFDateFormat([B[B)V

    .line 238
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/ab;->urlString:I

    .line 241
    iput v5, p0, Lcom/appsflyer/internal/ab;->context:I

    .line 245
    iget v0, p0, Lcom/appsflyer/internal/ab;->urlString:I

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/appsflyer/internal/ab;->AFEvent:[B

    const/16 v1, 0xf

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    rsub-int/lit8 v0, v0, 0x10

    :goto_0
    iput v0, p0, Lcom/appsflyer/internal/ab;->getRequestListener:I

    .line 250
    :cond_5
    iget v0, p0, Lcom/appsflyer/internal/ab;->getRequestListener:I

    return v0

    :cond_6
    move v0, v1

    .line 245
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/appsflyer/internal/ad;->valueOf:[B

    sput-object v0, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    .line 24
    sget-object v0, Lcom/appsflyer/internal/ad;->$$a:[I

    sput-object v0, Lcom/appsflyer/internal/ab;->$$a:[I

    .line 25
    sget-object v0, Lcom/appsflyer/internal/ad;->AFDateFormat:[I

    sput-object v0, Lcom/appsflyer/internal/ab;->$$b:[I

    .line 26
    sget-object v0, Lcom/appsflyer/internal/ad;->values:[I

    sput-object v0, Lcom/appsflyer/internal/ab;->valueOf:[I

    .line 27
    sget-object v0, Lcom/appsflyer/internal/ad;->getDataFormatter:[I

    sput-object v0, Lcom/appsflyer/internal/ab;->values:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[B[[B)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    .line 38
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->getInstance:[B

    .line 39
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->AFEvent:[B

    .line 41
    const v0, 0x7fffffff

    iput v0, p0, Lcom/appsflyer/internal/ab;->urlString:I

    .line 42
    iput v1, p0, Lcom/appsflyer/internal/ab;->context:I

    .line 43
    iput v1, p0, Lcom/appsflyer/internal/ab;->getRequestListener:I

    .line 62
    iput p2, p0, Lcom/appsflyer/internal/ab;->getDataFormatter:I

    .line 63
    invoke-static {p3, p2}, Lcom/appsflyer/internal/ad;->$$b([BI)[I

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    .line 64
    invoke-static {p4}, Lcom/appsflyer/internal/ab;->valueOf([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    .line 65
    return-void
.end method

.method private AFDateFormat([B[B)V
    .locals 10

    .prologue
    .line 270
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 274
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 278
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    const/4 v1, 0x2

    const/16 v2, 0x8

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    const/16 v3, 0x9

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/16 v3, 0xa

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/16 v3, 0xb

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 282
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    const/4 v1, 0x3

    const/16 v2, 0xc

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/16 v3, 0xe

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/16 v3, 0xf

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 290
    const/4 v1, 0x4

    .line 291
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/appsflyer/internal/ab;->getDataFormatter:I

    if-ge v0, v2, :cond_0

    .line 293
    sget-object v2, Lcom/appsflyer/internal/ab;->$$a:[I

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x18

    aget v2, v2, v3

    sget-object v3, Lcom/appsflyer/internal/ab;->$$b:[I

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    xor-int/2addr v2, v3

    sget-object v3, Lcom/appsflyer/internal/ab;->valueOf:[I

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    xor-int/2addr v2, v3

    sget-object v3, Lcom/appsflyer/internal/ab;->values:[I

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    aget v3, v3, v1

    xor-int/2addr v2, v3

    .line 297
    sget-object v3, Lcom/appsflyer/internal/ab;->$$a:[I

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x18

    aget v3, v3, v4

    sget-object v4, Lcom/appsflyer/internal/ab;->$$b:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v6, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    aget v5, v5, v6

    ushr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Lcom/appsflyer/internal/ab;->valueOf:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v6, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    aget v5, v5, v6

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Lcom/appsflyer/internal/ab;->values:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v6, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    aget v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    xor-int/2addr v3, v4

    .line 301
    sget-object v4, Lcom/appsflyer/internal/ab;->$$a:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v6, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    aget v5, v5, v6

    ushr-int/lit8 v5, v5, 0x18

    aget v4, v4, v5

    sget-object v5, Lcom/appsflyer/internal/ab;->$$b:[I

    iget-object v6, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v7, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    aget v6, v6, v7

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lcom/appsflyer/internal/ab;->valueOf:[I

    iget-object v6, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v7, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    aget v6, v6, v7

    ushr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lcom/appsflyer/internal/ab;->values:[I

    iget-object v6, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v7, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v8, 0x3

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    aget v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    xor-int/2addr v4, v5

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    add-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    xor-int/2addr v4, v5

    .line 305
    sget-object v5, Lcom/appsflyer/internal/ab;->$$a:[I

    iget-object v6, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v7, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    aget v6, v6, v7

    ushr-int/lit8 v6, v6, 0x18

    aget v5, v5, v6

    sget-object v6, Lcom/appsflyer/internal/ab;->$$b:[I

    iget-object v7, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v8, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x3

    aget-byte v8, v8, v9

    aget v7, v7, v8

    ushr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/appsflyer/internal/ab;->valueOf:[I

    iget-object v7, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v8, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x3

    aget-byte v8, v8, v9

    aget v7, v7, v8

    ushr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/appsflyer/internal/ab;->values:[I

    iget-object v7, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v8, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x3

    aget-byte v8, v8, v9

    aget v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    iget-object v6, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    add-int/lit8 v7, v1, 0x3

    aget v6, v6, v7

    xor-int/2addr v5, v6

    .line 309
    iget-object v6, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    const/4 v7, 0x0

    aput v2, v6, v7

    .line 310
    iget-object v2, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    const/4 v6, 0x1

    aput v3, v2, v6

    .line 311
    iget-object v2, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    const/4 v3, 0x2

    aput v4, v2, v3

    .line 312
    iget-object v2, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    const/4 v3, 0x3

    aput v5, v2, v3

    .line 291
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    aget v0, v0, v1

    .line 321
    const/4 v2, 0x0

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x18

    aget-byte v3, v3, v4

    ushr-int/lit8 v4, v0, 0x18

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 322
    const/4 v2, 0x1

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    ushr-int/lit8 v4, v0, 0x10

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 323
    const/4 v2, 0x2

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    ushr-int/lit8 v4, v0, 0x8

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 324
    const/4 v2, 0x3

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    .line 326
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v2

    .line 327
    const/4 v2, 0x4

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x18

    aget-byte v3, v3, v4

    ushr-int/lit8 v4, v0, 0x18

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 328
    const/4 v2, 0x5

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    ushr-int/lit8 v4, v0, 0x10

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 329
    const/4 v2, 0x6

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    ushr-int/lit8 v4, v0, 0x8

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 330
    const/4 v2, 0x7

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    .line 332
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    add-int/lit8 v2, v1, 0x2

    aget v0, v0, v2

    .line 333
    const/16 v2, 0x8

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x18

    aget-byte v3, v3, v4

    ushr-int/lit8 v4, v0, 0x18

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 334
    const/16 v2, 0x9

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    ushr-int/lit8 v4, v0, 0x10

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 335
    const/16 v2, 0xa

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    ushr-int/lit8 v4, v0, 0x8

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 336
    const/16 v2, 0xb

    sget-object v3, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v5, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    .line 338
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->dateFormatUTC:[I

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    .line 339
    const/16 v1, 0xc

    sget-object v2, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x18

    aget-byte v2, v2, v3

    ushr-int/lit8 v3, v0, 0x18

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 340
    const/16 v1, 0xd

    sget-object v2, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    ushr-int/lit8 v3, v0, 0x10

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 341
    const/16 v1, 0xe

    sget-object v2, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    ushr-int/lit8 v3, v0, 0x8

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 342
    const/16 v1, 0xf

    sget-object v2, Lcom/appsflyer/internal/ab;->AFDateFormat:[B

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->collectIntentsFromActivities:[I

    iget-object v4, p0, Lcom/appsflyer/internal/ab;->AFDeepLinkManager:[[B

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    aget v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 343
    return-void
.end method

.method private static valueOf([[B)[[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 170
    array-length v0, p0

    new-array v3, v0, [[B

    move v0, v1

    .line 171
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 173
    aget-object v2, p0, v0

    array-length v2, v2

    new-array v2, v2, [B

    aput-object v2, v3, v0

    move v2, v1

    .line 174
    :goto_1
    aget-object v4, p0, v0

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 176
    aget-object v4, v3, v0

    aget-object v5, p0, v0

    aget-byte v5, v5, v2

    int-to-byte v6, v2

    aput-byte v6, v4, v5

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    return-object v3
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
    .line 130
    invoke-direct {p0}, Lcom/appsflyer/internal/ab;->$$b()I

    .line 131
    iget v0, p0, Lcom/appsflyer/internal/ab;->getRequestListener:I

    iget v1, p0, Lcom/appsflyer/internal/ab;->context:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 139
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    .prologue
    .line 151
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 144
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
    .line 72
    invoke-direct {p0}, Lcom/appsflyer/internal/ab;->$$b()I

    .line 75
    iget v0, p0, Lcom/appsflyer/internal/ab;->context:I

    iget v1, p0, Lcom/appsflyer/internal/ab;->getRequestListener:I

    if-lt v0, v1, :cond_0

    .line 77
    const/4 v0, -0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->AFEvent:[B

    iget v1, p0, Lcom/appsflyer/internal/ab;->context:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appsflyer/internal/ab;->context:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .line 93
    add-int v2, p2, p3

    move v0, p2

    .line 97
    :goto_0
    if-ge v0, v2, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/appsflyer/internal/ab;->$$b()I

    .line 102
    iget v1, p0, Lcom/appsflyer/internal/ab;->context:I

    iget v3, p0, Lcom/appsflyer/internal/ab;->getRequestListener:I

    if-lt v1, v3, :cond_2

    .line 105
    if-ne v0, p2, :cond_1

    const/4 p3, -0x1

    .line 111
    :cond_0
    :goto_1
    return p3

    .line 105
    :cond_1
    sub-int v0, v2, v0

    sub-int/2addr p3, v0

    goto :goto_1

    .line 108
    :cond_2
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->AFEvent:[B

    iget v4, p0, Lcom/appsflyer/internal/ab;->context:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/appsflyer/internal/ab;->context:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v0

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    .line 119
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 121
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 124
    :cond_0
    return-wide v0
.end method

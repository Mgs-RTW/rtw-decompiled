.class public Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# static fields
.field private static final MAX_STACK_SIZE:I = 0x1000


# instance fields
.field public height:I

.field private mBackgroundColorIndex:I

.field private mBlock:[B

.field private mColorTable:[I

.field private mCurrentFrameIndex:I

.field private mDelayTimes:[I

.field private mFrameCount:I

.field private mFrameOffsets:[I

.field private mIsTransparent:Z

.field private mPixelStack:[B

.field private mPixels:[I

.field private mPrefix:[I

.field private mSuffix:[B

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeBitmapData(Ljava/io/InputStream;)V
    .locals 19

    move-object/from16 v0, p0

    .line 143
    invoke-direct/range {p0 .. p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x1

    shl-int v3, v2, v1

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v2

    shl-int v5, v2, v1

    sub-int/2addr v5, v2

    add-int/lit8 v6, v3, 0x2

    move v12, v1

    move v13, v5

    move v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_0
    const/4 v15, -0x1

    .line 155
    :goto_1
    iget-object v2, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixels:[I

    array-length v7, v2

    if-ge v9, v7, :cond_9

    if-nez v10, :cond_8

    if-ge v11, v12, :cond_1

    if-nez v14, :cond_0

    .line 159
    invoke-direct/range {p0 .. p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readBlock(Ljava/io/InputStream;)I

    move-result v14

    if-gtz v14, :cond_0

    goto/16 :goto_4

    .line 164
    :cond_0
    iget-object v2, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mBlock:[B

    add-int/lit8 v7, v14, -0x1

    aget-byte v2, v2, v7

    const/4 v7, -0x1

    add-int/2addr v14, v7

    add-int/lit8 v10, v10, 0x8

    and-int/lit16 v2, v2, 0xff

    rsub-int/lit8 v7, v10, 0x8

    shl-int/2addr v2, v7

    or-int/2addr v11, v2

    goto :goto_1

    :cond_1
    and-int v2, v11, v13

    shr-int/2addr v11, v12

    sub-int/2addr v10, v12

    if-ne v2, v3, :cond_2

    move v12, v1

    move v13, v5

    move v8, v6

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v7, -0x1

    if-ne v15, v7, :cond_4

    .line 181
    iget-object v15, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixelStack:[B

    add-int/lit8 v16, v9, 0x1

    iget-object v7, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mSuffix:[B

    aget-byte v7, v7, v2

    aput-byte v7, v15, v9

    move v15, v2

    move/from16 v9, v16

    goto :goto_1

    :cond_4
    if-lt v2, v8, :cond_5

    .line 186
    iget-object v7, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixelStack:[B

    add-int/lit8 v16, v10, 0x1

    move/from16 v17, v1

    int-to-byte v1, v15

    aput-byte v1, v7, v10

    goto :goto_2

    :cond_5
    move/from16 v17, v1

    move v15, v2

    move/from16 v16, v10

    :goto_2
    if-lt v15, v3, :cond_6

    .line 190
    iget-object v1, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixelStack:[B

    add-int/lit8 v7, v16, 0x1

    iget-object v10, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mSuffix:[B

    aget-byte v10, v10, v15

    aput-byte v10, v1, v16

    .line 191
    iget-object v1, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPrefix:[I

    aget v15, v1, v15

    move/from16 v16, v7

    goto :goto_2

    .line 193
    :cond_6
    iget-object v1, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mSuffix:[B

    aget-byte v7, v1, v15

    and-int/lit16 v15, v7, 0xff

    .line 194
    iget-object v7, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixelStack:[B

    add-int/lit8 v10, v16, 0x1

    move/from16 v18, v3

    int-to-byte v3, v15

    aput-byte v3, v7, v16

    const/16 v7, 0x1000

    if-ge v8, v7, :cond_7

    .line 196
    iget-object v7, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPrefix:[I

    aput v2, v7, v8

    .line 197
    aput-byte v3, v1, v8

    add-int/lit8 v8, v8, 0x1

    and-int v1, v8, v13

    if-nez v1, :cond_7

    const/16 v1, 0x1000

    if-ge v8, v1, :cond_7

    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    shl-int v2, v1, v12

    sub-int/2addr v2, v1

    move v13, v2

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    move/from16 v17, v1

    move/from16 v18, v3

    const/4 v1, 0x1

    add-int/lit8 v3, v9, 0x1

    .line 208
    iget-object v7, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixelStack:[B

    add-int/lit8 v10, v10, -0x1

    aget-byte v7, v7, v10

    and-int/lit16 v7, v7, 0xff

    aput v7, v2, v9

    move v9, v3

    :goto_3
    move/from16 v1, v17

    move/from16 v3, v18

    goto/16 :goto_1

    .line 211
    :cond_9
    :goto_4
    iget-object v1, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixels:[I

    array-length v2, v1

    if-ge v9, v2, :cond_a

    const/4 v2, 0x0

    .line 212
    aput v2, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method private static read(Ljava/io/InputStream;[BII)I
    .locals 0

    .line 304
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private readBlock(Ljava/io/InputStream;)I
    .locals 4

    .line 277
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    move-result v0

    if-gtz v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 283
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mBlock:[B

    sub-int v3, v0, v1

    invoke-static {p1, v2, v1, v3}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private readByte(Ljava/io/InputStream;)I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 267
    invoke-static {p1, v1, v2, v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result p1

    return p1
.end method

.method private readColorTable(Ljava/io/InputStream;[I)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 135
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 136
    array-length v3, v0

    invoke-static {p1, v0, v1, v3}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->read(Ljava/io/InputStream;[BII)I

    const/high16 v3, -0x1000000

    .line 137
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readShortLittleEndian(Ljava/io/InputStream;)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 272
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->read(Ljava/io/InputStream;[BII)I

    const/4 p1, 0x1

    .line 273
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private setPixels([IIIIIII[II[III)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p7

    move/from16 v4, p12

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x8

    :goto_0
    const/4 v12, 0x2

    if-ge v8, v3, :cond_6

    add-int v13, v8, p5

    .line 223
    iget v14, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->height:I

    if-ge v13, v14, :cond_2

    mul-int v13, v13, p3

    add-int v14, v13, p4

    add-int v15, v14, p6

    add-int v13, v13, p3

    if-ge v13, v15, :cond_0

    goto :goto_1

    :cond_0
    move v13, v15

    :goto_1
    mul-int v15, v8, p6

    add-int/2addr v15, v9

    :goto_2
    if-ge v14, v13, :cond_2

    add-int/lit8 v16, v15, 0x1

    .line 232
    aget v15, p8, v15

    and-int/lit16 v15, v15, 0xff

    .line 233
    aget v17, p10, v15

    move/from16 v5, p9

    if-eq v15, v5, :cond_1

    .line 235
    aput v17, v1, v14

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v16

    goto :goto_2

    :cond_2
    move/from16 v5, p9

    if-ne v8, v9, :cond_5

    add-int/2addr v9, v11

    if-lt v9, v3, :cond_5

    if-ne v10, v7, :cond_3

    goto :goto_3

    :cond_3
    const/4 v12, 0x1

    :goto_3
    if-ne v12, v7, :cond_4

    const/16 v9, 0x8

    goto :goto_4

    :cond_4
    const/4 v9, 0x4

    :goto_4
    move v11, v9

    move v10, v12

    const/4 v9, 0x0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    if-ne v4, v7, :cond_7

    .line 249
    iget v5, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mCurrentFrameIndex:I

    if-lez v5, :cond_7

    .line 250
    iget-object v8, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mFrameOffsets:[I

    sub-int/2addr v5, v7

    aget v5, v8, v5

    iget v7, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->height:I

    mul-int v7, v7, p3

    invoke-static {v1, v5, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    if-ne v4, v12, :cond_9

    .line 253
    iget v4, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mBackgroundColorIndex:I

    iget-object v5, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mColorTable:[I

    array-length v7, v5

    if-ge v4, v7, :cond_9

    .line 254
    aget v4, v5, v4

    move v5, v2

    :goto_5
    add-int v7, v2, p6

    if-ge v5, v7, :cond_9

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v3, :cond_8

    mul-int v8, v7, p3

    add-int/2addr v8, v5

    .line 257
    aput v4, v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 262
    :cond_9
    iget-object v1, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mFrameOffsets:[I

    iget v3, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mCurrentFrameIndex:I

    aput v2, v1, v3

    .line 263
    iget-object v1, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mDelayTimes:[I

    aput p11, v1, v3

    return-void
.end method

.method private static skip(Ljava/io/InputStream;I)V
    .locals 6

    :goto_0
    if-lez p1, :cond_1

    int-to-long v0, p1

    .line 313
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    sub-long/2addr v0, v2

    long-to-int p1, v0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method private skipBlock(Ljava/io/InputStream;)V
    .locals 1

    .line 295
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    move-result v0

    if-lez v0, :cond_1

    .line 297
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->skip(Ljava/io/InputStream;I)V

    :cond_1
    if-gtz v0, :cond_0

    return-void
.end method


# virtual methods
.method public getCurrentFrameIndex()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mCurrentFrameIndex:I

    return v0
.end method

.method public getDelay(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 111
    iget v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mFrameCount:I

    if-ge p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mDelayTimes:[I

    aget p1, v0, p1

    mul-int/lit8 p1, p1, 0xa

    return p1

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid frame index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 9

    if-ltz p1, :cond_0

    .line 122
    iget v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mFrameCount:I

    if-ge p1, v0, :cond_0

    .line 125
    iput p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mCurrentFrameIndex:I

    .line 126
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mFrameOffsets:[I

    aget v3, v0, p1

    .line 127
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mDelayTimes:[I

    aget p1, v0, p1

    .line 128
    iget p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->width:I

    iget v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->height:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 129
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixels:[I

    iget v7, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->height:I

    move-object v1, p1

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid frame index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mFrameCount:I

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mIsTransparent:Z

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 21

    move-object/from16 v13, p0

    .line 28
    new-instance v14, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const v0, 0x7fffffff

    .line 29
    invoke-virtual {v14, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 30
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_c

    .line 31
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_c

    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_c

    .line 34
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v0

    iput v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->width:I

    .line 35
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v0

    iput v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->height:I

    .line 36
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    iput-boolean v1, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mIsTransparent:Z

    and-int/lit8 v0, v0, 0x7

    const/16 v17, 0x2

    shl-int v0, v17, v0

    .line 39
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mBackgroundColorIndex:I

    .line 40
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    .line 41
    new-array v0, v0, [I

    iput-object v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mColorTable:[I

    .line 42
    iget-object v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mColorTable:[I

    invoke-direct {v13, v14, v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readColorTable(Ljava/io/InputStream;[I)V

    .line 43
    iget v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->width:I

    iget v1, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixels:[I

    const/16 v0, 0x1000

    new-array v1, v0, [I

    .line 44
    iput-object v1, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPrefix:[I

    new-array v0, v0, [B

    .line 45
    iput-object v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mSuffix:[B

    const/16 v0, 0x1001

    new-array v0, v0, [B

    .line 46
    iput-object v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixelStack:[B

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 47
    iput-object v1, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mFrameOffsets:[I

    new-array v0, v0, [I

    .line 48
    iput-object v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mDelayTimes:[I

    const/4 v12, 0x0

    .line 51
    :goto_1
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 91
    iput v12, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mFrameCount:I

    const/4 v0, -0x1

    .line 92
    iput v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mCurrentFrameIndex:I

    return-void

    :cond_1
    const/16 v1, 0x21

    if-ne v0, v1, :cond_3

    .line 56
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    move-result v0

    const/16 v1, 0xf9

    if-ne v0, v1, :cond_2

    .line 58
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    .line 59
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    .line 60
    iget-object v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mDelayTimes:[I

    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v1

    aput v1, v0, v12

    .line 61
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    goto :goto_1

    .line 63
    :cond_2
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->skipBlock(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_b

    .line 66
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v4

    .line 67
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v5

    .line 68
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v6

    .line 69
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v7

    .line 70
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readByte(Ljava/io/InputStream;)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v0, v0, 0x7

    shl-int v0, v17, v0

    if-eqz v1, :cond_5

    .line 73
    new-array v0, v0, [I

    goto :goto_3

    :cond_5
    iget-object v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mColorTable:[I

    .line 74
    :goto_3
    iget-object v2, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mColorTable:[I

    if-eqz v1, :cond_6

    .line 76
    invoke-direct {v13, v14, v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->readColorTable(Ljava/io/InputStream;[I)V

    move-object v10, v0

    goto :goto_4

    :cond_6
    move-object v10, v2

    .line 79
    :goto_4
    iget-boolean v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mIsTransparent:Z

    if-eqz v0, :cond_7

    iget v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mBackgroundColorIndex:I

    aget v0, v10, v0

    move v9, v0

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    .line 80
    :goto_5
    invoke-direct {v13, v14}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->decodeBitmapData(Ljava/io/InputStream;)V

    .line 81
    iget-object v1, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixels:[I

    if-nez v12, :cond_8

    const/16 v18, 0x0

    goto :goto_6

    .line 82
    :cond_8
    iget-object v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mFrameOffsets:[I

    add-int/lit8 v2, v12, -0x1

    aget v0, v0, v2

    move/from16 v18, v0

    :goto_6
    if-nez v12, :cond_9

    const/4 v11, 0x0

    goto :goto_7

    .line 83
    :cond_9
    iget-object v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mDelayTimes:[I

    add-int/lit8 v2, v12, -0x1

    aget v0, v0, v2

    move v11, v0

    :goto_7
    if-nez v12, :cond_a

    const/16 v19, 0x0

    goto :goto_8

    :cond_a
    const/16 v19, 0x1

    .line 85
    :goto_8
    iget v3, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->width:I

    iget-object v8, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mPixels:[I

    move-object/from16 v0, p0

    move/from16 v2, v18

    move/from16 v20, v12

    move/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->setPixels([IIIIIII[II[III)V

    .line 86
    iget-object v0, v13, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mFrameOffsets:[I

    add-int/lit8 v12, v20, 0x1

    aput v18, v0, v20

    goto/16 :goto_1

    .line 88
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid GIF opcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid GIF header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public setCurrentFrameIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 104
    iget v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mFrameCount:I

    if-ge p1, v0, :cond_0

    .line 107
    iput p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->mCurrentFrameIndex:I

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid frame index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

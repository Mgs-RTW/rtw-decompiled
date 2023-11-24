.class public Lio/netty/buffer/UnpooledHeapByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "UnpooledHeapByteBuf.java"


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private array:[B

.field private tmpNioBuf:Ljava/nio/ByteBuffer;


# direct methods
.method protected constructor <init>(Lio/netty/buffer/ByteBufAllocator;II)V
    .locals 6

    .line 45
    new-array v2, p2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;[BIII)V

    return-void
.end method

.method protected constructor <init>(Lio/netty/buffer/ByteBufAllocator;[BI)V
    .locals 6

    .line 55
    array-length v4, p2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;[BIII)V

    return-void
.end method

.method private constructor <init>(Lio/netty/buffer/ByteBufAllocator;[BIII)V
    .locals 1

    .line 61
    invoke-direct {p0, p5}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 69
    array-length v0, p2

    if-gt v0, p5, :cond_0

    .line 74
    iput-object p1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 75
    invoke-direct {p0, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->setArray([B)V

    .line 76
    invoke-virtual {p0, p3, p4}, Lio/netty/buffer/UnpooledHeapByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x2

    .line 71
    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p4

    const/4 p2, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p2

    const-string p2, "initialCapacity(%d) > maxCapacity(%d)"

    .line 70
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "initialArray"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "alloc"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    if-eqz p4, :cond_0

    .line 204
    invoke-direct {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object p4

    goto :goto_0

    .line 206
    :cond_0
    iget-object p4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 208
    :goto_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object p4

    add-int/2addr p1, p3

    invoke-virtual {p4, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method private internalNioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 433
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    :cond_0
    return-object v0
.end method

.method private setArray([B)V
    .locals 0

    .line 80
    iput-object p1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 1

    .line 292
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected _getInt(I)I
    .locals 3

    .line 327
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 328
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 329
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 330
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method protected _getLong(I)J
    .locals 7

    .line 341
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    .line 342
    iget-object v4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v5, p1, 0x1

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 343
    iget-object v4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v5, p1, 0x2

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 344
    iget-object v4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v5, p1, 0x3

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 345
    iget-object v4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v5, p1, 0x4

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 346
    iget-object v4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v5, p1, 0x5

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 347
    iget-object v4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v5, p1, 0x6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 348
    iget-object v4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 p1, p1, 0x7

    aget-byte p1, v4, p1

    int-to-long v4, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2

    .line 303
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    aget-byte v0, v0, p1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method protected _getUnsignedMedium(I)I
    .locals 3

    .line 314
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 315
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 316
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 p1, p1, 0x2

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method protected _setByte(II)V
    .locals 1

    .line 360
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method protected _setInt(II)V
    .locals 3

    .line 399
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 400
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 401
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 402
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method protected _setLong(IJ)V
    .locals 4

    .line 414
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    const/16 v1, 0x38

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 415
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 416
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 417
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 418
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 419
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 420
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 421
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 p1, p1, 0x7

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method protected _setMedium(II)V
    .locals 3

    .line 385
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 386
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 387
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 p1, p1, 0x2

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method protected _setShort(II)V
    .locals 2

    .line 372
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 373
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 141
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 142
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 101
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 102
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    array-length v0, v0

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 107
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    if-ltz p1, :cond_4

    .line 108
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->maxCapacity()I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 112
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 114
    new-array p1, p1, [B

    .line 115
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    invoke-direct {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->setArray([B)V

    goto :goto_2

    :cond_0
    if-ge p1, v0, :cond_3

    .line 118
    new-array v0, p1, [B

    .line 119
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 121
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->writerIndex()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_1
    move p1, v2

    .line 125
    :goto_0
    iget-object v2, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    sub-int/2addr p1, v1

    invoke-static {v2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 129
    :goto_1
    invoke-direct {p0, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->setArray([B)V

    :cond_3
    :goto_2
    return-object p0

    .line 109
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newCapacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 426
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkIndex(II)V

    .line 427
    new-array v0, p2, [B

    .line 428
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    new-instance p1, Lio/netty/buffer/UnpooledHeapByteBuf;

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p2

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->maxCapacity()I

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;[BI)V

    return-object p1
.end method

.method protected deallocate()V
    .locals 1

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    return-void
.end method

.method public getByte(I)B
    .locals 0

    .line 286
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 287
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getByte(I)B

    move-result p1

    return p1
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result p1

    return p1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 7

    .line 162
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkDstIndex(IIII)V

    .line 163
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    int-to-long p2, p3

    add-long/2addr p2, v2

    int-to-long v5, p4

    move v2, p1

    move-wide v3, p2

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, v0, p2, p4}, Lio/netty/buffer/UnpooledHeapByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    :goto_0
    return-object p0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 190
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 182
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 183
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 175
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkDstIndex(IIII)V

    .line 176
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public getInt(I)I
    .locals 0

    .line 321
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 322
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 335
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 336
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 0

    .line 297
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 298
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getShort(I)S

    move-result p1

    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 0

    .line 308
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 309
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getUnsignedMedium(I)I

    move-result p1

    return p1
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 280
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkIndex(II)V

    .line 281
    invoke-direct {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public memoryAddress()J
    .locals 1

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 270
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public nioBufferCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 275
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    return-object v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 91
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkReadableBytes(I)V

    .line 214
    iget v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lio/netty/buffer/UnpooledHeapByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result p1

    .line 215
    iget p2, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    return p1
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 353
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 354
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setByte(II)V

    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 249
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 256
    :try_start_0
    invoke-direct {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-interface {p2, p1}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 8

    .line 221
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkSrcIndex(IIII)V

    .line 222
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    int-to-long p2, p3

    add-long v2, v0, p2

    iget-object v4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    int-to-long v6, p4

    move v5, p1

    invoke-static/range {v2 .. v7}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, v0, p2, p4}, Lio/netty/buffer/UnpooledHeapByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    :goto_0
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 241
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 242
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 234
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkSrcIndex(IIII)V

    .line 235
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 392
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 393
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setInt(II)V

    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 407
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 408
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setLong(IJ)V

    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 378
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 379
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setMedium(II)V

    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 365
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 366
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setShort(II)V

    return-object p0
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

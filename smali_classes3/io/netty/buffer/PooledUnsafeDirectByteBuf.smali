.class final Lio/netty/buffer/PooledUnsafeDirectByteBuf;
.super Lio/netty/buffer/PooledByteBuf;
.source "PooledUnsafeDirectByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/PooledByteBuf<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final NATIVE_ORDER:Z

.field private static final RECYCLER:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler<",
            "Lio/netty/buffer/PooledUnsafeDirectByteBuf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private memoryAddress:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    .line 35
    new-instance v0, Lio/netty/buffer/PooledUnsafeDirectByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf$1;-><init>()V

    sput-object v0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Handle;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;-><init>(Lio/netty/util/Recycler$Handle;I)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$Handle;ILio/netty/buffer/PooledUnsafeDirectByteBuf;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;-><init>(Lio/netty/util/Recycler$Handle;I)V

    return-void
.end method

.method private addr(I)J
    .locals 4

    .line 382
    iget-wide v0, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->memoryAddress:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p4, :cond_1

    .line 202
    invoke-virtual {p0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object p4

    goto :goto_0

    .line 204
    :cond_1
    iget-object p4, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast p4, Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 206
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->idx(I)I

    move-result p1

    .line 207
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 208
    invoke-interface {p2, p4}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method private getBytes(ILjava/nio/ByteBuffer;Z)V
    .locals 2

    .line 156
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(I)V

    .line 157
    invoke-virtual {p0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p3, :cond_0

    .line 160
    invoke-virtual {p0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    goto :goto_0

    .line 162
    :cond_0
    iget-object p3, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 164
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->idx(I)I

    move-result p1

    .line 165
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private initMemoryAddress()V
    .locals 4

    .line 68
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget v2, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->offset:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->memoryAddress:J

    return-void
.end method

.method static newInstance(I)Lio/netty/buffer/PooledUnsafeDirectByteBuf;
    .locals 2

    .line 43
    sget-object v0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    invoke-virtual {v0}, Lio/netty/util/Recycler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->setRefCnt(I)V

    .line 45
    invoke-virtual {v0, p0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->maxCapacity(I)V

    return-object v0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2

    .line 83
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result p1

    return p1
.end method

.method protected _getInt(I)I
    .locals 2

    .line 102
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getInt(J)I

    move-result p1

    .line 103
    sget-boolean v0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method protected _getLong(I)J
    .locals 2

    .line 108
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getLong(J)J

    move-result-wide v0

    .line 109
    sget-boolean p1, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2

    .line 88
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result p1

    .line 89
    sget-boolean v0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    :goto_0
    return p1
.end method

.method protected _getUnsignedMedium(I)I
    .locals 4

    .line 94
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    .line 95
    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 96
    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p1, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 97
    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method protected _setByte(II)V
    .locals 2

    .line 222
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    return-void
.end method

.method protected _setInt(II)V
    .locals 2

    .line 240
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    sget-boolean p1, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    :goto_0
    invoke-static {v0, v1, p2}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    return-void
.end method

.method protected _setLong(IJ)V
    .locals 2

    .line 245
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    sget-boolean p1, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    :goto_0
    invoke-static {v0, v1, p2, p3}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    return-void
.end method

.method protected _setMedium(II)V
    .locals 4

    .line 232
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    ushr-int/lit8 p1, p2, 0x10

    int-to-byte p1, p1

    .line 233
    invoke-static {v0, v1, p1}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    ushr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    .line 234
    invoke-static {v2, v3, p1}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    int-to-byte p1, p2

    .line 235
    invoke-static {v0, v1, p1}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    return-void
.end method

.method protected _setShort(II)V
    .locals 2

    .line 227
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    sget-boolean p1, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz p1, :cond_0

    int-to-short p1, p2

    goto :goto_0

    :cond_0
    int-to-short p1, p2

    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    :goto_0
    invoke-static {v0, v1, p1}, Lio/netty/util/internal/PlatformDependent;->putShort(JS)V

    return-void
.end method

.method public array()[B
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrayOffset()I
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 8

    .line 319
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 320
    invoke-virtual {p0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->maxCapacity()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 322
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v4

    int-to-long v6, p2

    invoke-static/range {v2 .. v7}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    const/4 p1, 0x0

    .line 324
    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result p1

    return p1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 7

    .line 114
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    if-eqz p2, :cond_4

    if-ltz p3, :cond_3

    .line 118
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_3

    if-eqz p4, :cond_2

    .line 123
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide p1

    int-to-long v3, p3

    add-long/2addr v3, p1

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p1

    add-int v4, p1, p3

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p2, p3, p0, p1, p4}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    :cond_2
    :goto_0
    return-object p0

    .line 119
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "dstIndex: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dst"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    if-eqz p3, :cond_0

    .line 182
    new-array v6, p3, [B

    .line 183
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    const/4 v3, 0x0

    int-to-long v4, p3

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    .line 184
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->getBytes(ILjava/nio/ByteBuffer;Z)V

    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 7

    .line 136
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    if-eqz p2, :cond_2

    if-ltz p3, :cond_1

    .line 140
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_1

    if-eqz p4, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    int-to-long v5, p4

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    :cond_0
    return-object p0

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "dstIndex: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dst"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method init(Lio/netty/buffer/PoolChunk;JIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "Ljava/nio/ByteBuffer;",
            ">;JIII)V"
        }
    .end annotation

    .line 57
    invoke-super/range {p0 .. p6}, Lio/netty/buffer/PooledByteBuf;->init(Lio/netty/buffer/PoolChunk;JIII)V

    .line 58
    invoke-direct {p0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->initMemoryAddress()V

    return-void
.end method

.method initUnpooled(Lio/netty/buffer/PoolChunk;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "Ljava/nio/ByteBuffer;",
            ">;I)V"
        }
    .end annotation

    .line 63
    invoke-super {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;->initUnpooled(Lio/netty/buffer/PoolChunk;I)V

    .line 64
    invoke-direct {p0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->initMemoryAddress()V

    return-void
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 351
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 352
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->idx(I)I

    move-result p1

    .line 353
    invoke-virtual {p0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

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

    const/4 v0, 0x1

    return v0
.end method

.method public memoryAddress()J
    .locals 2

    .line 378
    iget-wide v0, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->memoryAddress:J

    return-wide v0
.end method

.method protected bridge synthetic newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->newInternalNioBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected newInternalNioBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;
    .locals 1

    .line 392
    new-instance v0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;)V

    return-object v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 344
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 345
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->idx(I)I

    move-result p1

    .line 346
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

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

    .line 339
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    return-object v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p2}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkReadableBytes(I)V

    .line 215
    iget v0, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->readerIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result p1

    .line 216
    iget p2, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->readerIndex:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->readerIndex:I

    return p1
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 172
    invoke-virtual {p0, v0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkReadableBytes(I)V

    .line 173
    iget v1, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->readerIndex:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->getBytes(ILjava/nio/ByteBuffer;Z)V

    .line 174
    iget p1, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->readerIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->readerIndex:I

    return-object p0
.end method

.method protected recycler()Lio/netty/util/Recycler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler<",
            "*>;"
        }
    .end annotation

    .line 387
    sget-object v0, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    return-object v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 296
    new-array v0, p3, [B

    .line 297
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_0

    const/4 v1, 0x0

    .line 299
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    :cond_0
    return p2
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 307
    invoke-virtual {p0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 308
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->idx(I)I

    move-result p1

    .line 309
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int/2addr p1, p3

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 311
    :try_start_0
    invoke-interface {p2, v0}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

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

    .line 250
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    if-eqz p2, :cond_4

    if-ltz p3, :cond_3

    .line 254
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_3

    if-eqz p4, :cond_2

    .line 259
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    int-to-long p2, p3

    add-long v2, v0, p2

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v4

    int-to-long v6, p4

    invoke-static/range {v2 .. v7}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p2

    add-int v2, p2, p3

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v3

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p2, p3, p0, p1, p4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    :cond_2
    :goto_0
    return-object p0

    .line 255
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "srcIndex: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "src"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 281
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 282
    invoke-virtual {p0}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 284
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 287
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->idx(I)I

    move-result p1

    .line 288
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 289
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 6

    .line 272
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->checkIndex(II)V

    if-eqz p4, :cond_0

    .line 274
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    int-to-long v4, p4

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    :cond_0
    return-object p0
.end method

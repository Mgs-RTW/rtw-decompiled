.class final Lio/netty/buffer/PooledHeapByteBuf;
.super Lio/netty/buffer/PooledByteBuf;
.source "PooledHeapByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/PooledByteBuf<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler<",
            "Lio/netty/buffer/PooledHeapByteBuf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lio/netty/buffer/PooledHeapByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/PooledHeapByteBuf$1;-><init>()V

    sput-object v0, Lio/netty/buffer/PooledHeapByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Handle;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;-><init>(Lio/netty/util/Recycler$Handle;I)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$Handle;ILio/netty/buffer/PooledHeapByteBuf;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;-><init>(Lio/netty/util/Recycler$Handle;I)V

    return-void
.end method

.method private getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 135
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    if-eqz p4, :cond_0

    .line 138
    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object p4

    goto :goto_0

    .line 140
    :cond_0
    iget-object p4, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast p4, [B

    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 142
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

.method static newInstance(I)Lio/netty/buffer/PooledHeapByteBuf;
    .locals 2

    .line 38
    sget-object v0, Lio/netty/buffer/PooledHeapByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    invoke-virtual {v0}, Lio/netty/util/Recycler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PooledHeapByteBuf;

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lio/netty/buffer/PooledHeapByteBuf;->setRefCnt(I)V

    .line 40
    invoke-virtual {v0, p0}, Lio/netty/buffer/PooledHeapByteBuf;->maxCapacity(I)V

    return-object v0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 1

    .line 55
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    aget-byte p1, v0, p1

    return p1
.end method

.method protected _getInt(I)I
    .locals 3

    .line 74
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 75
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 76
    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method protected _getLong(I)J
    .locals 7

    .line 83
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 84
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    .line 85
    iget-object v4, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v4, [B

    add-int/lit8 v5, p1, 0x1

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 86
    iget-object v4, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v4, [B

    add-int/lit8 v5, p1, 0x2

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 87
    iget-object v4, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v4, [B

    add-int/lit8 v5, p1, 0x3

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 88
    iget-object v4, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v4, [B

    add-int/lit8 v5, p1, 0x4

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 89
    iget-object v4, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v4, [B

    add-int/lit8 v5, p1, 0x5

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 90
    iget-object v4, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v4, [B

    add-int/lit8 v5, p1, 0x6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 91
    iget-object v4, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v4, [B

    add-int/lit8 p1, p1, 0x7

    aget-byte p1, v4, p1

    int-to-long v4, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2

    .line 60
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 61
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method protected _getUnsignedMedium(I)I
    .locals 3

    .line 66
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 67
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 68
    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 69
    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    add-int/lit8 p1, p1, 0x2

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method protected _setByte(II)V
    .locals 1

    .line 155
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method protected _setInt(II)V
    .locals 3

    .line 175
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 176
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 177
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 178
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 179
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method protected _setLong(IJ)V
    .locals 4

    .line 184
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 185
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    const/16 v1, 0x38

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 186
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 187
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 188
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 189
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 190
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 191
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 192
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 p1, p1, 0x7

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method protected _setMedium(II)V
    .locals 3

    .line 167
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 168
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 169
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 170
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 p1, p1, 0x2

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method protected _setShort(II)V
    .locals 2

    .line 160
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 161
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 162
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method public array()[B
    .locals 1

    .line 280
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 285
    iget v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->offset:I

    return v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 242
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 243
    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->maxCapacity()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    invoke-virtual {v0, v1, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

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

    .line 130
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/PooledHeapByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result p1

    return p1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 7

    .line 96
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledHeapByteBuf;->checkDstIndex(IIII)V

    .line 97
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide p1

    int-to-long v3, p3

    add-long/2addr v3, p1

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, v0, p2, p4}, Lio/netty/buffer/PooledHeapByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

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

    .line 123
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 124
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 116
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(I)V

    .line 117
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->capacity()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, v0, v1, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 109
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledHeapByteBuf;->checkDstIndex(IIII)V

    .line 110
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
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

    .line 268
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 269
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 270
    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

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

    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->newInternalNioBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected newInternalNioBuffer([B)Ljava/nio/ByteBuffer;
    .locals 0

    .line 300
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 260
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 261
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 262
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 263
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

    .line 255
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

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

    .line 147
    invoke-virtual {p0, p2}, Lio/netty/buffer/PooledHeapByteBuf;->checkReadableBytes(I)V

    .line 148
    iget v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->readerIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lio/netty/buffer/PooledHeapByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result p1

    .line 149
    iget p2, p0, Lio/netty/buffer/PooledHeapByteBuf;->readerIndex:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/netty/buffer/PooledHeapByteBuf;->readerIndex:I

    return p1
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

    .line 305
    sget-object v0, Lio/netty/buffer/PooledHeapByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    return-object v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 226
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

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

    .line 231
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 232
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

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

    .line 197
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledHeapByteBuf;->checkSrcIndex(IIII)V

    .line 198
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    int-to-long p2, p3

    add-long v2, v0, p2

    iget-object p2, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v5

    int-to-long v6, p4

    invoke-static/range {v2 .. v7}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, v0, p2, p4}, Lio/netty/buffer/PooledHeapByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    invoke-virtual {p2, p3, v0, p1, p4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    :goto_0
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 217
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 218
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 219
    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    invoke-virtual {p2, v1, p1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 210
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledHeapByteBuf;->checkSrcIndex(IIII)V

    .line 211
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

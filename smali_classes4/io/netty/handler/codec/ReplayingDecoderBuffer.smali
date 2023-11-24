.class final Lio/netty/handler/codec/ReplayingDecoderBuffer;
.super Lio/netty/buffer/ByteBuf;
.source "ReplayingDecoderBuffer.java"


# static fields
.field static final EMPTY_BUFFER:Lio/netty/handler/codec/ReplayingDecoderBuffer;

.field private static final REPLAY:Lio/netty/util/Signal;


# instance fields
.field private buffer:Lio/netty/buffer/ByteBuf;

.field private swapped:Lio/netty/buffer/SwappedByteBuf;

.field private terminated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    sget-object v0, Lio/netty/handler/codec/ReplayingDecoder;->REPLAY:Lio/netty/util/Signal;

    sput-object v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    .line 45
    new-instance v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;-><init>(Lio/netty/buffer/ByteBuf;)V

    sput-object v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->EMPTY_BUFFER:Lio/netty/handler/codec/ReplayingDecoderBuffer;

    .line 48
    sget-object v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->EMPTY_BUFFER:Lio/netty/handler/codec/ReplayingDecoderBuffer;

    invoke-virtual {v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminate()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lio/netty/buffer/ByteBuf;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lio/netty/buffer/ByteBuf;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->setCumulation(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method private checkIndex(II)V
    .locals 0

    add-int/2addr p1, p2

    .line 951
    iget-object p2, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p2

    if-gt p1, p2, :cond_0

    return-void

    .line 952
    :cond_0
    sget-object p1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw p1
.end method

.method private checkReadableBytes(I)V
    .locals 1

    .line 957
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    .line 958
    :cond_0
    sget-object p1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw p1
.end method

.method private static reject()V
    .locals 2

    .line 1004
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a replayable operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bytesBefore(B)I
    .locals 1

    .line 323
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->bytesBefore(B)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 325
    :cond_0
    sget-object p1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw p1
.end method

.method public bytesBefore(IB)I
    .locals 1

    .line 332
    iget-object p1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p1

    .line 333
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->bytesBefore(IIB)I

    move-result p1

    return p1
.end method

.method public bytesBefore(IIB)I
    .locals 2

    .line 338
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    if-ge p1, v0, :cond_2

    sub-int v1, v0, p2

    if-gt p1, v1, :cond_0

    .line 344
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->bytesBefore(IIB)I

    move-result p1

    return p1

    .line 347
    :cond_0
    iget-object p2, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v0, p1

    invoke-virtual {p2, p1, v0, p3}, Lio/netty/buffer/ByteBuf;->bytesBefore(IIB)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    .line 349
    :cond_1
    sget-object p1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw p1

    .line 340
    :cond_2
    sget-object p1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw p1
.end method

.method public capacity()I
    .locals 1

    .line 67
    iget-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    return v0

    :cond_0
    const v0, 0x7fffffff

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 76
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public clear()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 122
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public compareTo(Lio/netty/buffer/ByteBuf;)I
    .locals 0

    .line 133
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 p1, 0x0

    return p1
.end method

.method public copy()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 139
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 145
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 146
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 151
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 964
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 169
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public ensureWritable(IZ)I
    .locals 0

    .line 163
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 p1, 0x0

    return p1
.end method

.method public ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 157
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public forEachByte(IILio/netty/buffer/ByteBufProcessor;)I
    .locals 2

    .line 367
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    if-ge p1, v0, :cond_2

    sub-int v1, v0, p2

    if-gt p1, v1, :cond_0

    .line 373
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/buffer/ByteBufProcessor;)I

    move-result p1

    return p1

    .line 376
    :cond_0
    iget-object p2, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v0, p1

    invoke-virtual {p2, p1, v0, p3}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/buffer/ByteBufProcessor;)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    .line 378
    :cond_1
    sget-object p1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw p1

    .line 369
    :cond_2
    sget-object p1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw p1
.end method

.method public forEachByte(Lio/netty/buffer/ByteBufProcessor;)I
    .locals 1

    .line 357
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/buffer/ByteBufProcessor;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 359
    :cond_0
    sget-object p1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw p1
.end method

.method public forEachByteDesc(IILio/netty/buffer/ByteBufProcessor;)I
    .locals 2

    add-int v0, p1, p2

    .line 396
    iget-object v1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(IILio/netty/buffer/ByteBufProcessor;)I

    move-result p1

    return p1

    .line 397
    :cond_0
    sget-object p1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw p1
.end method

.method public forEachByteDesc(Lio/netty/buffer/ByteBufProcessor;)I
    .locals 1

    .line 386
    iget-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(Lio/netty/buffer/ByteBufProcessor;)I

    move-result p1

    return p1

    .line 389
    :cond_0
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 p1, 0x0

    return p1
.end method

.method public getBoolean(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 175
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 176
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getByte(I)B
    .locals 1

    const/4 v0, 0x1

    .line 181
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 182
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p1

    return p1
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 0

    .line 232
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 p1, 0x0

    return p1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 226
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 220
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 213
    invoke-direct {p0, p1, p4}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 214
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 238
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 207
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public getBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 200
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 201
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 193
    invoke-direct {p0, p1, p4}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 194
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public getChar(I)C
    .locals 1

    const/4 v0, 0x2

    .line 286
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 287
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getChar(I)C

    move-result p1

    return p1
.end method

.method public getDouble(I)D
    .locals 2

    const/16 v0, 0x8

    .line 298
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 299
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    const/4 v0, 0x4

    .line 292
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 293
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    const/4 v0, 0x4

    .line 244
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 245
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x8

    .line 256
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 257
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMedium(I)I
    .locals 1

    const/4 v0, 0x3

    .line 262
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 263
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getMedium(I)I

    move-result p1

    return p1
.end method

.method public getShort(I)S
    .locals 1

    const/4 v0, 0x2

    .line 274
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 275
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getUnsignedByte(I)S
    .locals 1

    const/4 v0, 0x1

    .line 187
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 188
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result p1

    return p1
.end method

.method public getUnsignedInt(I)J
    .locals 2

    const/4 v0, 0x4

    .line 250
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 251
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1

    const/4 v0, 0x3

    .line 268
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 269
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result p1

    return p1
.end method

.method public getUnsignedShort(I)I
    .locals 1

    const/4 v0, 0x2

    .line 280
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 281
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result p1

    return p1
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 304
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 v0, 0x0

    return v0
.end method

.method public indexOf(IIB)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 314
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 318
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->indexOf(IIB)I

    move-result p1

    return p1

    .line 315
    :cond_1
    sget-object p1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw p1
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 784
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 785
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public isDirect()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadable()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isReadable(I)Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->isReadable(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public isWritable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWritable(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public markReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 405
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public markWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 411
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public maxCapacity()I
    .locals 1

    .line 82
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public maxWritableBytes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public memoryAddress()J
    .locals 1

    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 760
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 766
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 767
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public nioBufferCount()I
    .locals 1

    .line 755
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    return v0
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    .line 772
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 1

    .line 778
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 779
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;
    .locals 1

    if-eqz p1, :cond_2

    .line 425
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 429
    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->swapped:Lio/netty/buffer/SwappedByteBuf;

    if-nez p1, :cond_1

    .line 431
    new-instance p1, Lio/netty/buffer/SwappedByteBuf;

    invoke-direct {p1, p0}, Lio/netty/buffer/SwappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    iput-object p1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->swapped:Lio/netty/buffer/SwappedByteBuf;

    :cond_1
    return-object p1

    .line 423
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "endianness"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 417
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public readBoolean()Z
    .locals 1

    const/4 v0, 0x1

    .line 457
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 458
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    const/4 v0, 0x1

    .line 463
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 464
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 0

    .line 515
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 p1, 0x0

    return p1
.end method

.method public readBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 521
    invoke-direct {p0, p1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 522
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->readBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 508
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 509
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 502
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 495
    invoke-direct {p0, p3}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 496
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 533
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 489
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public readBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 482
    array-length v0, p1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 483
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 475
    invoke-direct {p0, p3}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 476
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public readChar()C
    .locals 1

    const/4 v0, 0x2

    .line 592
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 593
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    const/16 v0, 0x8

    .line 604
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 605
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    const/4 v0, 0x4

    .line 598
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 599
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readFloat()F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    const/4 v0, 0x4

    .line 550
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 551
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    const/16 v0, 0x8

    .line 562
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 563
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMedium()I
    .locals 1

    const/4 v0, 0x3

    .line 568
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 569
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readMedium()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 1

    const/4 v0, 0x2

    .line 580
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 581
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readShort()S

    move-result v0

    return v0
.end method

.method public readSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 527
    invoke-direct {p0, p1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 528
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public readUnsignedByte()S
    .locals 1

    const/4 v0, 0x1

    .line 469
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 470
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 2

    const/4 v0, 0x4

    .line 556
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 557
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .locals 1

    const/4 v0, 0x3

    .line 574
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 575
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readUnsignedMedium()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1

    const/4 v0, 0x2

    .line 586
    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 587
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public readableBytes()I
    .locals 2

    .line 448
    iget-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    return v0

    :cond_0
    const v0, 0x7fffffff

    .line 451
    iget-object v1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public readerIndex()I
    .locals 1

    .line 539
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    return v0
.end method

.method public readerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 544
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public refCnt()I
    .locals 1

    .line 970
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 987
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 0

    .line 993
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 p1, 0x0

    return p1
.end method

.method public resetReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 610
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public resetWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 616
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public retain()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 975
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public retain(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 981
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(IZ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 622
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 628
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 0

    .line 670
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 p1, 0x0

    return p1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 0

    .line 682
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 p1, 0x0

    return p1
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 664
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 658
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 652
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 646
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 640
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 634
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 718
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method setCumulation(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 730
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 724
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setIndex(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 688
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 694
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 700
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 706
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 712
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 676
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public skipBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 736
    invoke-direct {p0, p1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 737
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public slice()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 743
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 749
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 750
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method terminate()V
    .locals 1

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ridx="

    .line 803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 805
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "widx="

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->writerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 808
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 790
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 791
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 796
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 999
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writableBytes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 833
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeByte(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 839
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 0

    .line 881
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 p1, 0x0

    return p1
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 0

    .line 887
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    const/4 p1, 0x0

    return p1
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 875
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 869
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 863
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 857
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 851
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 845
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 934
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 946
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 940
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 893
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 899
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 905
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 928
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 911
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

.method public writerIndex()I
    .locals 1

    .line 917
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    return v0
.end method

.method public writerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 922
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    return-object p0
.end method

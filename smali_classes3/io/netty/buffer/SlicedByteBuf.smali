.class public Lio/netty/buffer/SlicedByteBuf;
.super Lio/netty/buffer/AbstractDerivedByteBuf;
.source "SlicedByteBuf.java"


# instance fields
.field private final adjustment:I

.field private final buffer:Lio/netty/buffer/ByteBuf;

.field private final length:I


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;II)V
    .locals 2

    .line 40
    invoke-direct {p0, p3}, Lio/netty/buffer/AbstractDerivedByteBuf;-><init>(I)V

    if-ltz p2, :cond_2

    .line 41
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_2

    .line 45
    instance-of v0, p1, Lio/netty/buffer/SlicedByteBuf;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lio/netty/buffer/SlicedByteBuf;

    iget-object v0, p1, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    .line 47
    iget p1, p1, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, p2

    iput p1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    goto :goto_0

    .line 48
    :cond_0
    instance-of v0, p1, Lio/netty/buffer/DuplicatedByteBuf;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    iput-object p1, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    .line 50
    iput p2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    goto :goto_0

    .line 52
    :cond_1
    iput-object p1, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    .line 53
    iput p2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    .line 55
    :goto_0
    iput p3, p0, Lio/netty/buffer/SlicedByteBuf;->length:I

    .line 57
    invoke-virtual {p0, p3}, Lio/netty/buffer/SlicedByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    return-void

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".slice("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2

    .line 117
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p1

    return p1
.end method

.method protected _getInt(I)I
    .locals 2

    .line 132
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result p1

    return p1
.end method

.method protected _getLong(I)J
    .locals 2

    .line 137
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2

    .line 122
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result p1

    return p1
.end method

.method protected _getUnsignedMedium(I)I
    .locals 2

    .line 127
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result p1

    return p1
.end method

.method protected _setByte(II)V
    .locals 2

    .line 185
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method protected _setInt(II)V
    .locals 2

    .line 200
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method protected _setLong(IJ)V
    .locals 2

    .line 205
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method protected _setMedium(II)V
    .locals 2

    .line 195
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method protected _setShort(II)V
    .locals 2

    .line 190
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 97
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 2

    .line 102
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 82
    iget v0, p0, Lio/netty/buffer/SlicedByteBuf;->length:I

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 87
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "sliced buffer"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 149
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 150
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 142
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    iget v2, p0, Lio/netty/buffer/SlicedByteBuf;->length:I

    invoke-virtual {v0, v1, v2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lio/netty/buffer/SlicedByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/SlicedByteBuf;->writerIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public forEachByte(IILio/netty/buffer/ByteBufProcessor;)I
    .locals 2

    .line 279
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/buffer/ByteBufProcessor;)I

    move-result p1

    .line 280
    iget p2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    if-lt p1, p2, :cond_0

    .line 281
    iget p2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    sub-int/2addr p1, p2

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public forEachByteDesc(IILio/netty/buffer/ByteBufProcessor;)I
    .locals 2

    .line 289
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(IILio/netty/buffer/ByteBufProcessor;)I

    move-result p1

    .line 290
    iget p2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    if-lt p1, p2, :cond_0

    .line 291
    iget p2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    sub-int/2addr p1, p2

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 239
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 164
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 165
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 232
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 178
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 179
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 171
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 172
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public hasArray()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 0

    .line 273
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 274
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public isDirect()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v0

    return v0
.end method

.method public memoryAddress()J
    .locals 4

    .line 112
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    iget v2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2

    .line 261
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 262
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public nioBufferCount()I
    .locals 1

    .line 256
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    return v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 2

    .line 267
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 268
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 245
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result p1

    return p1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 251
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 217
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 218
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 224
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 225
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 210
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 211
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 155
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    if-nez p2, :cond_0

    .line 157
    sget-object p1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p1

    .line 159
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

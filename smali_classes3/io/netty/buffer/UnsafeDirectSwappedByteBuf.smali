.class final Lio/netty/buffer/UnsafeDirectSwappedByteBuf;
.super Lio/netty/buffer/SwappedByteBuf;
.source "UnsafeDirectSwappedByteBuf.java"


# static fields
.field private static final NATIVE_ORDER:Z


# instance fields
.field private final nativeByteOrder:Z

.field private final wrapped:Lio/netty/buffer/AbstractByteBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->NATIVE_ORDER:Z

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/AbstractByteBuf;)V
    .locals 4

    .line 32
    invoke-direct {p0, p1}, Lio/netty/buffer/SwappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 33
    iput-object p1, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    .line 34
    sget-boolean p1, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->NATIVE_ORDER:Z

    invoke-virtual {p0}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->nativeByteOrder:Z

    return-void
.end method

.method private _setInt(II)V
    .locals 2

    .line 180
    invoke-direct {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(I)J

    move-result-wide v0

    iget-boolean p1, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->nativeByteOrder:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    :goto_0
    invoke-static {v0, v1, p2}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    return-void
.end method

.method private _setLong(IJ)V
    .locals 2

    .line 184
    invoke-direct {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(I)J

    move-result-wide v0

    iget-boolean p1, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->nativeByteOrder:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    :goto_0
    invoke-static {v0, v1, p2, p3}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    return-void
.end method

.method private _setShort(II)V
    .locals 2

    .line 176
    invoke-direct {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(I)J

    move-result-wide v0

    iget-boolean p1, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->nativeByteOrder:Z

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

.method private addr(I)J
    .locals 4

    .line 42
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/AbstractByteBuf;->memoryAddress()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getChar(I)C
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->getShort(I)S

    move-result p1

    int-to-char p1, p1

    return p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 59
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 2

    .line 74
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 75
    invoke-direct {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getInt(J)I

    move-result p1

    .line 76
    iget-boolean v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 47
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 48
    invoke-direct {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getLong(J)J

    move-result-wide v0

    .line 49
    iget-boolean p1, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->nativeByteOrder:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getShort(I)S
    .locals 2

    .line 86
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 87
    invoke-direct {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result p1

    .line 88
    iget-boolean v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    :goto_0
    return p1
.end method

.method public getUnsignedInt(I)J
    .locals 4

    .line 69
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedShort(I)I
    .locals 1

    .line 81
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 114
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 126
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 120
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 100
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 101
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->_setInt(II)V

    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 107
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->_setLong(IJ)V

    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 93
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 94
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->_setShort(II)V

    return-object p0
.end method

.method public writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 171
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 165
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 141
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 142
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 143
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v0, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->_setInt(II)V

    .line 144
    iget-object p1, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v0, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v0, v1

    iput v0, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    return-object p0
.end method

.method public writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 150
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 151
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 152
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v0, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-direct {p0, v0, p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->_setLong(IJ)V

    .line 153
    iget-object p1, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget p2, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr p2, v1

    iput p2, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    return-object p0
.end method

.method public writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 132
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 133
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 134
    iget-object v0, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v0, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->_setShort(II)V

    .line 135
    iget-object p1, p0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v0, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v0, v1

    iput v0, p1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    return-object p0
.end method

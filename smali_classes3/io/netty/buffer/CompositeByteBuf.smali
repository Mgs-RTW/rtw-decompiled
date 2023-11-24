.class public Lio/netty/buffer/CompositeByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "CompositeByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/CompositeByteBuf$Component;
    }
.end annotation


# static fields
.field private static final FULL_BYTEBUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/buffer/CompositeByteBuf$Component;",
            ">;"
        }
    .end annotation
.end field

.field private final direct:Z

.field private freed:Z

.field private final leak:Lio/netty/util/ResourceLeak;

.field private final maxNumComponents:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 47
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->FULL_BYTEBUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZI)V
    .locals 1

    const v0, 0x7fffffff

    .line 52
    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 56
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 57
    iput-boolean p2, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    .line 58
    iput p3, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    .line 59
    sget-object p1, Lio/netty/buffer/CompositeByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {p1, p0}, Lio/netty/util/ResourceLeakDetector;->open(Ljava/lang/Object;)Lio/netty/util/ResourceLeak;

    move-result-object p1

    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->leak:Lio/netty/util/ResourceLeak;

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "alloc"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZILjava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBufAllocator;",
            "ZI",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 84
    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    .line 93
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 94
    iput-boolean p2, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    .line 95
    iput p3, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    const/4 p1, 0x0

    .line 96
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ILjava/lang/Iterable;)I

    .line 97
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 98
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 99
    sget-object p1, Lio/netty/buffer/CompositeByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {p1, p0}, Lio/netty/util/ResourceLeakDetector;->open(Ljava/lang/Object;)Lio/netty/util/ResourceLeak;

    move-result-object p1

    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->leak:Lio/netty/util/ResourceLeak;

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "maxNumComponents: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (expected: >= 2)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "alloc"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZI[Lio/netty/buffer/ByteBuf;)V
    .locals 1

    const v0, 0x7fffffff

    .line 63
    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    .line 72
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 73
    iput-boolean p2, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    .line 74
    iput p3, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(I[Lio/netty/buffer/ByteBuf;)I

    .line 77
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 78
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 79
    sget-object p1, Lio/netty/buffer/CompositeByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {p1, p0}, Lio/netty/util/ResourceLeakDetector;->open(Ljava/lang/Object;)Lio/netty/util/ResourceLeak;

    move-result-object p1

    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->leak:Lio/netty/util/ResourceLeak;

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "maxNumComponents: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (expected: >= 2)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "alloc"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addComponent0(ILio/netty/buffer/ByteBuf;)I
    .locals 3

    .line 160
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    if-eqz p2, :cond_3

    .line 166
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 172
    :cond_0
    new-instance v1, Lio/netty/buffer/CompositeByteBuf$Component;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-direct {v1, p2}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 173
    iget-object p2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 174
    iget-object p2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    .line 176
    iput v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0

    .line 178
    :cond_1
    iget-object p2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 179
    iget p2, p2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iput p2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 180
    iget p2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    add-int/2addr p2, v0

    iput p2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0

    .line 183
    :cond_2
    iget-object p2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 184
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    :goto_0
    return p1

    .line 163
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addComponents0(ILjava/lang/Iterable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 261
    instance-of v0, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 263
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    move-result p1

    return p1

    .line 266
    :cond_0
    instance-of v0, p2, Ljava/util/Collection;

    if-nez v0, :cond_2

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/buffer/ByteBuf;

    .line 269
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_2
    :goto_1
    check-cast p2, Ljava/util/Collection;

    .line 275
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lio/netty/buffer/ByteBuf;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(I[Lio/netty/buffer/ByteBuf;)I

    move-result p1

    return p1

    .line 258
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffers"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private varargs addComponents0(I[Lio/netty/buffer/ByteBuf;)I
    .locals 6

    .line 205
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    if-eqz p2, :cond_7

    .line 212
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, p2, v2

    if-nez v4, :cond_6

    :goto_1
    if-nez v3, :cond_1

    return p1

    .line 224
    :cond_1
    array-length v5, p2

    :goto_2
    if-lt v1, v5, :cond_2

    goto :goto_3

    :cond_2
    aget-object v0, p2, v1

    if-nez v0, :cond_3

    :goto_3
    return p1

    .line 228
    :cond_3
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 230
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_5

    move p1, v0

    goto :goto_4

    .line 235
    :cond_4
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 216
    :cond_6
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffers"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private allocBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1309
    iget-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    .line 1312
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method private checkComponentIndex(I)V
    .locals 3

    .line 306
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    if-ltz p1, :cond_0

    .line 307
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x2

    .line 309
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "cIndex: %d (expected: >= 0 && <= numComponents(%d))"

    .line 308
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkComponentIndex(II)V
    .locals 3

    .line 315
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    if-ltz p1, :cond_0

    add-int v0, p1, p2

    .line 316
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    .line 318
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    iget-object p2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "cIndex: %d, numComponents: %d (expected: cIndex >= 0 && cIndex + numComponents <= totalNumComponents(%d))"

    .line 317
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private consolidateIfNeeded()V
    .locals 5

    .line 285
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 286
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    if-le v0, v1, :cond_1

    .line 287
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 289
    invoke-direct {p0, v1}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 298
    new-instance v0, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-direct {v0, v1}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 299
    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    iput v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 300
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 301
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    :cond_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 294
    iget-object v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 295
    invoke-virtual {v1, v4}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 296
    invoke-virtual {v3}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private copyTo(IIILio/netty/buffer/ByteBuf;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-gtz p2, :cond_0

    .line 1031
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result p1

    invoke-virtual {p4, p1}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    return-void

    .line 1020
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1021
    iget-object v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1022
    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1023
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v3

    sub-int v1, p1, v1

    sub-int/2addr v3, v1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1024
    invoke-virtual {v2, v1, p4, v0, v3}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v3

    add-int/2addr v0, v3

    sub-int/2addr p2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method private findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 5

    .line 1076
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(I)V

    .line 1078
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1080
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1081
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lt p1, v4, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 1083
    :cond_0
    iget v0, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return-object v3

    .line 1090
    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string v0, "should not reach here"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateComponentOffsets(I)V
    .locals 4

    .line 325
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 332
    iput v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 333
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    iput v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    add-int/lit8 p1, p1, 0x1

    :cond_1
    :goto_0
    if-lt p1, v0, :cond_2

    return-void

    .line 338
    :cond_2
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 339
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 340
    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iput v1, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 341
    iget v1, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    add-int/2addr v1, v3

    iput v1, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2

    .line 600
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 601
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p1

    return p1
.end method

.method protected _getInt(I)I
    .locals 3

    .line 630
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    .line 631
    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 632
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result p1

    return p1

    .line 633
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    .line 634
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result p1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    return p1

    .line 636
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result p1

    and-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method protected _getLong(I)J
    .locals 7

    .line 642
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    .line 643
    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 644
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 645
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    const-wide v3, 0xffffffffL

    if-ne v0, v1, :cond_1

    .line 646
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    return-wide v0

    .line 648
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 3

    .line 606
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    .line 607
    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 608
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result p1

    return p1

    .line 609
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    .line 610
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1

    .line 612
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method protected _getUnsignedMedium(I)I
    .locals 3

    .line 618
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    .line 619
    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 620
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result p1

    return p1

    .line 621
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    .line 622
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1

    .line 624
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method protected _setByte(II)V
    .locals 0

    .line 771
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setByte(II)Lio/netty/buffer/CompositeByteBuf;

    return-void
.end method

.method protected _setInt(II)V
    .locals 3

    .line 819
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    .line 820
    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 821
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 822
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x10

    int-to-short v0, v0

    .line 823
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    add-int/lit8 p1, p1, 0x2

    int-to-short p2, p2

    .line 824
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    goto :goto_0

    :cond_1
    int-to-short v0, p2

    .line 826
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    .line 827
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    :goto_0
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 3

    .line 838
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    .line 839
    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 840
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 841
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    if-ne v0, v1, :cond_1

    ushr-long v0, p2, v2

    long-to-int v0, v0

    .line 842
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    add-int/lit8 p1, p1, 0x4

    long-to-int p2, p2

    .line 843
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    goto :goto_0

    :cond_1
    long-to-int v0, p2

    .line 845
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    add-int/lit8 p1, p1, 0x4

    ushr-long/2addr p2, v2

    long-to-int p2, p2

    .line 846
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    :goto_0
    return-void
.end method

.method protected _setMedium(II)V
    .locals 3

    .line 800
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    .line 801
    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 802
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 803
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    shr-int/lit8 v0, p2, 0x8

    int-to-short v0, v0

    .line 804
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    add-int/lit8 p1, p1, 0x2

    int-to-byte p2, p2

    .line 805
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    :cond_1
    int-to-short v0, p2

    .line 807
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    .line 808
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    :goto_0
    return-void
.end method

.method protected _setShort(II)V
    .locals 3

    .line 781
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    .line 782
    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 783
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 784
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 785
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    .line 786
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    :cond_1
    int-to-byte v0, p2

    .line 788
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 789
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    :goto_0
    return-void
.end method

.method public addComponent(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    .line 155
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    return-object p0
.end method

.method public addComponent(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    .line 112
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    return-object p0
.end method

.method public addComponents(ILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ILjava/lang/Iterable;)I

    .line 252
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    return-object p0
.end method

.method public varargs addComponents(I[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(I[Lio/netty/buffer/ByteBuf;)I

    .line 200
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    return-object p0
.end method

.method public addComponents(Ljava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ILjava/lang/Iterable;)I

    .line 140
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    return-object p0
.end method

.method public varargs addComponents([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 125
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(I[Lio/netty/buffer/ByteBuf;)I

    .line 126
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    return-object p0
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 545
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public array()[B
    .locals 2

    .line 454
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    return-object v0

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 2

    .line 462
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    return v0

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public capacity()I
    .locals 2

    .line 486
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 489
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    return v0
.end method

.method public bridge synthetic capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->capacity(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public capacity(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 7

    .line 494
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    if-ltz p1, :cond_6

    .line 495
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->maxCapacity()I

    move-result v0

    if-gt p1, v0, :cond_6

    .line 499
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 503
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 504
    iget v2, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    if-ge v0, v2, :cond_0

    .line 505
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 506
    invoke-virtual {v0, v1, p1}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 507
    iget-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    goto :goto_2

    .line 509
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 510
    invoke-virtual {v0, v1, p1}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 513
    iget-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    .line 514
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    goto :goto_2

    :cond_1
    if-ge p1, v0, :cond_5

    sub-int/2addr v0, p1

    .line 518
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 519
    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 520
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    if-lt v0, v4, :cond_3

    .line 521
    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    sub-int/2addr v0, v3

    .line 522
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 527
    :cond_3
    new-instance v4, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v6, v3, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    sub-int/2addr v6, v0

    invoke-virtual {v5, v1, v6}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {v4, v0}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 528
    iget v0, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iput v0, v4, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 529
    iget v0, v4, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iget v1, v4, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    add-int/2addr v0, v1

    iput v0, v4, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 530
    invoke-interface {v2, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 534
    :goto_1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 535
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    goto :goto_2

    .line 536
    :cond_4
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v0

    if-le v0, p1, :cond_5

    .line 537
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    :cond_5
    :goto_2
    return-object p0

    .line 496
    :cond_6
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

.method public bridge synthetic clear()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->clear()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 1356
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public component(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1041
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->internalComponent(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public componentAtOffset(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1051
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->internalComponentAtOffset(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public consolidate()Lio/netty/buffer/CompositeByteBuf;
    .locals 6

    .line 1172
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1173
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->numComponents()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    .line 1178
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1179
    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 1180
    invoke-direct {p0, v1}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_1

    .line 1189
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1190
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    new-instance v3, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-direct {v3, v1}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    invoke-direct {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    return-object p0

    .line 1183
    :cond_1
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1184
    iget-object v5, v4, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1185
    invoke-virtual {v1, v5}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 1186
    invoke-virtual {v4}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public consolidate(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 4

    .line 1202
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(II)V

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    return-object p0

    :cond_0
    add-int/2addr p2, p1

    .line 1208
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1209
    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr v0, v1

    .line 1210
    invoke-direct {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move v1, p1

    :goto_0
    if-lt v1, p2, :cond_1

    .line 1219
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1220
    iget-object p2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    new-instance v1, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-direct {v1, v0}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1221
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    return-object p0

    .line 1213
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1214
    iget-object v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1215
    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 1216
    invoke-virtual {v2}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 1007
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1008
    invoke-static {p2}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1010
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->copyTo(IIILio/netty/buffer/ByteBuf;)V

    :cond_0
    return-object v0
.end method

.method protected deallocate()V
    .locals 3

    .line 1581
    iget-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1585
    iput-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    .line 1586
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    .line 1593
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->leak:Lio/netty/util/ResourceLeak;

    if-eqz v0, :cond_1

    .line 1594
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->leak:Lio/netty/util/ResourceLeak;

    invoke-interface {v0}, Lio/netty/util/ResourceLeak;->close()Z

    :cond_1
    return-void

    .line 1590
    :cond_2
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-virtual {v2}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public decompose(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    if-nez p2, :cond_0

    .line 391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v0

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 399
    iget-object v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 400
    iget v2, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 405
    :cond_1
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    if-gt p2, p1, :cond_2

    .line 408
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {v3, p1}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 409
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 418
    iget-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object p1, p1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    if-gtz p2, :cond_1

    :goto_0
    const/4 p1, 0x0

    .line 423
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_3

    return-object v1

    .line 424
    :cond_3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()Lio/netty/buffer/CompositeByteBuf;
    .locals 7

    .line 1265
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1266
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1272
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1273
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 1274
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1277
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1278
    invoke-virtual {p0, v2, v2}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1279
    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    return-object p0

    .line 1274
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1275
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    goto :goto_0

    .line 1284
    :cond_2
    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v3, :cond_4

    .line 1288
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1291
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1292
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v4, v0, v4

    .line 1293
    iget v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    if-ne v4, v5, :cond_3

    .line 1295
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1297
    :cond_3
    new-instance v5, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v6, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    sub-int/2addr v3, v4

    invoke-virtual {v6, v4, v3}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {v5, v3}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 1298
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1302
    :goto_2
    invoke-direct {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    sub-int/2addr v1, v0

    .line 1303
    invoke-virtual {p0, v2, v1}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1304
    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    return-object p0

    .line 1286
    :cond_4
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public discardReadComponents()Lio/netty/buffer/CompositeByteBuf;
    .locals 6

    .line 1229
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1230
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1236
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1237
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 1238
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1241
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1242
    invoke-virtual {p0, v2, v2}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1243
    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    return-object p0

    .line 1238
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1239
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    goto :goto_0

    .line 1248
    :cond_2
    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v3, :cond_3

    .line 1252
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1255
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1256
    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1257
    invoke-direct {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    sub-int/2addr v0, v3

    sub-int/2addr v1, v3

    .line 1258
    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1259
    invoke-virtual {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    return-object p0

    .line 1250
    :cond_3
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public bridge synthetic discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 1576
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardReadComponents()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1381
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public getByte(I)B
    .locals 0

    .line 595
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p1

    return p1
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 730
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 732
    :cond_0
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    const p1, 0x7fffffff

    return p1

    :cond_1
    long-to-int p1, p1

    return p1
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1386
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1391
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 4

    .line 705
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkDstIndex(IIII)V

    if-nez p4, :cond_0

    return-object p0

    .line 710
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v0

    :goto_0
    if-gtz p4, :cond_1

    return-object p0

    .line 712
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 713
    iget-object v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 714
    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 715
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v3

    sub-int v1, p1, v1

    sub-int/2addr v3, v1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 716
    invoke-virtual {v2, v1, p2, p3, v3}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    if-nez p3, :cond_0

    return-object p0

    .line 748
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v0

    :goto_0
    if-gtz p3, :cond_1

    return-object p0

    .line 750
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 751
    iget-object v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 752
    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 753
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v3

    sub-int v1, p1, v1

    sub-int/2addr v3, v1

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 754
    invoke-virtual {v2, v1, p2, v3}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v3

    sub-int/2addr p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 7

    .line 676
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 677
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 679
    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    if-nez v1, :cond_0

    return-object p0

    .line 684
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    :goto_0
    if-gtz v1, :cond_1

    .line 698
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0

    .line 687
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 688
    iget-object v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 689
    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 690
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    sub-int v3, p1, v3

    sub-int/2addr v5, v3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 691
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 692
    invoke-virtual {v4, v3, p2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v5

    sub-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 698
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 699
    throw p1
.end method

.method public getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1396
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 4

    .line 654
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkDstIndex(IIII)V

    if-nez p4, :cond_0

    return-object p0

    .line 659
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v0

    :goto_0
    if-gtz p4, :cond_1

    return-object p0

    .line 661
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 662
    iget-object v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 663
    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 664
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v3

    sub-int v1, p1, v1

    sub-int/2addr v3, v1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 665
    invoke-virtual {v2, v1, p2, p3, v3}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasArray()Z
    .locals 3

    .line 446
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 447
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public hasMemoryAddress()Z
    .locals 3

    .line 470
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 471
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public internalComponent(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1061
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 1062
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object p1, p1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    return-object p1
.end method

.method public internalComponentAtOffset(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1072
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object p1

    iget-object p1, p1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    return-object p1
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1110
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1111
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 1113
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isDirect()Z
    .locals 4

    .line 432
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 437
    :cond_1
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 379
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 380
    iget-object v2, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic markReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->markReaderIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public markReaderIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 1361
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic markWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->markWriterIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public markWriterIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 1371
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->markWriterIndex()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public maxNumComponents()I
    .locals 1

    .line 564
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    return v0
.end method

.method public memoryAddress()J
    .locals 2

    .line 478
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 479
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    return-wide v0

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1118
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1119
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1120
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1121
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 1124
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1125
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1128
    :goto_0
    array-length p2, p1

    if-lt v1, p2, :cond_1

    .line 1132
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0

    .line 1129
    :cond_1
    aget-object p2, p1, v1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public nioBufferCount()I
    .locals 4

    .line 1095
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1096
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    return v0

    .line 1099
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return v1

    .line 1101
    :cond_1
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1102
    iget-object v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 1571
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 6

    .line 1138
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    if-nez p2, :cond_0

    .line 1140
    sget-object p1, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTE_BUFFERS:[Ljava/nio/ByteBuffer;

    return-object p1

    .line 1143
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1144
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v1

    :goto_0
    if-gtz p2, :cond_1

    .line 1165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/ByteBuffer;

    return-object p1

    .line 1146
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1147
    iget-object v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1148
    iget v2, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1149
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v4

    sub-int v2, p1, v2

    sub-int/2addr v4, v2

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1150
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1157
    invoke-virtual {v3, v2, v4}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 1154
    :pswitch_0
    invoke-virtual {v3, v2, v4}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1152
    :pswitch_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :goto_1
    add-int/2addr p1, v4

    sub-int/2addr p2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public numComponents()I
    .locals 1

    .line 557
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 550
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->readBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1441
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1446
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1451
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1471
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1466
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public readBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1456
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public readBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1461
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic readerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public readerIndex(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1341
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public removeComponent(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 351
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 352
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    .line 353
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    return-object p0
.end method

.method public removeComponents(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    .line 364
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(II)V

    .line 366
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/2addr p2, p1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 367
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 372
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    return-object p0

    .line 367
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 368
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    goto :goto_0
.end method

.method public bridge synthetic resetReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->resetReaderIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public resetReaderIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 1366
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic resetWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->resetWriterIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public resetWriterIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 1376
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->resetWriterIndex()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 1566
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public retain(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1561
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBoolean(IZ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBoolean(IZ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(IZ)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1401
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBoolean(IZ)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setByte(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setByte(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    .line 764
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 765
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    if-nez p3, :cond_0

    .line 927
    sget-object p1, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1

    .line 930
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v0

    const/4 v1, 0x0

    .line 934
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 935
    iget-object v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 936
    iget v2, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 937
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v4

    sub-int v2, p1, v2

    sub-int/2addr v4, v2

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 938
    invoke-virtual {v3, v2, p2, v4}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result v2

    if-gez v2, :cond_2

    if-nez v1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_2
    if-ne v2, v4, :cond_3

    add-int/2addr p1, v4

    sub-int/2addr p3, v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    :goto_0
    if-gtz p3, :cond_1

    :cond_4
    return v1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 964
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    if-nez p3, :cond_0

    .line 966
    sget-object p1, Lio/netty/buffer/CompositeByteBuf;->FULL_BYTEBUFFER:Ljava/nio/ByteBuffer;

    invoke-interface {p2, p1}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 969
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v0

    const/4 v1, 0x0

    .line 972
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 973
    iget-object v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 974
    iget v2, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 975
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v4

    sub-int v2, p1, v2

    sub-int/2addr v4, v2

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 976
    invoke-virtual {v3, v2, p2, v4}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-gez v2, :cond_3

    if-nez v1, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_3
    if-ne v2, v4, :cond_4

    add-int/2addr p1, v4

    sub-int/2addr p3, v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    :goto_0
    if-gtz p3, :cond_1

    :cond_5
    :goto_1
    return v1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1421
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1426
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 4

    .line 903
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkSrcIndex(IIII)V

    if-nez p4, :cond_0

    return-object p0

    .line 908
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v0

    :goto_0
    if-gtz p4, :cond_1

    return-object p0

    .line 910
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 911
    iget-object v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 912
    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 913
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v3

    sub-int v1, p1, v1

    sub-int/2addr v3, v1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 914
    invoke-virtual {v2, v1, p2, p3, v3}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 7

    .line 874
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 875
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 877
    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    if-nez v1, :cond_0

    return-object p0

    .line 882
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    :goto_0
    if-gtz v1, :cond_1

    .line 896
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0

    .line 885
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 886
    iget-object v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 887
    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 888
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    sub-int v3, p1, v3

    sub-int/2addr v5, v3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 889
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 890
    invoke-virtual {v4, v3, p2}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v5

    sub-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 896
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 897
    throw p1
.end method

.method public setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1431
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBytes(I[B)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 4

    .line 852
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkSrcIndex(IIII)V

    if-nez p4, :cond_0

    return-object p0

    .line 857
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v0

    :goto_0
    if-gtz p4, :cond_1

    return-object p0

    .line 859
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 860
    iget-object v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 861
    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 862
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v3

    sub-int v1, p1, v1

    sub-int/2addr v3, v1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 863
    invoke-virtual {v2, v1, p2, p3, v3}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setChar(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setChar(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1406
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setChar(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setDouble(ID)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setDouble(ID)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1416
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setDouble(ID)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setFloat(IF)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setFloat(IF)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1411
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setFloat(IF)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic setIndex(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setIndex(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1351
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setInt(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setInt(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 814
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setLong(IJ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setLong(IJ)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 833
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setMedium(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setMedium(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 795
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setShort(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setShort(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 776
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setZero(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setZero(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1436
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setZero(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic skipBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->skipBytes(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public skipBytes(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1476
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public toByteIndex(I)I
    .locals 1

    .line 589
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 590
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf$Component;

    iget p1, p1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    return p1
.end method

.method public toComponentIndex(I)I
    .locals 5

    .line 571
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(I)V

    .line 573
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 575
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 576
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lt p1, v4, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 578
    :cond_0
    iget v0, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    .line 585
    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string v0, "should not reach here"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1317
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1318
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", components="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic writeBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1481
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBoolean(Z)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic writeByte(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeByte(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeByte(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1486
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1526
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1531
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1536
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1551
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public writeBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1541
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1546
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeChar(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeChar(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1511
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeChar(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeDouble(D)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeDouble(D)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1521
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeDouble(D)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeFloat(F)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeFloat(F)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1516
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeFloat(F)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeInt(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1501
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeLong(J)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1506
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic writeMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeMedium(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeMedium(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1496
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeShort(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1491
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeZero(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeZero(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1556
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeZero(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

.method public bridge synthetic writerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writerIndex(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1346
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    return-object p1
.end method

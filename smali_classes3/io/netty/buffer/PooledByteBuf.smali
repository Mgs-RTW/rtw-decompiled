.class abstract Lio/netty/buffer/PooledByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "PooledByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/buffer/AbstractReferenceCountedByteBuf;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected handle:J

.field protected length:I

.field maxLength:I

.field protected memory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected offset:I

.field private final recyclerHandle:Lio/netty/util/Recycler$Handle;

.field private tmpNioBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lio/netty/util/Recycler$Handle;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 39
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->recyclerHandle:Lio/netty/util/Recycler$Handle;

    return-void
.end method

.method private recycle()V
    .locals 2

    .line 149
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->recyclerHandle:Lio/netty/util/Recycler$Handle;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->recycler()Lio/netty/util/Recycler;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lio/netty/util/Recycler;->recycle(Ljava/lang/Object;Lio/netty/util/Recycler$Handle;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    return-object v0
.end method

.method public final capacity()I
    .locals 1

    .line 70
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    return v0
.end method

.method public final capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 75
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->ensureAccessible()V

    .line 78
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-boolean v0, v0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 79
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-ne p1, v0, :cond_3

    return-object p0

    .line 83
    :cond_0
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-le p1, v0, :cond_1

    .line 84
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    if-gt p1, v0, :cond_3

    .line 85
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    return-object p0

    .line 88
    :cond_1
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-ge p1, v0, :cond_4

    .line 89
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    ushr-int/2addr v0, v1

    if-le p1, v0, :cond_3

    .line 90
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    const/16 v2, 0x200

    if-gt v0, v2, :cond_2

    .line 91
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    add-int/lit8 v0, v0, -0x10

    if-le p1, v0, :cond_3

    .line 92
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 93
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->readerIndex()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->writerIndex()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/PooledByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    return-object p0

    .line 97
    :cond_2
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 98
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->readerIndex()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->writerIndex()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/PooledByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    return-object p0

    .line 108
    :cond_3
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v0, p0, p1, v1}, Lio/netty/buffer/PoolArena;->reallocate(Lio/netty/buffer/PooledByteBuf;IZ)V

    return-object p0

    :cond_4
    return-object p0
.end method

.method protected final deallocate()V
    .locals 5

    .line 139
    iget-wide v0, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 140
    iget-wide v0, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    const-wide/16 v2, -0x1

    .line 141
    iput-wide v2, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    const/4 v2, 0x0

    .line 142
    iput-object v2, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v2, v2, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v3, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget v4, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    invoke-virtual {v2, v3, v0, v1, v4}, Lio/netty/buffer/PoolArena;->free(Lio/netty/buffer/PoolChunk;JI)V

    .line 144
    invoke-direct {p0}, Lio/netty/buffer/PooledByteBuf;->recycle()V

    :cond_0
    return-void
.end method

.method protected final idx(I)I
    .locals 1

    .line 158
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method init(Lio/netty/buffer/PoolChunk;JIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;JIII)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    .line 47
    iput-wide p2, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 48
    iget-object p1, p1, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 49
    iput p4, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    .line 50
    iput p5, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 51
    iput p6, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/PooledByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    return-void
.end method

.method initUnpooled(Lio/netty/buffer/PoolChunk;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;I)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 61
    iget-object p1, p1, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    .line 63
    iput p2, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    iput p2, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 64
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/PooledByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected final internalNioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 128
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/netty/buffer/PooledByteBuf;->newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    :cond_0
    return-object v0
.end method

.method protected abstract newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .line 119
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected abstract recycler()Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler<",
            "*>;"
        }
    .end annotation
.end method

.method public final unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

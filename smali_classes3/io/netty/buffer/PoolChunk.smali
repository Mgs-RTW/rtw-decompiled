.class final Lio/netty/buffer/PoolChunk;
.super Ljava/lang/Object;
.source "PoolChunk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final arena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final chunkSize:I

.field private final depthMap:[B

.field private freeBytes:I

.field private final log2ChunkSize:I

.field private final maxOrder:I

.field private final maxSubpageAllocs:I

.field final memory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final memoryMap:[B

.field next:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pageShifts:I

.field private final pageSize:I

.field parent:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field prev:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final subpageOverflowMask:I

.field private final subpages:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field

.field final unpooled:Z

.field private final unusable:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;TT;I)V"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    .line 169
    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    .line 170
    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    .line 172
    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    .line 173
    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    const/4 p1, 0x0

    .line 174
    iput p1, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    .line 175
    iput p1, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    .line 176
    iput p1, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    .line 177
    iput p1, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    .line 178
    iget p2, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    add-int/2addr p2, v0

    int-to-byte p2, p2

    iput-byte p2, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    .line 179
    iput p3, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    .line 180
    iget p2, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    invoke-static {p2}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result p2

    iput p2, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    .line 181
    iput p1, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;TT;IIII)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    .line 135
    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    .line 136
    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    .line 137
    iput p3, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    .line 138
    iput p5, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    .line 139
    iput p4, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    .line 140
    iput p6, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    add-int/lit8 p1, p4, 0x1

    int-to-byte p1, p1

    .line 141
    iput-byte p1, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    .line 142
    invoke-static {p6}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result p1

    iput p1, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    const/4 p1, 0x1

    sub-int/2addr p3, p1

    xor-int/lit8 p2, p3, -0x1

    .line 143
    iput p2, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    .line 144
    iput p6, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    shl-int p2, p1, p4

    .line 147
    iput p2, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    .line 150
    iget p2, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    shl-int/2addr p2, p1

    new-array p2, p2, [B

    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    .line 151
    iget-object p2, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    array-length p2, p2

    new-array p2, p2, [B

    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    const/4 p2, 0x0

    const/4 p3, 0x1

    :goto_0
    if-le p2, p4, :cond_0

    .line 163
    iget p1, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->newSubpageArray(I)[Lio/netty/buffer/PoolSubpage;

    move-result-object p1

    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    return-void

    :cond_0
    shl-int p5, p1, p2

    move p6, p3

    const/4 p3, 0x0

    :goto_1
    if-lt p3, p5, :cond_1

    add-int/lit8 p2, p2, 0x1

    move p3, p6

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    int-to-byte v2, p2

    aput-byte v2, v1, p6

    .line 158
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    aput-byte v2, v1, p6

    add-int/lit8 p6, p6, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private allocateNode(I)I
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    neg-int v1, v1

    .line 265
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v2

    if-le v2, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    :goto_0
    if-lt v2, p1, :cond_1

    and-int v2, v0, v1

    if-eqz v2, :cond_1

    .line 277
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    .line 280
    iget-byte p1, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    .line 281
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->updateParentsAlloc(I)V

    return v0

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 271
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v2

    if-le v2, p1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    .line 274
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v2

    goto :goto_0
.end method

.method private allocateRun(I)J
    .locals 2

    .line 292
    iget v0, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    invoke-static {p1}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result p1

    iget v1, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    sub-int/2addr p1, v1

    sub-int/2addr v0, p1

    .line 293
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->allocateNode(I)I

    move-result p1

    if-gez p1, :cond_0

    int-to-long v0, p1

    return-wide v0

    .line 297
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    int-to-long v0, p1

    return-wide v0
.end method

.method private allocateSubpage(I)J
    .locals 9

    .line 309
    iget v0, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    .line 310
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->allocateNode(I)I

    move-result v3

    if-gez v3, :cond_0

    int-to-long v0, v3

    return-wide v0

    .line 315
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    .line 316
    iget v5, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    .line 318
    iget v1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    sub-int/2addr v1, v5

    iput v1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 320
    invoke-direct {p0, v3}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v7

    .line 321
    aget-object v1, v0, v7

    if-nez v1, :cond_1

    .line 323
    new-instance v8, Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, v3}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v4

    move-object v1, v8

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/buffer/PoolSubpage;-><init>(Lio/netty/buffer/PoolChunk;IIII)V

    .line 324
    aput-object v8, v0, v7

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v1, p1}, Lio/netty/buffer/PoolSubpage;->init(I)V

    .line 328
    :goto_0
    invoke-virtual {v1}, Lio/netty/buffer/PoolSubpage;->allocate()J

    move-result-wide v0

    return-wide v0
.end method

.method private depth(I)B
    .locals 1

    .line 394
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method private initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;JII)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;JII)V"
        }
    .end annotation

    long-to-int v0, p2

    .line 376
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v2

    aget-object v1, v1, v2

    .line 382
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v0

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr p4, v2

    iget v2, v1, Lio/netty/buffer/PoolSubpage;->elemSize:I

    mul-int p4, p4, v2

    add-int v6, v0, p4

    iget v8, v1, Lio/netty/buffer/PoolSubpage;->elemSize:I

    move-object v2, p1

    move-object v3, p0

    move-wide v4, p2

    move v7, p5

    .line 380
    invoke-virtual/range {v2 .. v8}, Lio/netty/buffer/PooledByteBuf;->init(Lio/netty/buffer/PoolChunk;JIII)V

    return-void
.end method

.method private static log2(I)I
    .locals 0

    .line 399
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private newSubpageArray(I)[Lio/netty/buffer/PoolSubpage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    .line 186
    new-array p1, p1, [Lio/netty/buffer/PoolSubpage;

    return-object p1
.end method

.method private runLength(I)I
    .locals 1

    .line 404
    iget v0, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    shl-int/2addr p1, v0

    return p1
.end method

.method private runOffset(I)I
    .locals 2

    .line 409
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    xor-int/2addr v0, p1

    .line 410
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result p1

    mul-int v0, v0, p1

    return v0
.end method

.method private setValue(IB)V
    .locals 1

    .line 390
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method private subpageIdx(I)I
    .locals 1

    .line 414
    iget v0, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    xor-int/2addr p1, v0

    return p1
.end method

.method private updateParentsAlloc(I)V
    .locals 2

    :goto_0
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 221
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v1

    xor-int/lit8 p1, p1, 0x1

    .line 222
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result p1

    if-ge v1, p1, :cond_1

    move p1, v1

    .line 224
    :cond_1
    invoke-direct {p0, v0, p1}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    move p1, v0

    goto :goto_0
.end method

.method private updateParentsFree(I)V
    .locals 4

    .line 237
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p1, v1, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 v2, p1, 0x1

    .line 240
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v3

    xor-int/lit8 p1, p1, 0x1

    .line 241
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result p1

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_1

    if-ne p1, v0, :cond_1

    add-int/lit8 p1, v0, -0x1

    int-to-byte p1, p1

    .line 245
    invoke-direct {p0, v2, p1}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    goto :goto_1

    :cond_1
    if-ge v3, p1, :cond_2

    move p1, v3

    .line 248
    :cond_2
    invoke-direct {p0, v2, p1}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    :goto_1
    move p1, v2

    goto :goto_0
.end method

.method private value(I)B
    .locals 1

    .line 386
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    aget-byte p1, v0, p1

    return p1
.end method


# virtual methods
.method allocate(I)J
    .locals 2

    .line 203
    iget v0, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->allocateRun(I)J

    move-result-wide v0

    return-wide v0

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->allocateSubpage(I)J

    move-result-wide v0

    return-wide v0
.end method

.method free(J)V
    .locals 2

    long-to-int v0, p1

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p1, p1

    if-eqz p1, :cond_0

    .line 344
    iget-object p2, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v1

    aget-object p2, p2, v1

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr p1, v1

    .line 346
    invoke-virtual {p2, p1}, Lio/netty/buffer/PoolSubpage;->free(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 350
    :cond_0
    iget p1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 351
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result p1

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    .line 352
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->updateParentsFree(I)V

    return-void
.end method

.method initBuf(Lio/netty/buffer/PooledByteBuf;JI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;JI)V"
        }
    .end annotation

    long-to-int v0, p2

    const/16 v1, 0x20

    ushr-long v4, p2, v1

    long-to-int v4, v4

    if-nez v4, :cond_0

    .line 359
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    .line 361
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v4

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v6

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/netty/buffer/PooledByteBuf;->init(Lio/netty/buffer/PoolChunk;JIII)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    .line 363
    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;JII)V

    :goto_0
    return-void
.end method

.method initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;JI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;JI)V"
        }
    .end annotation

    const/16 v0, 0x20

    ushr-long v0, p2, v0

    long-to-int v6, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v7, p4

    .line 368
    invoke-direct/range {v2 .. v7}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;JII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chunk("

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0}, Lio/netty/buffer/PoolChunk;->usage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%, "

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget v1, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    iget v2, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    iget v1, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method usage()I
    .locals 6

    .line 190
    iget v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    const/16 v1, 0x64

    if-nez v0, :cond_0

    return v1

    :cond_0
    int-to-long v2, v0

    const-wide/16 v4, 0x64

    mul-long v2, v2, v4

    .line 195
    iget v0, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    if-nez v0, :cond_1

    const/16 v0, 0x63

    return v0

    :cond_1
    sub-int/2addr v1, v0

    return v1
.end method

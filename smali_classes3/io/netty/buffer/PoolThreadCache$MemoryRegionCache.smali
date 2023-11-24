.class abstract Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MemoryRegionCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<",
            "TT;>;"
        }
    .end annotation
.end field

.field private entriesInUse:I

.field private head:I

.field private maxEntriesInUse:I

.field private final maxUnusedCached:I

.field private tail:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    invoke-static {p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->powerOfTwo(I)I

    move-result v0

    new-array v0, v0, [Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    const/4 v0, 0x0

    .line 352
    :goto_0
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 355
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxUnusedCached:I

    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    new-instance v2, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;-><init>(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->trim()V

    return-void
.end method

.method private static freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;)Z
    .locals 5

    .line 456
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 461
    :cond_0
    iget-object v1, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v2, v0, Lio/netty/buffer/PoolChunk;->parent:Lio/netty/buffer/PoolChunkList;

    iget-wide v3, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    invoke-virtual {v2, v0, v3, v4}, Lio/netty/buffer/PoolChunkList;->free(Lio/netty/buffer/PoolChunk;J)V

    .line 461
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 461
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private nextIdx(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 477
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method private static powerOfTwo(I)I
    .locals 1

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private size()I
    .locals 2

    .line 472
    iget v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->tail:I

    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method private trim()V
    .locals 3

    .line 436
    invoke-direct {p0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->size()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxEntriesInUse:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 437
    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    .line 438
    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxEntriesInUse:I

    .line 440
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxUnusedCached:I

    if-gt v0, v1, :cond_0

    return-void

    .line 444
    :cond_0
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    :goto_0
    if-gtz v0, :cond_1

    return-void

    .line 446
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    aget-object v2, v2, v1

    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 450
    :cond_2
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->nextIdx(I)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lio/netty/buffer/PoolChunk;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;J)Z"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->tail:I

    aget-object v0, v0, v1

    .line 383
    iget-object v1, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 387
    :cond_0
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    .line 389
    iput-object p1, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 390
    iput-wide p2, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    .line 391
    iget p1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->tail:I

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->nextIdx(I)I

    move-result p1

    iput p1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->tail:I

    return v2
.end method

.method public allocate(Lio/netty/buffer/PooledByteBuf;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    aget-object v0, v0, v1

    .line 400
    iget-object v1, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 404
    :cond_0
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    .line 405
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxEntriesInUse:I

    iget v3, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    if-ge v1, v3, :cond_1

    .line 406
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxEntriesInUse:I

    .line 408
    :cond_1
    iget-object v4, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    iget-wide v5, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->initBuf(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PooledByteBuf;I)V

    const/4 p1, 0x0

    .line 410
    iput-object p1, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 411
    iget p1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->nextIdx(I)I

    move-result p1

    iput p1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    return v2
.end method

.method public free()I
    .locals 3

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    .line 421
    iput v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxEntriesInUse:I

    .line 422
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    .line 423
    :goto_0
    iget-object v2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    aget-object v2, v2, v1

    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 422
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->nextIdx(I)I

    move-result v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected abstract initBuf(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PooledByteBuf;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;J",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation
.end method

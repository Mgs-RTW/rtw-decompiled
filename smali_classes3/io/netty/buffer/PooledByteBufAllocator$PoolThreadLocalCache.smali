.class final Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "PooledByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PooledByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PoolThreadLocalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Lio/netty/buffer/PoolThreadCache;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lio/netty/buffer/PooledByteBufAllocator;


# direct methods
.method constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    .line 285
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/netty/buffer/PoolThreadCache;
    .locals 11

    .line 289
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 293
    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v1}, Lio/netty/buffer/PooledByteBufAllocator;->access$0(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v1}, Lio/netty/buffer/PooledByteBufAllocator;->access$0(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v1

    iget-object v3, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v3}, Lio/netty/buffer/PooledByteBufAllocator;->access$0(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v3

    array-length v3, v3

    rem-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget-object v1, v1, v3

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 299
    :goto_0
    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v1}, Lio/netty/buffer/PooledByteBufAllocator;->access$1(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v1}, Lio/netty/buffer/PooledByteBufAllocator;->access$1(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v1

    iget-object v2, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v2}, Lio/netty/buffer/PooledByteBufAllocator;->access$1(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    aget-object v2, v1, v0

    :cond_1
    move-object v5, v2

    .line 305
    new-instance v0, Lio/netty/buffer/PoolThreadCache;

    .line 306
    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v1}, Lio/netty/buffer/PooledByteBufAllocator;->access$2(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v6

    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v1}, Lio/netty/buffer/PooledByteBufAllocator;->access$3(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v7

    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v1}, Lio/netty/buffer/PooledByteBufAllocator;->access$4(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v8

    .line 307
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$5()I

    move-result v9

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$6()I

    move-result v10

    move-object v3, v0

    .line 305
    invoke-direct/range {v3 .. v10}, Lio/netty/buffer/PoolThreadCache;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolArena;IIIII)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->initialValue()Lio/netty/buffer/PoolThreadCache;

    move-result-object v0

    return-object v0
.end method

.method protected onRemoval(Lio/netty/buffer/PoolThreadCache;)V
    .locals 0

    .line 312
    invoke-virtual {p1}, Lio/netty/buffer/PoolThreadCache;->free()V

    return-void
.end method

.method protected bridge synthetic onRemoval(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/netty/buffer/PoolThreadCache;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->onRemoval(Lio/netty/buffer/PoolThreadCache;)V

    return-void
.end method

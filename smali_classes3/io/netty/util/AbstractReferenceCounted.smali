.class public abstract Lio/netty/util/AbstractReferenceCounted;
.super Ljava/lang/Object;
.source "AbstractReferenceCounted.java"

# interfaces
.implements Lio/netty/util/ReferenceCounted;


# static fields
.field private static final refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/util/AbstractReferenceCounted;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile refCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lio/netty/util/AbstractReferenceCounted;

    const-string v1, "refCnt"

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->newAtomicIntegerFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    const-class v0, Lio/netty/util/AbstractReferenceCounted;

    const-string v1, "refCnt"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 35
    :cond_0
    sput-object v0, Lio/netty/util/AbstractReferenceCounted;->refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lio/netty/util/AbstractReferenceCounted;->refCnt:I

    return-void
.end method


# virtual methods
.method protected abstract deallocate()V
.end method

.method public final refCnt()I
    .locals 1

    .line 42
    iget v0, p0, Lio/netty/util/AbstractReferenceCounted;->refCnt:I

    return v0
.end method

.method public final release()Z
    .locals 4

    .line 93
    :cond_0
    iget v0, p0, Lio/netty/util/AbstractReferenceCounted;->refCnt:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 98
    sget-object v2, Lio/netty/util/AbstractReferenceCounted;->refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 100
    invoke-virtual {p0}, Lio/netty/util/AbstractReferenceCounted;->deallocate()V

    return v2

    :cond_1
    return v1

    .line 95
    :cond_2
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v0
.end method

.method public final release(I)Z
    .locals 3

    if-lez p1, :cond_3

    .line 115
    :cond_0
    iget v0, p0, Lio/netty/util/AbstractReferenceCounted;->refCnt:I

    if-lt v0, p1, :cond_2

    .line 120
    sget-object v1, Lio/netty/util/AbstractReferenceCounted;->refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    sub-int v2, v0, p1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_1

    .line 122
    invoke-virtual {p0}, Lio/netty/util/AbstractReferenceCounted;->deallocate()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 117
    :cond_2
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    neg-int p1, p1

    invoke-direct {v1, v0, p1}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v1

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decrement: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: > 0)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retain()Lio/netty/util/ReferenceCounted;
    .locals 3

    .line 55
    :cond_0
    iget v0, p0, Lio/netty/util/AbstractReferenceCounted;->refCnt:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_1

    .line 62
    sget-object v1, Lio/netty/util/AbstractReferenceCounted;->refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 60
    :cond_1
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v0, v2, v1}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v0

    .line 57
    :cond_2
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v0
.end method

.method public retain(I)Lio/netty/util/ReferenceCounted;
    .locals 3

    if-lez p1, :cond_3

    .line 76
    :cond_0
    iget v0, p0, Lio/netty/util/AbstractReferenceCounted;->refCnt:I

    if-eqz v0, :cond_2

    const v1, 0x7fffffff

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    .line 83
    sget-object v1, Lio/netty/util/AbstractReferenceCounted;->refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int v2, v0, p1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 81
    :cond_1
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v1, v0, p1}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v1

    .line 78
    :cond_2
    new-instance p1, Lio/netty/util/IllegalReferenceCountException;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw p1

    .line 72
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "increment: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: > 0)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final setRefCnt(I)V
    .locals 0

    .line 49
    iput p1, p0, Lio/netty/util/AbstractReferenceCounted;->refCnt:I

    return-void
.end method

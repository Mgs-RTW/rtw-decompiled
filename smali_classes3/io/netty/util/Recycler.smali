.class public abstract Lio/netty/util/Recycler;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/Recycler$DefaultHandle;,
        Lio/netty/util/Recycler$Handle;,
        Lio/netty/util/Recycler$Stack;,
        Lio/netty/util/Recycler$WeakOrderQueue;
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


# static fields
.field private static final DEFAULT_MAX_CAPACITY:I

.field private static final DELAYED_RECYCLED:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Ljava/util/Map<",
            "Lio/netty/util/Recycler$Stack<",
            "*>;",
            "Lio/netty/util/Recycler$WeakOrderQueue;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final INITIAL_CAPACITY:I

.field private static final OWN_THREAD_ID:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final maxCapacity:I

.field private final threadLocal:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Lio/netty/util/Recycler$Stack<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    const-class v0, Lio/netty/util/Recycler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lio/netty/util/Recycler;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    sget-object v0, Lio/netty/util/Recycler;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    sput v0, Lio/netty/util/Recycler;->OWN_THREAD_ID:I

    const-string v0, "io.netty.recycler.maxCapacity.default"

    const/4 v1, 0x0

    .line 48
    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x40000

    .line 54
    :cond_0
    sput v0, Lio/netty/util/Recycler;->DEFAULT_MAX_CAPACITY:I

    .line 55
    sget-object v0, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "-Dio.netty.recycler.maxCapacity.default: {}"

    sget v2, Lio/netty/util/Recycler;->DEFAULT_MAX_CAPACITY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_1
    sget v0, Lio/netty/util/Recycler;->DEFAULT_MAX_CAPACITY:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lio/netty/util/Recycler;->INITIAL_CAPACITY:I

    .line 135
    new-instance v0, Lio/netty/util/Recycler$2;

    invoke-direct {v0}, Lio/netty/util/Recycler$2;-><init>()V

    .line 134
    sput-object v0, Lio/netty/util/Recycler;->DELAYED_RECYCLED:Lio/netty/util/concurrent/FastThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 71
    sget v0, Lio/netty/util/Recycler;->DEFAULT_MAX_CAPACITY:I

    invoke-direct {p0, v0}, Lio/netty/util/Recycler;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lio/netty/util/Recycler$1;

    invoke-direct {v0, p0}, Lio/netty/util/Recycler$1;-><init>(Lio/netty/util/Recycler;)V

    iput-object v0, p0, Lio/netty/util/Recycler;->threadLocal:Lio/netty/util/concurrent/FastThreadLocal;

    const/4 v0, 0x0

    .line 75
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/netty/util/Recycler;->maxCapacity:I

    return-void
.end method

.method static synthetic access$0(Lio/netty/util/Recycler;)I
    .locals 0

    .line 62
    iget p0, p0, Lio/netty/util/Recycler;->maxCapacity:I

    return p0
.end method

.method static synthetic access$1()Lio/netty/util/concurrent/FastThreadLocal;
    .locals 1

    .line 134
    sget-object v0, Lio/netty/util/Recycler;->DELAYED_RECYCLED:Lio/netty/util/concurrent/FastThreadLocal;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 39
    sget-object v0, Lio/netty/util/Recycler;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3()I
    .locals 1

    .line 42
    sget v0, Lio/netty/util/Recycler;->INITIAL_CAPACITY:I

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .line 40
    sget v0, Lio/netty/util/Recycler;->OWN_THREAD_ID:I

    return v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/netty/util/Recycler;->threadLocal:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/Recycler$Stack;

    .line 81
    invoke-virtual {v0}, Lio/netty/util/Recycler$Stack;->pop()Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {v0}, Lio/netty/util/Recycler$Stack;->newHandle()Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v1

    .line 84
    invoke-virtual {p0, v1}, Lio/netty/util/Recycler;->newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lio/netty/util/Recycler$DefaultHandle;->access$5(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Object;)V

    .line 86
    :cond_0
    invoke-static {v1}, Lio/netty/util/Recycler$DefaultHandle;->access$6(Lio/netty/util/Recycler$DefaultHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Handle;",
            ")TT;"
        }
    .end annotation
.end method

.method public final recycle(Ljava/lang/Object;Lio/netty/util/Recycler$Handle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/netty/util/Recycler$Handle;",
            ")Z"
        }
    .end annotation

    .line 90
    check-cast p2, Lio/netty/util/Recycler$DefaultHandle;

    .line 91
    invoke-static {p2}, Lio/netty/util/Recycler$DefaultHandle;->access$7(Lio/netty/util/Recycler$DefaultHandle;)Lio/netty/util/Recycler$Stack;

    move-result-object v0

    iget-object v0, v0, Lio/netty/util/Recycler$Stack;->parent:Lio/netty/util/Recycler;

    if-eq v0, p0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_0
    invoke-static {p2}, Lio/netty/util/Recycler$DefaultHandle;->access$6(Lio/netty/util/Recycler$DefaultHandle;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 97
    invoke-virtual {p2}, Lio/netty/util/Recycler$DefaultHandle;->recycle()V

    const/4 p1, 0x1

    return p1

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "o does not belong to handle"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

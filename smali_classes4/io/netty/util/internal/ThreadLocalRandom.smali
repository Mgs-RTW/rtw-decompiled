.class public final Lio/netty/util/internal/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# static fields
.field private static final addend:J = 0xbL

.field private static volatile initialSeedUniquifier:J = 0x0L

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static final seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z

.field private pad0:J

.field private pad1:J

.field private pad2:J

.field private pad3:J

.field private pad4:J

.field private pad5:J

.field private pad6:J

.field private pad7:J

.field private rnd:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lio/netty/util/internal/ThreadLocalRandom;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lio/netty/util/internal/ThreadLocalRandom;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 205
    invoke-static {}, Lio/netty/util/internal/ThreadLocalRandom;->newSeed()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->initialized:Z

    return-void
.end method

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 61
    sget-object v0, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static current()Lio/netty/util/internal/ThreadLocalRandom;
    .locals 1

    .line 215
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->random()Lio/netty/util/internal/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInitialSeedUniquifier()J
    .locals 16

    const-class v0, Lio/netty/util/internal/ThreadLocalRandom;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-wide v1, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "io.netty.initialSeedUniquifier"

    .line 78
    invoke-static {v1, v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    :cond_0
    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 86
    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 87
    new-instance v6, Lio/netty/util/internal/ThreadLocalRandom$1;

    const-string v7, "initialSeedUniquifierGenerator"

    invoke-direct {v6, v7, v5}, Lio/netty/util/internal/ThreadLocalRandom$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v7, 0x1

    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 95
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 96
    new-instance v8, Lio/netty/util/internal/ThreadLocalRandom$2;

    invoke-direct {v8}, Lio/netty/util/internal/ThreadLocalRandom$2;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x3

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v13

    const/4 v10, 0x0

    add-long/2addr v8, v13

    .line 108
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    const/4 v10, 0x0

    sub-long v13, v8, v13

    const/4 v10, 0x0

    cmp-long v15, v13, v3

    if-gtz v15, :cond_2

    .line 110
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 111
    sget-object v3, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Failed to generate a seed from SecureRandom within {} seconds. Not enough entrophy?"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    :cond_2
    :try_start_1
    sget-object v15, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v13, v14, v15}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    if-eqz v13, :cond_1

    .line 121
    aget-byte v3, v13, v10

    int-to-long v3, v3

    const-wide/16 v8, 0xff

    and-long/2addr v3, v8

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    aget-byte v5, v13, v7

    int-to-long v11, v5

    and-long/2addr v11, v8

    const/16 v5, 0x30

    shl-long/2addr v11, v5

    or-long/2addr v3, v11

    const/4 v5, 0x2

    aget-byte v5, v13, v5

    int-to-long v11, v5

    and-long/2addr v11, v8

    const/16 v5, 0x28

    shl-long/2addr v11, v5

    or-long/2addr v3, v11

    const/4 v5, 0x3

    aget-byte v5, v13, v5

    int-to-long v11, v5

    and-long/2addr v11, v8

    const/16 v5, 0x20

    shl-long/2addr v11, v5

    or-long/2addr v3, v11

    const/4 v5, 0x4

    aget-byte v5, v13, v5

    int-to-long v11, v5

    and-long/2addr v11, v8

    const/16 v5, 0x18

    shl-long/2addr v11, v5

    or-long/2addr v3, v11

    const/4 v5, 0x5

    aget-byte v5, v13, v5

    int-to-long v11, v5

    and-long/2addr v11, v8

    const/16 v5, 0x10

    shl-long/2addr v11, v5

    or-long/2addr v3, v11

    const/4 v5, 0x6

    aget-byte v5, v13, v5

    int-to-long v11, v5

    and-long/2addr v11, v8

    const/16 v5, 0x8

    shl-long/2addr v11, v5

    or-long/2addr v3, v11

    const/4 v5, 0x7

    aget-byte v5, v13, v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v1, v5

    and-long/2addr v1, v8

    or-long/2addr v1, v3

    goto :goto_0

    .line 134
    :catch_0
    :try_start_2
    sget-object v3, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Failed to generate a seed from SecureRandom due to an InterruptedException."

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    const/4 v10, 0x1

    :goto_0
    const-wide v3, 0x3255ecdc33bae119L    # 3.253008663204319E-66

    xor-long/2addr v1, v3

    .line 141
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v3

    xor-long/2addr v1, v3

    .line 143
    sput-wide v1, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    if-eqz v10, :cond_3

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 151
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :cond_3
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 74
    monitor-exit v0

    throw v1
.end method

.method private static newSeed()J
    .locals 12

    .line 159
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 161
    :cond_0
    sget-object v2, Lio/netty/util/internal/ThreadLocalRandom;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    move-wide v6, v2

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {}, Lio/netty/util/internal/ThreadLocalRandom;->getInitialSeedUniquifier()J

    move-result-wide v6

    :goto_0
    const-wide v8, 0x285d320ad33fdb5L

    mul-long v8, v8, v6

    .line 167
    sget-object v10, Lio/netty/util/internal/ThreadLocalRandom;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10, v2, v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v10

    if-eqz v10, :cond_0

    cmp-long v10, v2, v4

    if-nez v10, :cond_2

    .line 168
    sget-object v2, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    sget-object v2, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.initialSeedUniquifier: 0x%016x (took %d ms)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 173
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    xor-long/2addr v0, v8

    return-wide v0
.end method

.method public static setInitialSeedUniquifier(J)V
    .locals 0

    .line 70
    sput-wide p0, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 4

    .line 232
    iget-wide v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->rnd:J

    const-wide v2, 0x5deece66dL

    mul-long v0, v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->rnd:J

    .line 233
    iget-wide v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->rnd:J

    rsub-int/lit8 p1, p1, 0x30

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public nextDouble(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lio/netty/util/internal/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    mul-double v0, v0, p1

    return-wide v0

    .line 313
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextDouble(DD)D
    .locals 2

    cmpl-double v0, p1, p3

    if-gez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lio/netty/util/internal/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    sub-double/2addr p3, p1

    mul-double v0, v0, p3

    add-double/2addr v0, p1

    return-wide v0

    .line 330
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public nextInt(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    sub-int/2addr p2, p1

    .line 250
    invoke-virtual {p0, p2}, Lio/netty/util/internal/ThreadLocalRandom;->nextInt(I)I

    move-result p2

    add-int/2addr p2, p1

    return p2

    .line 248
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public nextLong(J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    :goto_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    const/4 v2, 0x2

    .line 274
    invoke-virtual {p0, v2}, Lio/netty/util/internal/ThreadLocalRandom;->next(I)I

    move-result v2

    const/4 v3, 0x1

    ushr-long v3, p1, v3

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    sub-long v3, p1, v3

    :goto_1
    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    sub-long/2addr p1, v3

    add-long/2addr v0, p1

    :cond_1
    move-wide p1, v3

    goto :goto_0

    :cond_2
    long-to-int p1, p1

    .line 282
    invoke-virtual {p0, p1}, Lio/netty/util/internal/ThreadLocalRandom;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0

    .line 264
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextLong(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    sub-long/2addr p3, p1

    .line 299
    invoke-virtual {p0, p3, p4}, Lio/netty/util/internal/ThreadLocalRandom;->nextLong(J)J

    move-result-wide p3

    add-long/2addr p3, p1

    return-wide p3

    .line 297
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSeed(J)V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->initialized:Z

    if-nez v0, :cond_0

    const-wide v0, 0x5deece66dL

    xor-long/2addr p1, v0

    const-wide v0, 0xffffffffffffL

    and-long/2addr p1, v0

    .line 228
    iput-wide p1, p0, Lio/netty/util/internal/ThreadLocalRandom;->rnd:J

    return-void

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

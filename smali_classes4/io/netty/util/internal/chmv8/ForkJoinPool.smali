.class public Lio/netty/util/internal/chmv8/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;,
        Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;,
        Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;,
        Lio/netty/util/internal/chmv8/ForkJoinPool$EmptyTask;,
        Lio/netty/util/internal/chmv8/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final AC_MASK:J = -0x1000000000000L

.field private static final AC_SHIFT:I = 0x30

.field private static final AC_UNIT:J = 0x1000000000000L

.field private static final ASHIFT:I

.field private static final CTL:J

.field private static final EC_SHIFT:I = 0x10

.field private static final EVENMASK:I = 0xfffe

.field private static final E_MASK:I = 0x7fffffff

.field private static final E_SEQ:I = 0x10000

.field private static final FAST_IDLE_TIMEOUT:J = 0xbebc200L

.field static final FIFO_QUEUE:I = 0x1

.field private static final IDLE_TIMEOUT:J = 0x77359400L

.field private static final INDEXSEED:J

.field private static final INT_SIGN:I = -0x80000000

.field static final LIFO_QUEUE:I = 0x0

.field private static final MAX_CAP:I = 0x7fff

.field private static final MAX_HELP:I = 0x40

.field private static final PARKBLOCKER:J

.field private static final PLOCK:J

.field private static final PL_LOCK:I = 0x2

.field private static final PL_SIGNAL:I = 0x1

.field private static final PL_SPINS:I = 0x100

.field private static final QBASE:J

.field private static final QLOCK:J

.field private static final SEED_INCREMENT:I = 0x61c88647

.field static final SHARED_QUEUE:I = -0x1

.field private static final SHORT_SIGN:I = 0x8000

.field private static final SHUTDOWN:I = -0x80000000

.field private static final SMASK:I = 0xffff

.field private static final SQMASK:I = 0x7e

.field private static final STEALCOUNT:J

.field private static final STOP_BIT:J = 0x80000000L

.field private static final ST_SHIFT:I = 0x1f

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field private static final TIMEOUT_SLOP:J = 0x1e8480L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UAC_MASK:I = -0x10000

.field private static final UAC_SHIFT:I = 0x10

.field private static final UAC_UNIT:I = 0x10000

.field private static final UTC_MASK:I = 0xffff

.field private static final UTC_SHIFT:I = 0x0

.field private static final UTC_UNIT:I = 0x1

.field static final common:Lio/netty/util/internal/chmv8/ForkJoinPool;

.field static final commonParallelism:I

.field public static final defaultForkJoinWorkerThreadFactory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field private static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I

.field static final submitters:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile ctl:J

.field final factory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field volatile indexSeed:I

.field final mode:S

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad10:Ljava/lang/Object;

.field volatile pad11:Ljava/lang/Object;

.field volatile pad12:Ljava/lang/Object;

.field volatile pad13:Ljava/lang/Object;

.field volatile pad14:Ljava/lang/Object;

.field volatile pad15:Ljava/lang/Object;

.field volatile pad16:Ljava/lang/Object;

.field volatile pad17:Ljava/lang/Object;

.field volatile pad18:Ljava/lang/Object;

.field volatile pad19:Ljava/lang/Object;

.field volatile pad1a:Ljava/lang/Object;

.field volatile pad1b:Ljava/lang/Object;

.field final parallelism:S

.field volatile plock:I

.field volatile stealCount:J

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3254
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3255
    const-class v0, Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 3256
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v2, "ctl"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    .line 3258
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v2, "stealCount"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->STEALCOUNT:J

    .line 3260
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v2, "plock"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    .line 3262
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v2, "indexSeed"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->INDEXSEED:J

    .line 3264
    const-class v0, Ljava/lang/Thread;

    .line 3265
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v2, "parkBlocker"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->PARKBLOCKER:J

    .line 3267
    const-class v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .line 3268
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v2, "base"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->QBASE:J

    .line 3270
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v2, "qlock"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->QLOCK:J

    .line 3272
    const-class v0, [Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 3273
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    .line 3274
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 3277
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    sput v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3282
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    .line 3283
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    invoke-direct {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    sput-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3285
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    .line 3287
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinPool$1;

    invoke-direct {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinPool;

    sput-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 3290
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    iget-short v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3291
    :goto_0
    sput v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->commonParallelism:I

    return-void

    .line 3276
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "data type scale not a power of two"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 3279
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 4

    .line 2396
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;-><init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2415
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lio/netty/util/internal/chmv8/ForkJoinPool;-><init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    return-void
.end method

.method private constructor <init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V
    .locals 2

    .line 2476
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2477
    iput-object p5, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2478
    iput-object p2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->factory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2479
    iput-object p3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    int-to-short p2, p4

    .line 2480
    iput-short p2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->mode:S

    int-to-short p2, p1

    .line 2481
    iput-short p2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    neg-int p1, p1

    int-to-long p1, p1

    const/16 p3, 0x30

    shl-long p3, p1, p3

    const-wide/high16 v0, -0x1000000000000L

    and-long/2addr p3, v0

    const/16 p5, 0x20

    shl-long/2addr p1, p5

    const-wide v0, 0xffff00000000L

    and-long/2addr p1, v0

    or-long/2addr p1, p3

    .line 2483
    iput-wide p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    return-void
.end method

.method public constructor <init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 6

    .line 2446
    invoke-static {p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->checkParallelism(I)I

    move-result v1

    invoke-static {p2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->checkFactory(Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;)Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ForkJoinPool-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->nextPoolId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-worker-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/util/internal/chmv8/ForkJoinPool;-><init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    .line 2451
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->checkPermission()V

    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .line 150
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lio/netty/util/internal/chmv8/ForkJoinPool;
    .locals 1

    .line 150
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->makeCommonPool()Lio/netty/util/internal/chmv8/ForkJoinPool;

    move-result-object v0

    return-object v0
.end method

.method private acquirePlock()I
    .locals 9

    const/16 v0, 0x100

    .line 1277
    :cond_0
    :goto_0
    iget v7, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    and-int/lit8 v1, v7, 0x2

    if-nez v1, :cond_1

    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v8, v7, 0x2

    move-object v2, p0

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    return v8

    :cond_1
    if-ltz v0, :cond_2

    .line 1281
    invoke-static {}, Lio/netty/util/internal/ThreadLocalRandom;->current()Lio/netty/util/internal/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/util/internal/ThreadLocalRandom;->nextInt()I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1284
    :cond_2
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    or-int/lit8 v6, v7, 0x1

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    monitor-enter p0

    .line 1286
    :try_start_0
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 1288
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1291
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1297
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1298
    :catch_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private final awaitWork(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;JI)I
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v4, p2

    move/from16 v0, p4

    .line 1744
    iget v10, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    if-ltz v10, :cond_a

    iget v1, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    if-ne v1, v0, :cond_a

    iget-wide v1, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v3, v1, v4

    if-nez v3, :cond_a

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_a

    long-to-int v1, v4

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    long-to-int v3, v6

    shr-int/lit8 v6, v3, 0x10

    .line 1748
    iget-short v7, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v6, v7

    if-ltz v1, :cond_9

    const/4 v7, 0x0

    if-gtz v6, :cond_0

    .line 1750
    invoke-direct {v8, v7, v7}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v12

    if-eqz v12, :cond_0

    goto/16 :goto_4

    .line 1752
    :cond_0
    iget v12, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    if-eqz v12, :cond_2

    .line 1754
    iput v7, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1755
    :cond_1
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->STEALCOUNT:J

    iget-wide v4, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->stealCount:J

    int-to-long v6, v12

    add-long/2addr v6, v4

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_2
    const-wide/16 v12, 0x0

    if-gtz v6, :cond_4

    const/high16 v6, -0x80000000

    or-int/2addr v1, v6

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 1759
    :cond_3
    iget v1, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    const v6, 0x7fffffff

    and-int/2addr v1, v6

    int-to-long v14, v1

    const/high16 v1, 0x10000

    add-int/2addr v1, v3

    int-to-long v7, v1

    shl-long v1, v7, v2

    or-long/2addr v1, v14

    move-wide v6, v1

    goto :goto_1

    :cond_4
    :goto_0
    move-wide v6, v12

    :goto_1
    cmp-long v1, v6, v12

    if-eqz v1, :cond_6

    int-to-short v1, v3

    neg-int v1, v1

    if-gez v1, :cond_5

    const-wide/32 v1, 0xbebc200

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    const-wide/32 v14, 0x77359400

    mul-long v1, v1, v14

    .line 1766
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    add-long/2addr v14, v1

    const-wide/32 v16, 0x1e8480

    sub-long v14, v14, v16

    goto :goto_3

    :cond_6
    move-wide v1, v12

    move-wide v14, v1

    .line 1770
    :goto_3
    iget v3, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    if-ne v3, v0, :cond_8

    move-object/from16 v8, p0

    iget-wide v11, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v3, v11, v4

    if-nez v3, :cond_a

    .line 1771
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 1772
    sget-object v11, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->PARKBLOCKER:J

    invoke-virtual {v11, v3, v12, v13, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1773
    iput-object v3, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1774
    iget v11, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    if-ne v11, v0, :cond_7

    iget-wide v11, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v0, v11, v4

    if-nez v0, :cond_7

    .line 1775
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v1, v2}, Lsun/misc/Unsafe;->park(ZJ)V

    :cond_7
    const/4 v0, 0x0

    .line 1776
    iput-object v0, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1777
    sget-object v11, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->PARKBLOCKER:J

    invoke-virtual {v11, v3, v12, v13, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v11, 0x0

    cmp-long v0, v1, v11

    if-eqz v0, :cond_a

    .line 1778
    iget-wide v0, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v14, v0

    cmp-long v0, v14, v11

    if-gtz v0, :cond_a

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    .line 1781
    iput v0, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_6

    :cond_8
    move-object/from16 v8, p0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v0, -0x1

    .line 1751
    iput v0, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_6

    :cond_a
    :goto_5
    move v0, v10

    :goto_6
    return v0
.end method

.method private static checkFactory(Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;)Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    .line 2463
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private static checkParallelism(I)I
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_0

    return p0

    .line 2456
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static checkPermission()V
    .locals 2

    .line 534
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method public static commonPool()Lio/netty/util/internal/chmv8/ForkJoinPool;
    .locals 1

    .line 2501
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    return-object v0
.end method

.method static commonSubmitterQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .locals 3

    .line 2317
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x7e

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private findNonEmptyStealQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .locals 8

    .line 2078
    invoke-static {}, Lio/netty/util/internal/ThreadLocalRandom;->current()Lio/netty/util/internal/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/ThreadLocalRandom;->nextInt()I

    move-result v0

    .line 2080
    :cond_0
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    .line 2081
    iget-object v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    add-int/lit8 v4, v3, 0x1

    shl-int/lit8 v4, v4, 0x2

    :goto_0
    if-ltz v4, :cond_2

    sub-int v5, v0, v4

    shl-int/lit8 v5, v5, 0x1

    or-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v3

    .line 2083
    aget-object v5, v2, v5

    if-eqz v5, :cond_1

    iget v6, v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v7, v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v6, v7

    if-gez v6, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2088
    :cond_2
    iget v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method private fullExternalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1536
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    const/4 v8, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_1

    .line 1539
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->INDEXSEED:J

    iget v5, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->indexSeed:I

    const v2, 0x61c88647

    add-int v9, v5, v2

    move-object/from16 v2, p0

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v9, :cond_3

    .line 1541
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    new-instance v1, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    invoke-direct {v1, v9}, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    .line 1544
    iget v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    shl-int/lit8 v2, v1, 0xd

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x11

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x5

    xor-int/2addr v1, v2

    .line 1547
    iput v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    :cond_2
    move v9, v1

    .line 1549
    :cond_3
    :goto_2
    iget v1, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    if-ltz v1, :cond_16

    const v10, 0x7fffffff

    const/high16 v11, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    .line 1551
    iget-object v1, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_d

    array-length v4, v1

    sub-int/2addr v4, v3

    if-gez v4, :cond_4

    goto/16 :goto_8

    :cond_4
    and-int/2addr v4, v9

    and-int/lit8 v12, v4, 0x7e

    .line 1568
    aget-object v4, v1, v12

    if-eqz v4, :cond_9

    .line 1569
    iget v2, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    if-nez v2, :cond_8

    sget-object v13, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v15, Lio/netty/util/internal/chmv8/ForkJoinPool;->QLOCK:J

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v14, v4

    invoke-virtual/range {v13 .. v18}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1570
    iget-object v2, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1571
    iget v5, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-eqz v2, :cond_5

    .line 1574
    :try_start_0
    array-length v6, v2

    add-int/lit8 v9, v5, 0x1

    iget v10, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v9, v10

    if-gt v6, v9, :cond_6

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_3
    invoke-virtual {v4}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->growArray()[Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1576
    :cond_6
    array-length v6, v2

    sub-int/2addr v6, v3

    and-int/2addr v6, v5

    sget v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v6, v9

    sget v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    add-int/2addr v6, v9

    .line 1577
    sget-object v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v10, v6

    move-object/from16 v13, p1

    invoke-virtual {v9, v2, v10, v11, v13}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    .line 1578
    iput v5, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_7
    move-object/from16 v13, p1

    const/4 v3, 0x0

    .line 1582
    :goto_4
    iput v8, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    if-eqz v3, :cond_0

    .line 1585
    invoke-virtual {v7, v1, v4}, Lio/netty/util/internal/chmv8/ForkJoinPool;->signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    return-void

    .line 1582
    :goto_5
    iput v8, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    throw v0

    :cond_8
    move-object/from16 v13, p1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v13, p1

    .line 1591
    iget v1, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1592
    new-instance v14, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    const/4 v1, -0x1

    invoke-direct {v14, v7, v2, v1, v9}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;-><init>(Lio/netty/util/internal/chmv8/ForkJoinPool;Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;II)V

    int-to-short v1, v12

    .line 1593
    iput-short v1, v14, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poolIndex:S

    .line 1594
    iget v5, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_b

    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v15, v5, 0x2

    move-object/from16 v2, p0

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    move v5, v15

    goto :goto_7

    .line 1596
    :cond_b
    :goto_6
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->acquirePlock()I

    move-result v1

    move v5, v1

    .line 1597
    :goto_7
    iget-object v1, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_c

    array-length v2, v1

    if-ge v12, v2, :cond_c

    aget-object v2, v1, v12

    if-nez v2, :cond_c

    .line 1598
    aput-object v14, v1, v12

    :cond_c
    and-int v1, v5, v11

    add-int/lit8 v2, v5, 0x2

    and-int/2addr v2, v10

    or-int v10, v1, v2

    .line 1600
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v2, p0

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1601
    invoke-direct {v7, v10}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    goto/16 :goto_c

    :cond_d
    :goto_8
    move-object/from16 v13, p1

    .line 1553
    iget-short v1, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    if-le v1, v3, :cond_e

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x1

    :goto_9
    ushr-int/lit8 v4, v1, 0x1

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x2

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x4

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x8

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x10

    or-int/2addr v1, v4

    add-int/2addr v1, v3

    shl-int/2addr v1, v3

    .line 1557
    iget-object v3, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v3, :cond_f

    array-length v3, v3

    if-nez v3, :cond_10

    :cond_f
    new-array v2, v1, [Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    :cond_10
    move-object v12, v2

    .line 1559
    iget v5, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_12

    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v14, v5, 0x2

    move-object/from16 v2, p0

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_a

    :cond_11
    move v5, v14

    goto :goto_b

    .line 1561
    :cond_12
    :goto_a
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->acquirePlock()I

    move-result v1

    move v5, v1

    .line 1562
    :goto_b
    iget-object v1, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_13

    array-length v1, v1

    if-nez v1, :cond_14

    :cond_13
    if-eqz v12, :cond_14

    .line 1563
    iput-object v12, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    :cond_14
    and-int v1, v5, v11

    add-int/lit8 v2, v5, 0x2

    and-int/2addr v2, v10

    or-int v10, v1, v2

    .line 1565
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v2, p0

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1566
    invoke-direct {v7, v10}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    :cond_15
    :goto_c
    move v1, v9

    goto/16 :goto_1

    .line 1550
    :cond_16
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0
.end method

.method public static getCommonPoolParallelism()I
    .locals 1

    .line 2680
    sget v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->commonParallelism:I

    return v0
.end method

.method static getSurplusQueuedTaskCount()I
    .locals 6

    .line 2198
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2199
    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    iget-short v3, v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    .line 2200
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    iget v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v4, v0

    .line 2201
    iget-wide v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const/16 v5, 0x30

    shr-long/2addr v0, v5

    long-to-int v0, v0

    add-int/2addr v0, v3

    const/4 v1, 0x1

    ushr-int/2addr v3, v1

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    ushr-int/lit8 v2, v3, 0x1

    if-le v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    ushr-int/2addr v2, v1

    if-le v0, v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    ushr-int/lit8 v1, v2, 0x1

    if-le v0, v1, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    sub-int/2addr v4, v2

    return v4

    :cond_4
    return v2
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    .line 3339
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3342
    :catch_0
    :try_start_1
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinPool$2;

    invoke-direct {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 3355
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private helpComplete(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/CountedCompleter;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;)I"
        }
    .end annotation

    .line 1919
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_6

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 1921
    iget-short v2, p1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poolIndex:S

    add-int v3, v1, v1

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0x0

    move-wide v5, v4

    move v4, v3

    .line 1926
    :goto_0
    iget v7, p2, Lio/netty/util/internal/chmv8/CountedCompleter;->status:I

    if-gez v7, :cond_0

    goto :goto_3

    .line 1928
    :cond_0
    invoke-virtual {p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->internalPopAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 1930
    :cond_1
    iget v7, p2, Lio/netty/util/internal/chmv8/CountedCompleter;->status:I

    if-gez v7, :cond_2

    goto :goto_3

    :cond_2
    and-int v8, v2, v1

    .line 1932
    aget-object v8, v0, v8

    if-eqz v8, :cond_3

    invoke-virtual {v8, p2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_5

    .line 1935
    iget-wide v8, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v4, v5, v8

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v3

    move-wide v5, v8

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    :goto_3
    return v7
.end method

.method private final helpRelease(J[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;I)V
    .locals 15

    move-wide/from16 v4, p1

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    if-eqz v1, :cond_0

    .line 1797
    iget v3, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v3, :cond_0

    long-to-int v3, v4

    if-lez v3, :cond_0

    if-eqz v0, :cond_0

    array-length v6, v0

    const v7, 0xffff

    and-int/2addr v7, v3

    if-le v6, v7, :cond_0

    aget-object v8, v0, v7

    if-eqz v8, :cond_0

    move-object v9, p0

    iget-wide v6, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    .line 1800
    iget v0, v8, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    const v6, 0x7fffffff

    and-int/2addr v0, v6

    int-to-long v10, v0

    const/16 v0, 0x20

    ushr-long v12, v4, v0

    long-to-int v7, v12

    const/high16 v12, 0x10000

    add-int/2addr v7, v12

    int-to-long v13, v7

    shl-long/2addr v13, v0

    or-long/2addr v10, v13

    add-int/2addr v12, v3

    and-int/2addr v12, v6

    if-eqz v2, :cond_1

    .line 1803
    iget v0, v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    move/from16 v2, p6

    if-ne v0, v2, :cond_1

    iget v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v0, :cond_1

    iget v0, v8, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v1, -0x80000000

    or-int/2addr v1, v3

    if-ne v0, v1, :cond_1

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object v1, p0

    move-wide/from16 v4, p1

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1806
    iput v12, v8, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1807
    iget-object v0, v8, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1808
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v9, p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static makeCommonPool()Lio/netty/util/internal/chmv8/ForkJoinPool;
    .locals 8

    .line 3300
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "java.util.concurrent.ForkJoinPool.common.parallelism"

    .line 3304
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    .line 3306
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    .line 3308
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    .line 3311
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    :cond_0
    if-eqz v4, :cond_1

    .line 3313
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v0, v3

    :cond_1
    if-eqz v5, :cond_2

    .line 3316
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :catch_0
    :cond_2
    move-object v4, v0

    move-object v5, v2

    if-gez v1, :cond_3

    .line 3321
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-gez v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    const/16 v0, 0x7fff

    if-le v1, v0, :cond_4

    const/16 v3, 0x7fff

    goto :goto_0

    :cond_4
    move v3, v1

    .line 3326
    :goto_0
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinPool;

    const/4 v6, 0x0

    const-string v7, "ForkJoinPool.commonPool-worker-"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/netty/util/internal/chmv8/ForkJoinPool;-><init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    return-object v0
.end method

.method public static managedBlock(Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3206
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3207
    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_3

    .line 3208
    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 3209
    :cond_0
    invoke-interface {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3210
    iget-wide v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    invoke-virtual {v0, v1, v2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryCompensate(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3212
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 3215
    :cond_2
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->incrementActiveCount()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->incrementActiveCount()V

    throw p0

    .line 3222
    :cond_3
    invoke-interface {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    :goto_0
    return-void
.end method

.method private static final declared-synchronized nextPoolId()I
    .locals 2

    const-class v0, Lio/netty/util/internal/chmv8/ForkJoinPool;

    monitor-enter v0

    .line 1123
    :try_start_0
    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->poolNumberSequence:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->poolNumberSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static quiesceCommonPool()V
    .locals 4

    .line 3107
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method private releasePlock(I)V
    .locals 0

    .line 1308
    iput p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    .line 1309
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final scan(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;I)I
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1690
    iget-wide v4, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .line 1691
    iget-object v3, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v3, :cond_5

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    if-eqz v9, :cond_5

    add-int v1, v0, v0

    add-int/lit8 v1, v1, 0x1

    .line 1692
    iget v10, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    move v2, v1

    :cond_0
    sub-int v6, p2, v2

    and-int/2addr v6, v0

    .line 1694
    aget-object v6, v3, v6

    if-eqz v6, :cond_3

    iget v7, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v11, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v11, v7, v11

    if-gez v11, :cond_3

    iget-object v13, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v13, :cond_3

    .line 1696
    array-length v0, v13

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v7

    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v0, v1

    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    add-int/2addr v0, v1

    int-to-long v14, v0

    .line 1697
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v13, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v0, :cond_5

    if-gez v10, :cond_1

    move-object/from16 v0, p0

    move-wide v1, v4

    move-object/from16 v4, p1

    move-object v5, v6

    move v6, v7

    .line 1700
    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpRelease(J[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;I)V

    goto :goto_0

    .line 1701
    :cond_1
    iget v1, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v1, v7, :cond_5

    sget-object v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/16 v17, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1703
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->QBASE:J

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v6, v4, v5, v7}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 1704
    iget v1, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v7, v1

    if-gez v7, :cond_2

    .line 1705
    invoke-virtual {v8, v3, v6}, Lio/netty/util/internal/chmv8/ForkJoinPool;->signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    .line 1706
    :cond_2
    invoke-virtual {v9, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->runTask(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    long-to-int v0, v4

    or-int v1, v10, v0

    if-gez v1, :cond_4

    .line 1713
    invoke-direct {v8, v9, v4, v5, v10}, Lio/netty/util/internal/chmv8/ForkJoinPool;->awaitWork(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;JI)I

    move-result v0

    return v0

    .line 1714
    :cond_4
    iget-wide v1, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v3, v1, v4

    if-nez v3, :cond_5

    int-to-long v1, v10

    const-wide/high16 v6, 0x1000000000000L

    sub-long v6, v4, v6

    const-wide v11, -0x100000000L

    and-long/2addr v6, v11

    or-long/2addr v6, v1

    .line 1716
    iput v0, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    const/high16 v0, -0x80000000

    or-int/2addr v0, v10

    .line 1717
    iput v0, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1718
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1719
    iput v10, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private tryAddWorker()V
    .locals 9

    .line 1319
    :cond_0
    iget-wide v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const/16 v0, 0x20

    ushr-long v1, v4, v0

    long-to-int v1, v1

    if-gez v1, :cond_3

    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    long-to-int v2, v4

    if-ltz v2, :cond_3

    add-int/lit8 v3, v1, 0x1

    const v6, 0xffff

    and-int/2addr v3, v6

    const/high16 v6, 0x10000

    add-int/2addr v1, v6

    const/high16 v6, -0x10000

    and-int/2addr v1, v6

    or-int/2addr v1, v3

    int-to-long v6, v1

    shl-long v0, v6, v0

    int-to-long v2, v2

    or-long v6, v0, v2

    .line 1322
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1327
    :try_start_0
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->factory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Lio/netty/util/internal/chmv8/ForkJoinPool;)Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    .line 1329
    :try_start_1
    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 1335
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->deregisterWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private tryHelpStealer(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    .line 1833
    iget v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v5, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v4, v5

    if-ltz v4, :cond_11

    const/4 v4, 0x0

    :goto_0
    move v5, v2

    move v6, v4

    move-object v2, v0

    move-object v4, v1

    .line 1839
    :goto_1
    iget v7, v1, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v7, :cond_0

    move v6, v7

    move-object/from16 v7, p0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v7, p0

    .line 1843
    iget-object v8, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v8, :cond_12

    array-length v9, v8

    sub-int/2addr v9, v3

    if-gtz v9, :cond_1

    goto/16 :goto_5

    .line 1845
    :cond_1
    iget v10, v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->hint:I

    or-int/2addr v10, v3

    and-int/2addr v10, v9

    aget-object v11, v8, v10

    if-eqz v11, :cond_2

    iget-object v12, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eq v12, v4, :cond_5

    :cond_2
    move v11, v10

    :cond_3
    add-int/lit8 v11, v11, 0x2

    and-int/2addr v11, v9

    and-int/lit8 v12, v11, 0xf

    if-ne v12, v3, :cond_4

    .line 1848
    iget v12, v4, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v12, :cond_f

    iget-object v12, v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eq v12, v4, :cond_4

    goto/16 :goto_4

    .line 1851
    :cond_4
    aget-object v12, v8, v11

    if-eqz v12, :cond_10

    iget-object v13, v12, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-ne v13, v4, :cond_10

    .line 1853
    iput v11, v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->hint:I

    move-object v11, v12

    .line 1862
    :cond_5
    :goto_2
    iget v8, v4, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v8, :cond_6

    goto/16 :goto_4

    .line 1864
    :cond_6
    iget v8, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v9, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v9, v8, v9

    if-gez v9, :cond_c

    iget-object v13, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v13, :cond_c

    .line 1865
    array-length v9, v13

    sub-int/2addr v9, v3

    and-int/2addr v9, v8

    sget v10, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v9, v10

    sget v10, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    add-int/2addr v9, v10

    .line 1866
    sget-object v10, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v14, v9

    invoke-virtual {v10, v13, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1868
    iget v10, v4, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v10, :cond_f

    iget-object v10, v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-ne v10, v4, :cond_f

    iget-object v10, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eq v10, v4, :cond_7

    goto :goto_4

    .line 1872
    :cond_7
    iget v6, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v6, v8, :cond_b

    if-nez v9, :cond_8

    goto :goto_3

    .line 1875
    :cond_8
    sget-object v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/16 v17, 0x0

    move-object/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1876
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->QBASE:J

    add-int/2addr v8, v3

    invoke-virtual {v2, v11, v4, v5, v8}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 1877
    iget-object v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1878
    iget v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 1880
    :cond_9
    iput-object v9, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1881
    invoke-virtual {v9}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    .line 1883
    iget v5, v1, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v5, :cond_a

    iget v5, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-eq v5, v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pop()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v9

    if-nez v9, :cond_9

    .line 1885
    :cond_a
    iput-object v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    :goto_3
    const/4 v6, 0x1

    goto :goto_5

    :cond_b
    const/4 v6, 0x1

    goto :goto_2

    .line 1891
    :cond_c
    iget-object v8, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1892
    iget v9, v4, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v9, :cond_f

    iget-object v2, v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-ne v2, v4, :cond_f

    iget-object v2, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eq v2, v4, :cond_d

    goto :goto_4

    :cond_d
    if-eqz v8, :cond_12

    add-int/lit8 v5, v5, 0x1

    const/16 v2, 0x40

    if-ne v5, v2, :cond_e

    goto :goto_5

    :cond_e
    move-object v4, v8

    move-object v2, v11

    goto/16 :goto_1

    :cond_f
    :goto_4
    move v2, v5

    move v4, v6

    goto/16 :goto_0

    :cond_10
    if-ne v11, v10, :cond_3

    goto :goto_5

    :cond_11
    move-object/from16 v7, p0

    const/4 v6, 0x0

    :cond_12
    :goto_5
    return v6
.end method

.method private tryTerminate(ZZ)Z
    .locals 21

    move-object/from16 v9, p0

    .line 2229
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    const/4 v10, 0x0

    if-ne v9, v0, :cond_0

    return v10

    .line 2231
    :cond_0
    iget v5, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    const/high16 v0, -0x80000000

    const v11, 0x7fffffff

    if-ltz v5, :cond_4

    if-nez p2, :cond_1

    return v10

    :cond_1
    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_3

    .line 2234
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v7, v5, 0x2

    move-object/from16 v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    .line 2236
    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->acquirePlock()I

    move-result v1

    move v5, v1

    :goto_1
    add-int/lit8 v1, v5, 0x2

    and-int/2addr v1, v11

    or-int v7, v1, v0

    .line 2238
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2239
    invoke-direct {v9, v7}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    .line 2242
    :cond_4
    iget-wide v5, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const-wide v1, 0x80000000L

    and-long v3, v5, v1

    const-wide/16 v7, 0x0

    const/4 v12, 0x1

    cmp-long v13, v3, v7

    if-eqz v13, :cond_6

    const/16 v0, 0x20

    ushr-long v0, v5, v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 2243
    iget-short v1, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v0, v1

    if-gtz v0, :cond_5

    .line 2244
    monitor-enter p0

    .line 2245
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 2246
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_2
    return v12

    :cond_6
    if-nez p1, :cond_a

    const/16 v3, 0x30

    shr-long v3, v5, v3

    long-to-int v3, v3

    .line 2252
    iget-short v4, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v3, v4

    if-lez v3, :cond_7

    return v10

    .line 2254
    :cond_7
    iget-object v3, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v3, :cond_a

    const/4 v4, 0x0

    .line 2255
    :goto_3
    array-length v7, v3

    if-ge v4, v7, :cond_a

    .line 2256
    aget-object v7, v3, v4

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_9

    iget v8, v7, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v8, :cond_9

    .line 2259
    :cond_8
    invoke-virtual {v9, v3, v7}, Lio/netty/util/internal/chmv8/ForkJoinPool;->signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    return v10

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2265
    :cond_a
    sget-object v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    or-long v14, v5, v1

    move-object v1, v3

    move-object/from16 v2, p0

    move-wide v3, v7

    move-wide v7, v14

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v14, 0x0

    :goto_4
    const/4 v1, 0x3

    if-ge v14, v1, :cond_4

    .line 2268
    iget-object v15, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v15, :cond_10

    .line 2269
    array-length v7, v15

    const/4 v1, 0x0

    :goto_5
    const/4 v8, -0x1

    if-ge v1, v7, :cond_d

    .line 2271
    aget-object v2, v15, v1

    if-eqz v2, :cond_c

    .line 2272
    iput v8, v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    if-lez v14, :cond_c

    .line 2274
    invoke-virtual {v2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->cancelAll()V

    if-le v14, v12, :cond_c

    .line 2275
    iget-object v2, v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->owner:Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v2, :cond_c

    .line 2276
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2278
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2282
    :catch_0
    :cond_b
    sget-object v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2290
    :cond_d
    :goto_6
    iget-wide v5, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    long-to-int v1, v5

    and-int v16, v1, v11

    if-eqz v16, :cond_10

    const v1, 0xffff

    and-int v1, v16, v1

    if-ge v1, v7, :cond_10

    if-ltz v1, :cond_10

    aget-object v3, v15, v1

    if-eqz v3, :cond_10

    .line 2292
    iget v1, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    and-int/2addr v1, v11

    int-to-long v1, v1

    const-wide/high16 v17, 0x1000000000000L

    add-long v17, v5, v17

    const-wide/high16 v19, -0x1000000000000L

    and-long v17, v17, v19

    or-long v1, v1, v17

    const-wide v17, 0xffff80000000L

    and-long v17, v5, v17

    or-long v17, v1, v17

    .line 2295
    iget v1, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    or-int v2, v16, v0

    if-ne v1, v2, :cond_e

    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v19, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v2, p0

    move-object v0, v3

    move-wide/from16 v3, v19

    move/from16 v19, v7

    const/4 v10, -0x1

    move-wide/from16 v7, v17

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_f

    const/high16 v1, 0x10000

    add-int v16, v16, v1

    and-int v1, v16, v11

    .line 2297
    iput v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2298
    iput v10, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 2299
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    .line 2300
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    move/from16 v19, v7

    const/4 v10, -0x1

    :cond_f
    :goto_7
    move/from16 v7, v19

    const/high16 v0, -0x80000000

    const/4 v8, -0x1

    const/4 v10, 0x0

    goto :goto_6

    :cond_10
    add-int/lit8 v14, v14, 0x1

    const/high16 v0, -0x80000000

    const/4 v10, 0x0

    goto/16 :goto_4
.end method


# virtual methods
.method final awaitJoin(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)I"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    if-eqz v10, :cond_9

    .line 2008
    iget v1, v10, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v1, :cond_a

    if-eqz v0, :cond_a

    .line 2009
    iget-object v11, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2010
    iput-object v10, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2011
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v10, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v1, :cond_0

    :cond_1
    if-ltz v1, :cond_2

    .line 2013
    instance-of v2, v10, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v2, :cond_2

    .line 2014
    move-object v1, v10

    check-cast v1, Lio/netty/util/internal/chmv8/CountedCompleter;

    invoke-direct {v9, v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpComplete(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/CountedCompleter;)I

    move-result v1

    :cond_2
    const-wide/16 v2, 0x0

    move-wide v12, v2

    :cond_3
    :goto_0
    if-ltz v1, :cond_8

    .line 2016
    iget v1, v10, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v1, :cond_8

    .line 2017
    invoke-direct/range {p0 .. p2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryHelpStealer(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I

    move-result v1

    if-nez v1, :cond_3

    iget v1, v10, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v1, :cond_3

    .line 2019
    invoke-virtual {v9, v12, v13}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryCompensate(J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2020
    iget-wide v12, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    goto :goto_0

    .line 2022
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lio/netty/util/internal/chmv8/ForkJoinTask;->trySetSignal()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v1, v10, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v1, :cond_6

    .line 2023
    monitor-enter p2

    .line 2024
    :try_start_0
    iget v2, v10, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_5

    .line 2026
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2031
    :cond_5
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->notifyAll()V

    .line 2032
    :catch_0
    :goto_1
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    :goto_2
    move v14, v1

    .line 2035
    :cond_7
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    iget-wide v5, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const-wide v7, 0xffffffffffffL

    and-long/2addr v7, v5

    const-wide/high16 v15, -0x1000000000000L

    and-long/2addr v15, v5

    const-wide/high16 v17, 0x1000000000000L

    add-long v15, v15, v17

    or-long/2addr v7, v15

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v14

    goto :goto_0

    .line 2042
    :cond_8
    iput-object v11, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_3
    return v1
.end method

.method public awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .locals 10

    .line 3069
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 3071
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    .line 3072
    instance-of v0, p3, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p3, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v0, p3, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    if-ne v0, p0, :cond_0

    .line 3074
    iget-object p1, p3, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpQuiescePool(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    return v1

    .line 3077
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 3081
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->isQuiescent()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v5, :cond_6

    array-length v6, v5

    sub-int/2addr v6, v1

    if-ltz v6, :cond_6

    if-nez v0, :cond_2

    .line 3084
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    cmp-long v0, v7, p1

    if-lez v0, :cond_1

    return p3

    .line 3086
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_2
    add-int/lit8 v0, v6, 0x1

    shl-int/lit8 v0, v0, 0x2

    :goto_1
    if-ltz v0, :cond_5

    add-int/lit8 v7, v4, 0x1

    and-int/2addr v4, v6

    .line 3091
    aget-object v4, v5, v4

    if-eqz v4, :cond_4

    iget v8, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v9, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v9, v8, v9

    if-gez v9, :cond_4

    .line 3093
    invoke-virtual {v4, v8}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAt(I)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3094
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    :cond_3
    move v4, v7

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    move v4, v7

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    return v1
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3032
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3034
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 3035
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    return v1

    .line 3038
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 3039
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->isTerminated()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    return v0

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-gtz p3, :cond_2

    return v1

    .line 3043
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, p1

    .line 3044
    monitor-enter p0

    .line 3046
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->isTerminated()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 3047
    monitor-exit p0

    return v0

    :cond_3
    cmp-long p3, p1, v2

    if-gtz p3, :cond_4

    .line 3049
    monitor-exit p0

    return v1

    .line 3050
    :cond_4
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 p1, 0x1

    .line 3051
    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 3052
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    const/4 p3, 0x0

    sub-long p1, v4, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3054
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 3033
    :cond_6
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method final deregisterWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const/high16 v10, -0x80000000

    const/4 v11, 0x0

    const v12, 0x7fffffff

    if-eqz v0, :cond_6

    .line 1404
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    .line 1406
    iput v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 1407
    :cond_0
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->STEALCOUNT:J

    iget-wide v5, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->stealCount:J

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v7, v2

    add-long/2addr v7, v5

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1410
    iget v5, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_2

    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v7, v5, 0x2

    move-object/from16 v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    .line 1412
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->acquirePlock()I

    move-result v1

    move v5, v1

    :goto_1
    and-int v1, v5, v10

    add-int/lit8 v2, v5, 0x2

    and-int/2addr v2, v12

    or-int v7, v1, v2

    .line 1415
    :try_start_0
    iget-short v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poolIndex:S

    .line 1416
    iget-object v2, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_3

    if-ltz v1, :cond_3

    .line 1417
    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v3, v2, v1

    if-ne v3, v0, :cond_3

    .line 1418
    aput-object v11, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    :cond_3
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1421
    invoke-direct {v9, v7}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1420
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1421
    invoke-direct {v9, v7}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    :cond_4
    throw v0

    :cond_5
    :goto_2
    move-object v11, v0

    .line 1426
    :cond_6
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    iget-wide v5, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const-wide/high16 v7, 0x1000000000000L

    sub-long v7, v5, v7

    const-wide/high16 v13, -0x1000000000000L

    and-long/2addr v7, v13

    const-wide v13, 0x100000000L

    sub-long v13, v5, v13

    const-wide v15, 0xffff00000000L

    and-long/2addr v13, v15

    or-long/2addr v7, v13

    const-wide v13, 0xffffffffL

    and-long/2addr v13, v5

    or-long/2addr v7, v13

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 1431
    invoke-direct {v9, v0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v11, :cond_b

    iget-object v0, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v0, :cond_b

    .line 1432
    invoke-virtual {v11}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 1434
    :cond_7
    iget-wide v5, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const/16 v0, 0x20

    ushr-long v1, v5, v0

    long-to-int v1, v1

    if-gez v1, :cond_b

    long-to-int v11, v5

    if-ltz v11, :cond_b

    if-lez v11, :cond_a

    .line 1436
    iget-object v2, v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_b

    const v3, 0xffff

    and-int/2addr v3, v11

    array-length v4, v2

    if-ge v3, v4, :cond_b

    aget-object v13, v2, v3

    if-nez v13, :cond_8

    goto :goto_3

    .line 1440
    :cond_8
    iget v2, v13, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    and-int/2addr v2, v12

    int-to-long v2, v2

    const/high16 v14, 0x10000

    add-int/2addr v1, v14

    int-to-long v7, v1

    shl-long v0, v7, v0

    or-long v7, v2, v0

    .line 1442
    iget v0, v13, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    or-int v1, v11, v10

    if-eq v0, v1, :cond_9

    goto :goto_3

    .line 1444
    :cond_9
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/2addr v11, v14

    and-int v0, v11, v12

    .line 1445
    iput v0, v13, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1446
    iget-object v0, v13, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    if-eqz v0, :cond_b

    .line 1447
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    int-to-short v0, v1

    if-gez v0, :cond_b

    .line 1453
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryAddWorker()V

    :cond_b
    :goto_3
    if-nez p2, :cond_c

    .line 1459
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->helpExpungeStaleExceptions()V

    goto :goto_4

    .line 1461
    :cond_c
    invoke-static/range {p2 .. p2}, Lio/netty/util/internal/chmv8/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method protected drainTasksTo(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;>;)I"
        }
    .end annotation

    .line 2871
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 2872
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 2873
    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 2874
    :goto_1
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poll()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2875
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public execute(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2540
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    return-void

    .line 2539
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2554
    instance-of v0, p1, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v0, :cond_0

    .line 2555
    check-cast p1, Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto :goto_0

    .line 2557
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$RunnableExecuteAction;

    invoke-direct {v0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask$RunnableExecuteAction;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v0

    .line 2558
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    return-void

    .line 2552
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method final externalHelpComplete(Lio/netty/util/internal/chmv8/CountedCompleter;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;)I"
        }
    .end annotation

    .line 2352
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    .line 2353
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 2355
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    and-int v3, v0, v2

    and-int/lit8 v3, v3, 0x7e

    aget-object v3, v1, v3

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    add-int v4, v2, v2

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x0

    or-int/lit8 v0, v0, 0x1

    move-wide v6, v5

    move v5, v4

    .line 2362
    :goto_0
    iget v8, p1, Lio/netty/util/internal/chmv8/CountedCompleter;->status:I

    if-gez v8, :cond_0

    goto :goto_3

    .line 2364
    :cond_0
    invoke-virtual {v3, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->externalPopAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 2366
    :cond_1
    iget v8, p1, Lio/netty/util/internal/chmv8/CountedCompleter;->status:I

    if-gez v8, :cond_2

    goto :goto_3

    :cond_2
    and-int v9, v0, v2

    .line 2368
    aget-object v9, v1, v9

    if-eqz v9, :cond_3

    invoke-virtual {v9, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z

    move-result v9

    if-eqz v9, :cond_3

    :goto_1
    move v5, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_5

    .line 2371
    iget-wide v9, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v5, v6, v9

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v4

    move-wide v6, v9

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    :goto_3
    return v8
.end method

.method final externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 1495
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    .line 1497
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    .line 1498
    iget-object v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    if-eqz v2, :cond_2

    .line 1499
    array-length v1, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-ltz v1, :cond_2

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v1, v0

    and-int/lit8 v1, v1, 0x7e

    aget-object v1, v2, v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->QLOCK:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1502
    iget-object v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    array-length v5, v0

    sub-int/2addr v5, v3

    iget v6, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    iget v7, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int v7, v6, v7

    if-le v5, v7, :cond_1

    and-int/2addr v5, v6

    .line 1504
    sget v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v5, v8

    sget v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    add-int/2addr v5, v8

    .line 1505
    sget-object v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v9, v5

    invoke-virtual {v8, v0, v9, v10, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v6, v3

    .line 1506
    iput v6, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 1507
    iput v4, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    if-gt v7, v3, :cond_0

    .line 1509
    invoke-virtual {p0, v2, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    :cond_0
    return-void

    .line 1512
    :cond_1
    iput v4, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 1514
    :cond_2
    invoke-direct {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->fullExternalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    return-void
.end method

.method public getActiveThreadCount()I
    .locals 4

    .line 2733
    iget-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    iget-wide v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getAsyncMode()Z
    .locals 2

    .line 2702
    iget-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->mode:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getFactory()Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    .line 2650
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->factory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public getParallelism()I
    .locals 1

    .line 2670
    iget-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getPoolSize()I
    .locals 4

    .line 2692
    iget-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    iget-wide v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-short v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 4

    .line 2807
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 2808
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 2809
    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 2810
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public getQueuedTaskCount()J
    .locals 6

    .line 2788
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 2789
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 2790
    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 2791
    invoke-virtual {v4}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getRunningThreadCount()I
    .locals 4

    .line 2716
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 2717
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2718
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getStealCount()J
    .locals 6

    .line 2764
    iget-wide v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->stealCount:J

    .line 2766
    iget-object v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 2767
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 2768
    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    .line 2769
    iget v4, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 2660
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 4

    .line 2824
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 2825
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2826
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method final helpJoinOnce(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 2057
    iget v0, p2, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v0, :cond_4

    .line 2058
    iget-object v1, p1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2059
    iput-object p2, p1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2060
    :cond_0
    invoke-virtual {p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, p2, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    :cond_1
    if-ltz v0, :cond_3

    .line 2063
    instance-of v0, p2, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v0, :cond_2

    .line 2064
    move-object v0, p2

    check-cast v0, Lio/netty/util/internal/chmv8/CountedCompleter;

    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpComplete(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/CountedCompleter;)I

    .line 2065
    :cond_2
    iget v0, p2, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryHelpStealer(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 2068
    :cond_3
    iput-object v1, p1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    :cond_4
    return-void
.end method

.method final helpQuiescePool(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 2100
    iget-object v10, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 2103
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2104
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 2105
    :cond_1
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->findNonEmptyStealQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-result-object v13

    const-wide/high16 v14, 0x1000000000000L

    const-wide/high16 v16, -0x1000000000000L

    const-wide v18, 0xffffffffffffL

    if-eqz v13, :cond_4

    if-nez v12, :cond_3

    .line 2108
    :cond_2
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    iget-wide v4, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    and-long v6, v4, v18

    and-long v20, v4, v16

    add-long v20, v20, v14

    or-long v6, v6, v20

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v12, 0x1

    .line 2113
    :cond_3
    iget v0, v13, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v1, v13, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v1, v0, v1

    if-gez v1, :cond_0

    invoke-virtual {v13, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAt(I)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2114
    iput-object v0, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    .line 2115
    iput-object v10, v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto :goto_0

    :cond_4
    const/16 v0, 0x30

    if-eqz v12, :cond_6

    .line 2119
    iget-wide v4, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    and-long v1, v4, v18

    and-long v6, v4, v16

    sub-long/2addr v6, v14

    or-long/2addr v6, v1

    shr-long v0, v6, v0

    long-to-int v0, v0

    .line 2120
    iget-short v1, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v0, v1

    if-nez v0, :cond_5

    goto :goto_1

    .line 2122
    :cond_5
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    .line 2125
    :cond_6
    iget-wide v4, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    shr-long v0, v4, v0

    long-to-int v0, v0

    iget-short v1, v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    and-long v6, v4, v18

    and-long v16, v4, v16

    add-long v16, v16, v14

    or-long v6, v6, v16

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void
.end method

.method final incrementActiveCount()V
    .locals 12

    .line 1615
    :cond_0
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    iget-wide v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const-wide v6, 0xffffffffffffL

    and-long/2addr v6, v4

    const-wide/high16 v8, -0x1000000000000L

    and-long/2addr v8, v4

    const-wide/high16 v10, 0x1000000000000L

    add-long/2addr v8, v10

    or-long/2addr v6, v8

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public invoke(Lio/netty/util/internal/chmv8/ForkJoinTask;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2525
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 2526
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2524
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .line 2624
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2628
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    .line 2629
    new-instance v3, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;

    invoke-direct {v3, v2}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2630
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2631
    invoke-virtual {p0, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    goto :goto_0

    .line 2633
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    .line 2634
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->quietlyJoin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 2639
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 2640
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2639
    :cond_2
    throw p1
.end method

.method public isQuiescent()Z
    .locals 4

    .line 2749
    iget-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    iget-wide v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 3013
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminated()Z
    .locals 7

    .line 2983
    iget-wide v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    .line 2984
    iget-short v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminating()Z
    .locals 7

    .line 3002
    iget-wide v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    .line 3003
    iget-short v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 3232
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 3236
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final nextTaskFor(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;",
            ")",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 2141
    :cond_0
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 2143
    :cond_1
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->findNonEmptyStealQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 2145
    :cond_2
    iget v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v1, v2

    if-gez v2, :cond_0

    invoke-virtual {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAt(I)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method protected pollSubmission()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 2842
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2843
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 2844
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poll()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final registerWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;)Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .locals 12

    const/4 v0, 0x1

    .line 1355
    invoke-virtual {p1, v0}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->setDaemon(Z)V

    .line 1356
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 1357
    invoke-virtual {p1, v1}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1359
    :cond_0
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->INDEXSEED:J

    iget v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->indexSeed:I

    const v1, 0x61c88647

    add-int/2addr v1, v6

    move-object v3, p0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1361
    new-instance v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    iget-short v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->mode:S

    invoke-direct {v2, p0, p1, v3, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;-><init>(Lio/netty/util/internal/chmv8/ForkJoinPool;Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;II)V

    .line 1362
    iget v8, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    and-int/lit8 v3, v8, 0x2

    if-nez v3, :cond_2

    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v3, v8, 0x2

    move-object v5, p0

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v3

    goto :goto_2

    .line 1364
    :cond_2
    :goto_1
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->acquirePlock()I

    move-result v3

    goto :goto_0

    :goto_2
    const/high16 v3, -0x80000000

    and-int/2addr v3, v8

    add-int/lit8 v4, v8, 0x2

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 1367
    :try_start_0
    iget-object v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v4, :cond_6

    .line 1368
    array-length v5, v4

    add-int/lit8 v6, v5, -0x1

    shl-int/2addr v1, v0

    or-int/2addr v1, v0

    and-int/2addr v1, v6

    .line 1370
    aget-object v7, v4, v1

    if-eqz v7, :cond_5

    const/4 v7, 0x4

    const/4 v9, 0x2

    if-gt v5, v7, :cond_3

    goto :goto_3

    :cond_3
    ushr-int/lit8 v7, v5, 0x1

    const v10, 0xfffe

    and-int/2addr v7, v10

    add-int/2addr v9, v7

    :goto_3
    const/4 v7, 0x0

    move v10, v5

    :goto_4
    const/4 v5, 0x0

    :cond_4
    add-int/2addr v1, v9

    and-int/2addr v1, v6

    .line 1373
    aget-object v11, v4, v1

    if-eqz v11, :cond_5

    add-int/2addr v5, v0

    if-lt v5, v10, :cond_4

    shl-int/lit8 v10, v10, 0x1

    .line 1375
    invoke-static {v4, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    iput-object v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    add-int/lit8 v6, v10, -0x1

    goto :goto_4

    :cond_5
    int-to-short v5, v1

    .line 1381
    iput-short v5, v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poolIndex:S

    .line 1382
    iput v1, v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1383
    aput-object v2, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    :cond_6
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object v5, p0

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1387
    invoke-direct {p0, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    .line 1389
    :cond_7
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    iget-short v3, v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poolIndex:S

    ushr-int/lit8 v0, v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception p1

    .line 1386
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object v5, p0

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1387
    invoke-direct {p0, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    :cond_8
    throw p1
.end method

.method final runWorker(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V
    .locals 2

    .line 1660
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->growArray()[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1661
    iget v0, p1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->hint:I

    :goto_0
    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->scan(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;I)I

    move-result v1

    if-nez v1, :cond_0

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 2949
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->checkPermission()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2950
    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryTerminate(ZZ)Z

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 2972
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->checkPermission()V

    const/4 v0, 0x1

    .line 2973
    invoke-direct {p0, v0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 2974
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V
    .locals 13

    .line 1629
    :cond_0
    iget-wide v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const/16 v0, 0x20

    ushr-long v1, v4, v0

    long-to-int v1, v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    long-to-int v2, v4

    if-gtz v2, :cond_2

    int-to-short p1, v1

    if-gez p1, :cond_5

    .line 1633
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryAddWorker()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    .line 1636
    array-length v3, p1

    const v6, 0xffff

    and-int/2addr v6, v2

    if-le v3, v6, :cond_5

    aget-object v8, p1, v6

    if-nez v8, :cond_3

    goto :goto_0

    .line 1639
    :cond_3
    iget v3, v8, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    const v6, 0x7fffffff

    and-int/2addr v3, v6

    int-to-long v9, v3

    const/high16 v3, 0x10000

    add-int/2addr v1, v3

    int-to-long v11, v1

    shl-long v0, v11, v0

    or-long/2addr v9, v0

    add-int/2addr v3, v2

    and-int v11, v3, v6

    .line 1642
    iget v0, v8, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v1, -0x80000000

    or-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object v1, p0

    move-wide v6, v9

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1644
    iput v11, v8, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1645
    iget-object p1, v8, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    if-eqz p1, :cond_5

    .line 1646
    sget-object p2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_0

    .line 1649
    iget v0, p2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v1, p2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-lt v0, v1, :cond_0

    :cond_5
    :goto_0
    return-void
.end method

.method public submit(Lio/netty/util/internal/chmv8/ForkJoinTask;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "TT;>;)",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2573
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    return-object p1

    .line 2572
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public submit(Ljava/lang/Runnable;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2608
    instance-of v0, p1, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v0, :cond_0

    .line 2609
    check-cast p1, Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto :goto_0

    .line 2611
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v0

    .line 2612
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    return-object p1

    .line 2606
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2594
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2595
    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2583
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2584
    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->submit(Ljava/lang/Runnable;)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 149
    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 2894
    iget-wide v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->stealCount:J

    .line 2895
    iget-wide v3, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .line 2897
    iget-object v5, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    if-eqz v5, :cond_2

    move-wide v13, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    .line 2898
    :goto_0
    array-length v15, v5

    if-ge v1, v15, :cond_3

    .line 2899
    aget-object v15, v5, v1

    if-eqz v15, :cond_1

    .line 2900
    invoke-virtual {v15}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v6

    and-int/lit8 v16, v1, 0x1

    if-nez v16, :cond_0

    int-to-long v7, v6

    add-long/2addr v9, v7

    goto :goto_1

    :cond_0
    int-to-long v6, v6

    add-long/2addr v11, v6

    .line 2905
    iget v6, v15, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v6, v6

    add-long/2addr v13, v6

    .line 2906
    invoke-virtual {v15}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-wide v13, v1

    const/4 v2, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    .line 2912
    :cond_3
    iget-short v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    long-to-int v5, v5

    int-to-short v5, v5

    add-int/2addr v5, v1

    const/16 v6, 0x30

    shr-long v6, v3, v6

    long-to-int v6, v6

    add-int/2addr v6, v1

    if-gez v6, :cond_4

    const/4 v6, 0x0

    :cond_4
    const-wide v7, 0x80000000L

    and-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long v15, v3, v7

    if-eqz v15, :cond_6

    if-nez v5, :cond_5

    const-string v3, "Terminated"

    goto :goto_2

    :cond_5
    const-string v3, "Terminating"

    goto :goto_2

    .line 2921
    :cond_6
    iget v3, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    if-gez v3, :cond_7

    const-string v3, "Shutting down"

    goto :goto_2

    :cond_7
    const-string v3, "Running"

    .line 2922
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", parallelism = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", active = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", running = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", steals = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tasks = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", submissions = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method final tryCompensate(J)Z
    .locals 12

    .line 1954
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .line 1955
    iget-short v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    long-to-int v2, p1

    if-eqz v0, :cond_5

    .line 1956
    array-length v3, v0

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    if-ltz v3, :cond_5

    if-ltz v2, :cond_5

    iget-wide v7, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v4, v7, p1

    if-nez v4, :cond_5

    and-int/2addr v3, v2

    .line 1957
    aget-object v0, v0, v3

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1960
    iget v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v1, v3

    int-to-long v7, v1

    const-wide v10, -0x100000000L

    and-long/2addr v10, p1

    or-long/2addr v7, v10

    const/high16 v1, 0x10000

    add-int/2addr v1, v2

    and-int v10, v1, v3

    .line 1963
    iget v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    if-ne v1, v2, :cond_5

    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object v2, p0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1965
    iput v10, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1966
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1967
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_0
    return v9

    :cond_1
    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-short v0, v0

    if-ltz v0, :cond_2

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    add-int/2addr v2, v1

    if-le v2, v9, :cond_2

    const-wide/high16 v0, 0x1000000000000L

    sub-long v0, p1, v0

    const-wide/high16 v2, -0x1000000000000L

    and-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, p1

    or-long v7, v0, v2

    .line 1974
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object v2, p0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_5

    return v9

    :cond_2
    add-int/2addr v0, v1

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_5

    const-wide v0, 0x100000000L

    add-long/2addr v0, p1

    const-wide v2, 0xffff00000000L

    and-long/2addr v0, v2

    const-wide v2, -0xffff00000001L

    and-long/2addr v2, p1

    or-long v7, v0, v2

    .line 1979
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object v2, p0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 1984
    :try_start_0
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->factory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Lio/netty/util/internal/chmv8/ForkJoinPool;)Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_4

    .line 1986
    :try_start_1
    invoke-virtual {v2}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return v9

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_0
    move-object v1, v0

    .line 1992
    :cond_4
    :goto_1
    invoke-virtual {p0, v2, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->deregisterWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method final tryExternalUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 2329
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    .line 2330
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 2332
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ltz v3, :cond_1

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x7e

    aget-object v0, v1, v0

    if-eqz v0, :cond_1

    iget v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v3, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-eq v1, v3, :cond_1

    iget-object v1, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v1, :cond_1

    .line 2336
    array-length v5, v1

    sub-int/2addr v5, v4

    add-int/lit8 v11, v3, -0x1

    and-int/2addr v5, v11

    sget v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v5, v6

    sget v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    add-int/2addr v5, v6

    int-to-long v12, v5

    .line 2337
    sget-object v5, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    sget-object v5, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->QLOCK:J

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, v0

    invoke-virtual/range {v5 .. v10}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2339
    iget v5, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-ne v5, v3, :cond_0

    iget-object v3, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-ne v3, v1, :cond_0

    sget-object v5, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    move-object v6, v1

    move-wide v7, v12

    move-object v9, p1

    invoke-virtual/range {v5 .. v10}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2341
    iput v11, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2344
    :goto_0
    iput v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    move v2, v4

    :cond_1
    return v2
.end method

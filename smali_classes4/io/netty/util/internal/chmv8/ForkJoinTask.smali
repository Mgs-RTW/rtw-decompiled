.class public abstract Lio/netty/util/internal/chmv8/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;,
        Lio/netty/util/internal/chmv8/ForkJoinTask$RunnableExecuteAction;,
        Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;,
        Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;,
        Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = -0x40000000

.field static final DONE_MASK:I = -0x10000000

.field static final EXCEPTIONAL:I = -0x80000000

.field private static final EXCEPTION_MAP_CAPACITY:I = 0x20

.field static final NORMAL:I = -0x10000000

.field static final SIGNAL:I = 0x10000

.field static final SMASK:I = 0xffff

.field private static final STATUS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1518
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1519
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    const/16 v0, 0x20

    .line 1520
    new-array v0, v0, [Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    sput-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 1522
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    .line 1523
    const-class v0, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1524
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1527
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .line 203
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;)Lio/netty/util/internal/chmv8/ForkJoinTask;
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

    .line 1457
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ForkJoinTask;
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

    .line 1470
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static adapt(Ljava/util/concurrent/Callable;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 1483
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static final cancelIgnoringExceptions(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 498
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 500
    :try_start_0
    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private clearExceptionalCompletion()V
    .locals 8

    .line 510
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 511
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 512
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 514
    :try_start_0
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 515
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    .line 516
    aget-object v3, v2, v0

    const/4 v4, 0x0

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_0
    if-eqz v4, :cond_2

    .line 519
    iget-object v5, v4, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 520
    invoke-virtual {v4}, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_1

    if-nez v3, :cond_0

    .line 522
    aput-object v5, v2, v0

    goto :goto_1

    .line 524
    :cond_0
    iput-object v5, v3, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    goto :goto_1

    :cond_1
    move-object v3, v4

    move-object v4, v5

    goto :goto_0

    .line 530
    :cond_2
    :goto_1
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->expungeStaleExceptions()V

    const/4 v0, 0x0

    .line 531
    iput v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private doInvoke()I
    .locals 2

    .line 392
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_1

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->awaitJoin(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    :goto_0
    return v0
.end method

.method private doJoin()I
    .locals 3

    .line 377
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_2

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->tryUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    move-result v2

    if-gez v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    invoke-virtual {v0, v1, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->awaitJoin(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static expungeStaleExceptions()V
    .locals 7

    .line 598
    :cond_0
    :goto_0
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 599
    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    if-eqz v1, :cond_0

    .line 600
    move-object v1, v0

    check-cast v1, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 601
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 602
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 603
    aget-object v3, v2, v1

    const/4 v4, 0x0

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_1
    if-eqz v4, :cond_0

    .line 606
    iget-object v5, v4, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    if-ne v4, v0, :cond_2

    if-nez v3, :cond_1

    .line 609
    aput-object v5, v2, v1

    goto :goto_0

    .line 611
    :cond_1
    iput-object v5, v3, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    goto :goto_0

    :cond_2
    move-object v3, v4

    move-object v4, v5

    goto :goto_1

    :cond_3
    return-void
.end method

.method private externalAwaitDone()I
    .locals 8

    .line 308
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 309
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v1, :cond_6

    if-eqz v0, :cond_1

    .line 311
    instance-of v2, p0, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v2, :cond_0

    .line 312
    move-object v1, p0

    check-cast v1, Lio/netty/util/internal/chmv8/CountedCompleter;

    invoke-virtual {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalHelpComplete(Lio/netty/util/internal/chmv8/CountedCompleter;)I

    move-result v1

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryExternalUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    move-result v1

    :cond_1
    :goto_0
    if-ltz v1, :cond_6

    .line 316
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v1, :cond_6

    const/4 v0, 0x0

    move v6, v1

    .line 319
    :cond_2
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v7, v6, v1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v1, :cond_3

    .line 323
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 329
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 330
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 332
    :cond_4
    :goto_2
    iget v6, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v6, :cond_2

    if-eqz v0, :cond_5

    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    move v1, v6

    :cond_6
    return v1
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 345
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 346
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 348
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v1, :cond_1

    if-eqz v0, :cond_1

    .line 349
    instance-of v1, p0, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v1, :cond_0

    .line 350
    move-object v1, p0

    check-cast v1, Lio/netty/util/internal/chmv8/CountedCompleter;

    invoke-virtual {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalHelpComplete(Lio/netty/util/internal/chmv8/CountedCompleter;)I

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryExternalUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    .line 354
    :cond_1
    :goto_0
    iget v5, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v5, :cond_3

    .line 355
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    const/high16 v0, 0x10000

    or-int v6, v5, v0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v0, :cond_2

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 360
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 361
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    return v5

    .line 347
    :cond_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public static getPool()Lio/netty/util/internal/chmv8/ForkJoinPool;
    .locals 2

    .line 1149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1150
    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getQueuedTaskCount()I
    .locals 2

    .line 1193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 1194
    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    goto :goto_0

    .line 1196
    :cond_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->commonSubmitterQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1197
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v0

    :goto_1
    return v0
.end method

.method public static getSurplusQueuedTaskCount()I
    .locals 1

    .line 1214
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->getSurplusQueuedTaskCount()I

    move-result v0

    return v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 5

    .line 552
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    return-object v1

    .line 554
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 556
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 557
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 559
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->expungeStaleExceptions()V

    .line 560
    sget-object v3, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 561
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v0, v4

    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 562
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_1

    .line 563
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_3

    .line 568
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v1

    :catchall_0
    move-exception v0

    .line 565
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    .line 1540
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1543
    :catch_0
    :try_start_1
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$1;

    invoke-direct {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 1556
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    .line 626
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 627
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public static helpQuiesce()V
    .locals 2

    .line 1110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 1111
    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .line 1112
    iget-object v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpQuiescePool(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    goto :goto_0

    .line 1115
    :cond_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->quiesceCommonPool()V

    :goto_0
    return-void
.end method

.method public static inForkJoinPool()Z
    .locals 1

    .line 1163
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    return v0
.end method

.method public static invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;>(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 809
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_9

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_4

    .line 814
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 817
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move-object v4, v1

    move v1, v2

    :goto_0
    const/high16 v5, -0x10000000

    if-ltz v1, :cond_4

    .line 819
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-nez v6, :cond_1

    if-nez v4, :cond_3

    .line 822
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 825
    invoke-virtual {v6}, Lio/netty/util/internal/chmv8/ForkJoinTask;->fork()Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto :goto_1

    .line 826
    :cond_2
    invoke-direct {v6}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doInvoke()I

    move-result v7

    if-ge v7, v5, :cond_3

    if-nez v4, :cond_3

    .line 827
    invoke-virtual {v6}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-gt v3, v2, :cond_7

    .line 830
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v1, :cond_6

    if-eqz v4, :cond_5

    const/4 v6, 0x0

    .line 833
    invoke-virtual {v1, v6}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancel(Z)Z

    goto :goto_3

    .line 834
    :cond_5
    invoke-direct {v1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    move-result v6

    if-ge v6, v5, :cond_6

    .line 835
    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v1

    move-object v4, v1

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    .line 839
    invoke-static {v4}, Lio/netty/util/internal/chmv8/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :cond_8
    return-object p0

    .line 810
    :cond_9
    :goto_4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-static {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->invokeAll([Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    return-object p0
.end method

.method public static invokeAll(Lio/netty/util/internal/chmv8/ForkJoinTask;Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 742
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->fork()Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 743
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doInvoke()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 744
    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->reportException(I)V

    .line 745
    :cond_0
    invoke-direct {p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    move-result p0

    and-int/2addr p0, v1

    if-eq p0, v1, :cond_1

    .line 746
    invoke-direct {p1, p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->reportException(I)V

    :cond_1
    return-void
.end method

.method public static varargs invokeAll([Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 766
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v0

    :goto_0
    const/high16 v4, -0x10000000

    if-ltz v2, :cond_3

    .line 768
    aget-object v5, p0, v2

    if-nez v5, :cond_0

    if-nez v3, :cond_2

    .line 771
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 774
    invoke-virtual {v5}, Lio/netty/util/internal/chmv8/ForkJoinTask;->fork()Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto :goto_1

    .line 775
    :cond_1
    invoke-direct {v5}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doInvoke()I

    move-result v6

    if-ge v6, v4, :cond_2

    if-nez v3, :cond_2

    .line 776
    invoke-virtual {v5}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-gt v1, v0, :cond_6

    .line 779
    aget-object v2, p0, v1

    if-eqz v2, :cond_5

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    .line 782
    invoke-virtual {v2, v5}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancel(Z)Z

    goto :goto_3

    .line 783
    :cond_4
    invoke-direct {v2}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    move-result v5

    if-ge v5, v4, :cond_5

    .line 784
    invoke-virtual {v2}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v2

    move-object v3, v2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    .line 788
    invoke-static {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method protected static peekNextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 1270
    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    goto :goto_0

    .line 1272
    :cond_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->commonSubmitterQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1273
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->peek()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method protected static pollNextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1287
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected static pollTask()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->nextTaskFor(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1507
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1508
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1510
    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private reportException(I)V
    .locals 1

    const/high16 v0, -0x40000000    # -2.0f

    if-eq p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 661
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 659
    :cond_1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 641
    invoke-static {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private setCompletion(I)I
    .locals 7

    .line 259
    :cond_0
    iget v6, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v6, :cond_1

    return v6

    .line 261
    :cond_1
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    or-int v5, v6, p1

    move-object v1, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    ushr-int/lit8 v0, v6, 0x10

    if-eqz v0, :cond_2

    .line 263
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return p1
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 3

    .line 479
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 481
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method static uncheckedThrow(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 651
    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1498
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1499
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    const/high16 p1, -0x40000000    # -2.0f

    .line 871
    invoke-direct {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setCompletion(I)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final compareAndSetForkJoinTaskTag(SS)Z
    .locals 6

    .line 1355
    :cond_0
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    int-to-short v0, v4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1357
    :cond_1
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p2

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 951
    :try_start_0
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 p1, -0x10000000

    .line 956
    invoke-direct {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setCompletion(I)I

    return-void

    :catch_0
    move-exception p1

    .line 953
    invoke-direct {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    return-void
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1

    .line 931
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    return-void
.end method

.method final doExec()I
    .locals 2

    .line 278
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v0, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->exec()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/high16 v0, -0x10000000

    .line 285
    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setCompletion(I)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 282
    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    return v0

    :cond_0
    :goto_0
    return v0
.end method

.method protected abstract exec()Z
.end method

.method public final fork()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "TV;>;"
        }
    .end annotation

    .line 683
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 684
    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->push(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    goto :goto_0

    .line 686
    :cond_0
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    invoke-virtual {v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    :goto_0
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 983
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->externalInterruptibleAwaitDone()I

    move-result v0

    :goto_0
    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-eq v0, v1, :cond_3

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 988
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 989
    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 990
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 987
    :cond_3
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1009
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_16

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    .line 1013
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 1015
    iget v2, v7, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v2, :cond_11

    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-lez v3, :cond_11

    .line 1016
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v10, v2, v0

    .line 1019
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 1020
    instance-of v3, v2, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1021
    check-cast v2, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .line 1022
    iget-object v4, v2, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 1023
    iget-object v2, v2, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .line 1024
    invoke-virtual {v4, v2, v7}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpJoinOnce(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    move-object v13, v2

    move-object v12, v4

    goto :goto_1

    .line 1026
    :cond_0
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    if-eqz v2, :cond_2

    .line 1027
    instance-of v3, v7, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v3, :cond_1

    .line 1028
    move-object v3, v7

    check-cast v3, Lio/netty/util/internal/chmv8/CountedCompleter;

    invoke-virtual {v2, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalHelpComplete(Lio/netty/util/internal/chmv8/CountedCompleter;)I

    goto :goto_0

    .line 1029
    :cond_1
    invoke-virtual {v2, v7}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryExternalUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    :cond_2
    :goto_0
    move-object v12, v4

    move-object v13, v12

    :goto_1
    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1035
    :cond_3
    :goto_2
    :try_start_0
    iget v5, v7, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v5, :cond_d

    if-eqz v13, :cond_4

    .line 1036
    iget v2, v13, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v2, :cond_4

    .line 1037
    invoke-static/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancelIgnoringExceptions(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    goto :goto_2

    :cond_4
    if-nez v15, :cond_6

    if-eqz v12, :cond_5

    .line 1039
    iget-wide v2, v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    invoke-virtual {v12, v2, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryCompensate(J)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_5
    const/4 v15, 0x1

    goto :goto_2

    .line 1043
    :cond_6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v0, v3, v8

    if-lez v0, :cond_9

    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v17, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 v0, 0x10000

    or-int v6, v5, v0

    move-object/from16 v2, p0

    move/from16 v19, v15

    move-wide v14, v3

    move-wide/from16 v3, v17

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1045
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1046
    :try_start_2
    iget v0, v7, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ltz v0, :cond_7

    .line 1048
    :try_start_3
    invoke-virtual {v7, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    if-nez v12, :cond_8

    const/16 v16, 0x1

    goto :goto_3

    .line 1055
    :cond_7
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 1056
    :cond_8
    :goto_3
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_9
    move/from16 v19, v15

    .line 1058
    :cond_a
    :goto_4
    iget v0, v7, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v0, :cond_c

    if-nez v16, :cond_c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v3, 0x0

    sub-long v1, v10, v1

    cmp-long v3, v1, v8

    if-gtz v3, :cond_b

    goto :goto_5

    :cond_b
    move-wide v0, v1

    move/from16 v15, v19

    goto :goto_2

    :cond_c
    :goto_5
    move v2, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_d
    move/from16 v19, v15

    move v2, v5

    :goto_6
    if-eqz v12, :cond_e

    if-eqz v19, :cond_e

    .line 1065
    invoke-virtual {v12}, Lio/netty/util/internal/chmv8/ForkJoinPool;->incrementActiveCount()V

    :cond_e
    if-nez v16, :cond_f

    goto :goto_8

    .line 1068
    :cond_f
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :catchall_2
    move-exception v0

    move/from16 v19, v15

    :goto_7
    if-eqz v12, :cond_10

    if-eqz v19, :cond_10

    .line 1065
    invoke-virtual {v12}, Lio/netty/util/internal/chmv8/ForkJoinPool;->incrementActiveCount()V

    :cond_10
    throw v0

    :cond_11
    :goto_8
    const/high16 v0, -0x10000000

    and-int v1, v2, v0

    if-eq v1, v0, :cond_15

    const/high16 v0, -0x40000000    # -2.0f

    if-eq v1, v0, :cond_14

    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_13

    .line 1076
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_9

    .line 1077
    :cond_12
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1075
    :cond_13
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 1073
    :cond_14
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 1079
    :cond_15
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1010
    :cond_16
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 2

    .line 910
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_1

    .line 911
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getForkJoinTaskTag()S
    .locals 1

    .line 1321
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    int-to-short v0, v0

    return v0
.end method

.method public abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 718
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doInvoke()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 719
    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->reportException(I)V

    .line 720
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 879
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCompletedAbnormally()Z
    .locals 2

    .line 888
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCompletedNormally()Z
    .locals 2

    .line 899
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 875
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final join()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 703
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 704
    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->reportException(I)V

    .line 705
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final quietlyComplete()V
    .locals 1

    const/high16 v0, -0x10000000

    .line 968
    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setCompletion(I)I

    return-void
.end method

.method public final quietlyInvoke()V
    .locals 0

    .line 1098
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doInvoke()I

    return-void
.end method

.method public final quietlyJoin()V
    .locals 0

    .line 1089
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 5

    .line 449
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v0, :cond_2

    .line 450
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 451
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 452
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 454
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->expungeStaleExceptions()V

    .line 455
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 456
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    .line 457
    aget-object v3, v2, v0

    :goto_0
    if-nez v3, :cond_0

    .line 459
    new-instance v3, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    aget-object v4, v2, v0

    invoke-direct {v3, p0, p1, v4}, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;-><init>(Lio/netty/util/internal/chmv8/ForkJoinTask;Ljava/lang/Throwable;Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;)V

    aput-object v3, v2, v0

    goto :goto_1

    .line 462
    :cond_0
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p0, :cond_1

    .line 466
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/high16 p1, -0x80000000

    .line 468
    invoke-direct {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setCompletion(I)I

    move-result v0

    goto :goto_2

    .line 457
    :cond_1
    :try_start_1
    iget-object v3, v3, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 466
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    :goto_2
    return v0
.end method

.method public reinitialize()V
    .locals 2

    .line 1135
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1136
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->clearExceptionalCompletion()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1138
    iput v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    :goto_0
    return-void
.end method

.method public final setForkJoinTaskTag(S)S
    .locals 7

    .line 1333
    :cond_0
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    iget v6, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    const/high16 v1, -0x10000

    and-int/2addr v1, v6

    const v4, 0xffff

    and-int/2addr v4, p1

    or-int v5, v1, v4

    move-object v1, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-short p1, v6

    return p1
.end method

.method protected abstract setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method final trySetSignal()Z
    .locals 6

    .line 298
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v4, :cond_0

    .line 299
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tryUnfork()Z
    .locals 2

    .line 1178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->tryUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    invoke-virtual {v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryExternalUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v0

    :goto_0
    return v0
.end method

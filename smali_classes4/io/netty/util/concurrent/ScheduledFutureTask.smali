.class final Lio/netty/util/concurrent/ScheduledFutureTask;
.super Lio/netty/util/concurrent/PromiseTask;
.source "ScheduledFutureTask.java"

# interfaces
.implements Lio/netty/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/PromiseTask<",
        "TV;>;",
        "Lio/netty/util/concurrent/ScheduledFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final START_TIME:J

.field private static final nextTaskId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private deadlineNanos:J

.field private final delayedTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final id:J

.field private final periodNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/ScheduledFutureTask;->nextTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/concurrent/ScheduledFutureTask;->START_TIME:J

    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/Queue;Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/util/Queue<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;",
            "Ljava/lang/Runnable;",
            "TV;J)V"
        }
    .end annotation

    .line 48
    invoke-static {p3, p4}, Lio/netty/util/concurrent/ScheduledFutureTask;->toCallable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/util/concurrent/ScheduledFutureTask;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/Queue;Ljava/util/concurrent/Callable;J)V

    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/Queue;Ljava/util/concurrent/Callable;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/util/Queue<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p3}, Lio/netty/util/concurrent/PromiseTask;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/concurrent/Callable;)V

    .line 38
    sget-object p1, Lio/netty/util/concurrent/ScheduledFutureTask;->nextTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    .line 69
    iput-object p2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->delayedTaskQueue:Ljava/util/Queue;

    .line 70
    iput-wide p4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    const-wide/16 p1, 0x0

    .line 71
    iput-wide p1, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/Queue;Ljava/util/concurrent/Callable;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/util/Queue<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;JJ)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p3}, Lio/netty/util/concurrent/PromiseTask;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/concurrent/Callable;)V

    .line 38
    sget-object p1, Lio/netty/util/concurrent/ScheduledFutureTask;->nextTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    const-wide/16 v0, 0x0

    cmp-long p1, p6, v0

    if-eqz p1, :cond_0

    .line 59
    iput-object p2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->delayedTaskQueue:Ljava/util/Queue;

    .line 60
    iput-wide p4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    .line 61
    iput-wide p6, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "period: 0 (expected: != 0)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static deadlineNanos(J)J
    .locals 2

    .line 35
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method static nanoTime()J
    .locals 4

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lio/netty/util/concurrent/ScheduledFutureTask;->START_TIME:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/ScheduledFutureTask;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 7

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    check-cast p1, Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 103
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    return v2

    :cond_1
    const/4 v5, 0x1

    cmp-long v6, v0, v3

    if-lez v6, :cond_2

    return v5

    .line 108
    :cond_2
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    iget-wide v3, p1, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    cmp-long v6, v0, v3

    if-gez v6, :cond_3

    return v2

    .line 110
    :cond_3
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    iget-wide v2, p1, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    return v5

    .line 111
    :cond_4
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public deadlineNanos()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    return-wide v0
.end method

.method public delayNanos()J
    .locals 4

    .line 84
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v0

    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public delayNanos(J)J
    .locals 4

    .line 88
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v0

    sget-wide v2, Lio/netty/util/concurrent/ScheduledFutureTask;->START_TIME:J

    sub-long/2addr p1, v2

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 76
    invoke-super {p0}, Lio/netty/util/concurrent/PromiseTask;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 93
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->delayNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .locals 5

    .line 121
    :try_start_0
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 122
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->setUncancellableInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->task:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->setSuccessInternal(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->task:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 130
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 133
    iget-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    const/4 v4, 0x0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    .line 137
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->delayedTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->setFailureInternal(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    :cond_2
    :goto_1
    return-void
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .line 150
    invoke-super {p0}, Lio/netty/util/concurrent/PromiseTask;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const-string v1, " id: "

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-wide v1, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deadline: "

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-wide v1, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", period: "

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-wide v1, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method

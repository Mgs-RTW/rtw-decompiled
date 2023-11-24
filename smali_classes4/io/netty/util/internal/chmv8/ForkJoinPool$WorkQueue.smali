.class final Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/chmv8/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkQueue"
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field static final INITIAL_QUEUE_CAPACITY:I = 0x2000

.field static final MAXIMUM_QUEUE_CAPACITY:I = 0x4000000

.field private static final QBASE:J

.field private static final QLOCK:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field array:[Lio/netty/util/internal/chmv8/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field volatile base:I

.field volatile currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field volatile eventCount:I

.field hint:I

.field final mode:S

.field nextWait:I

.field nsteals:I

.field final owner:Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

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

.field volatile pad1c:Ljava/lang/Object;

.field volatile pad1d:Ljava/lang/Object;

.field volatile parker:Ljava/lang/Thread;

.field final pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

.field poolIndex:S

.field volatile qlock:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1055
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->access$000()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1056
    const-class v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .line 1057
    const-class v1, [Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1058
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-string v3, "base"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QBASE:J

    .line 1060
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-string v3, "qlock"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QLOCK:J

    .line 1062
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    .line 1063
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 1066
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    sput v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    return-void

    .line 1065
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "data type scale not a power of two"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1068
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lio/netty/util/internal/chmv8/ForkJoinPool;Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;II)V
    .locals 0

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 677
    iput-object p2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->owner:Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    int-to-short p1, p3

    .line 678
    iput-short p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->mode:S

    .line 679
    iput p4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->hint:I

    const/16 p1, 0x1000

    .line 681
    iput p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    iput p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    return-void
.end method


# virtual methods
.method final cancelAll()V
    .locals 1

    .line 855
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-static {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancelIgnoringExceptions(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 856
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-static {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancelIgnoringExceptions(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 857
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poll()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 858
    invoke-static {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancelIgnoringExceptions(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final externalPopAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 986
    iget v0, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v7, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v7

    const/4 v8, 0x0

    if-gez v0, :cond_4

    iget-object v10, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v10, :cond_4

    .line 987
    array-length v0, v10

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    add-int/lit8 v14, v7, -0x1

    and-int/2addr v0, v14

    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v1

    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v1

    int-to-long v11, v0

    .line 988
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v10, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v1, :cond_4

    .line 989
    move-object/from16 v16, v0

    check-cast v16, Lio/netty/util/internal/chmv8/CountedCompleter;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    :goto_0
    if-ne v1, v0, :cond_2

    .line 991
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    iget v0, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v7, :cond_0

    iget-object v0, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-ne v0, v10, :cond_0

    sget-object v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v0, 0x0

    move-object/from16 v13, v16

    move v2, v14

    move-object v14, v0

    invoke-virtual/range {v9 .. v14}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    iput v2, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 995
    iput v8, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 996
    invoke-virtual/range {v16 .. v16}, Lio/netty/util/internal/chmv8/CountedCompleter;->doExec()I

    goto :goto_1

    .line 999
    :cond_0
    iput v8, v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    :cond_1
    :goto_1
    return v15

    :cond_2
    move v2, v14

    .line 1003
    iget-object v1, v1, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v14, v2

    goto :goto_0

    :cond_4
    :goto_2
    return v8
.end method

.method final growArray()[Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 734
    iget-object v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v6, :cond_0

    .line 735
    array-length v0, v6

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x2000

    :goto_0
    const/high16 v1, 0x4000000

    if-gt v0, v1, :cond_4

    .line 739
    new-array v7, v0, [Lio/netty/util/internal/chmv8/ForkJoinTask;

    iput-object v7, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v6, :cond_3

    .line 740
    array-length v1, v6

    add-int/lit8 v8, v1, -0x1

    if-ltz v8, :cond_3

    iget v9, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v9, v1

    if-lez v2, :cond_3

    add-int/lit8 v10, v0, -0x1

    move v11, v1

    :cond_1
    and-int v0, v11, v8

    .line 745
    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v1

    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v1

    and-int v1, v11, v10

    .line 746
    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v1, v2

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v12, v1, v2

    .line 747
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, v6, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v13, :cond_2

    .line 748
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v1, v6

    move-object v4, v13

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 750
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v1, v12

    invoke-virtual {v0, v7, v1, v2, v13}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    if-ne v11, v9, :cond_1

    :cond_3
    return-object v7

    .line 737
    :cond_4
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Queue capacity exceeded"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final internalPopAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;)Z"
        }
    .end annotation

    .line 1016
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_3

    iget-object v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v3, :cond_3

    .line 1017
    array-length v0, v3

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    sub-int/2addr v1, v8

    and-int/2addr v0, v1

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v2

    int-to-long v4, v0

    .line 1018
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v3, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v2, :cond_3

    .line 1019
    check-cast v0, Lio/netty/util/internal/chmv8/CountedCompleter;

    move-object v2, v0

    :cond_0
    if-ne v2, p1, :cond_2

    .line 1021
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1022
    iput v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 1023
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/CountedCompleter;->doExec()I

    :cond_1
    return v8

    .line 1027
    :cond_2
    iget-object v2, v2, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-nez v2, :cond_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method final isApparentlyUnblocked()Z
    .locals 2

    .line 1040
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->owner:Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isEmpty()Z
    .locals 9

    .line 699
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    if-gez v0, :cond_1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 700
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v0, :cond_1

    array-length v3, v0

    sub-int/2addr v3, v2

    if-ltz v3, :cond_1

    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sub-int/2addr v1, v2

    and-int/2addr v1, v3

    sget v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v1, v3

    int-to-long v5, v1

    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    invoke-virtual {v4, v0, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method final nextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 821
    iget-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->mode:S

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pop()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poll()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final peek()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v0, :cond_2

    .line 829
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    goto :goto_1

    .line 831
    :cond_0
    iget-short v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->mode:S

    if-nez v2, :cond_1

    iget v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    :goto_0
    and-int/2addr v1, v2

    .line 832
    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v1, v2

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v1, v2

    .line 833
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinTask;

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final poll()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 799
    :cond_0
    :goto_0
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v1, v0, v1

    if-gez v1, :cond_3

    iget-object v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v3, :cond_3

    .line 800
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v1, v2

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v1, v2

    .line 801
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v1, :cond_1

    .line 803
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QBASE:J

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, p0, v3, v4, v0}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    return-object v1

    .line 808
    :cond_1
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 809
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 811
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final pollAndExecAll()V
    .locals 1

    .line 867
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poll()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    goto :goto_0

    :cond_0
    return-void
.end method

.method final pollAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;)Z"
        }
    .end annotation

    .line 958
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v1, v0, v1

    if-gez v1, :cond_4

    iget-object v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v3, :cond_4

    .line 959
    array-length v1, v3

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    and-int/2addr v1, v0

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v1, v2

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v1, v2

    int-to-long v4, v1

    .line 960
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v8

    .line 962
    :cond_0
    instance-of v2, v1, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v2, :cond_4

    .line 963
    check-cast v1, Lio/netty/util/internal/chmv8/CountedCompleter;

    move-object v2, v1

    :cond_1
    if-ne v2, p1, :cond_3

    .line 965
    iget p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne p1, v0, :cond_2

    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 967
    sget-object p1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QBASE:J

    add-int/2addr v0, v8

    invoke-virtual {p1, p0, v2, v3, v0}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 968
    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/CountedCompleter;->doExec()I

    :cond_2
    return v8

    .line 972
    :cond_3
    iget-object v2, v2, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-nez v2, :cond_1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method final pollAt(I)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 783
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v1, :cond_0

    .line 784
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v2

    .line 785
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v6, :cond_0

    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, p1, :cond_0

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-wide v2, v3

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QBASE:J

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    return-object v6

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final pop()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 762
    iget-object v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v6, :cond_2

    array-length v0, v6

    add-int/lit8 v7, v0, -0x1

    if-ltz v7, :cond_2

    .line 763
    :cond_0
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v8, v0, -0x1

    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int v0, v8, v0

    if-ltz v0, :cond_2

    and-int v0, v7, v8

    .line 764
    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v1

    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v1

    int-to-long v2, v0

    .line 765
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v6, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-nez v9, :cond_1

    goto :goto_0

    .line 767
    :cond_1
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v1, v6

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iput v8, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    return-object v9

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final push(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 717
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 718
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v1, :cond_1

    .line 719
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 720
    sget-object v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    and-int v4, v2, v0

    sget v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v4, v5

    sget v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    .line 721
    iput v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    iget p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v0, p1

    const/4 p1, 0x2

    if-gt v0, p1, :cond_0

    .line 722
    iget-object p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    iget-object v0, p1, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {p1, v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    .line 724
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->growArray()[Lio/netty/util/internal/chmv8/ForkJoinTask;

    :cond_1
    :goto_0
    return-void
.end method

.method final queueSize()I
    .locals 2

    .line 688
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0
.end method

.method final runTask(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 876
    iput-object p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz p1, :cond_3

    .line 877
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    .line 878
    iget-object p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 879
    iget-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->mode:S

    .line 880
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    const/4 v1, 0x0

    .line 881
    iput-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAndExecAll()V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    .line 885
    array-length v0, p1

    add-int/lit8 v6, v0, -0x1

    .line 886
    :cond_1
    :goto_0
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v7, v0, -0x1

    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int v0, v7, v0

    if-ltz v0, :cond_3

    and-int v0, v6, v7

    .line 887
    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v1

    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v1

    int-to-long v2, v0

    .line 888
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-nez v8, :cond_2

    goto :goto_1

    .line 891
    :cond_2
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    iput v7, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 893
    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method final tryRemoveAndExec(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 910
    iget-object v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v2, :cond_9

    array-length v1, v2

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    if-ltz v1, :cond_9

    iget v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int v5, v3, v4

    if-lez v5, :cond_9

    const/4 v6, 0x1

    :goto_0
    add-int/lit8 v8, v3, -0x1

    and-int v3, v8, v1

    .line 915
    sget v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v3, v9

    sget v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v3, v9

    int-to-long v9, v3

    .line 916
    sget-object v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v3, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-nez v11, :cond_0

    goto :goto_2

    :cond_0
    if-ne v11, p1, :cond_3

    add-int/lit8 v1, v8, 0x1

    .line 920
    iget v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-ne v1, v3, :cond_2

    .line 921
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    move-wide v3, v9

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 923
    :cond_1
    iput v8, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    const/4 v0, 0x1

    goto :goto_2

    .line 926
    :cond_2
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v1, v4, :cond_6

    .line 927
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    new-instance v6, Lio/netty/util/internal/chmv8/ForkJoinPool$EmptyTask;

    invoke-direct {v6}, Lio/netty/util/internal/chmv8/ForkJoinPool$EmptyTask;-><init>()V

    move-wide v3, v9

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 931
    :cond_3
    iget v3, v11, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v3, :cond_4

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v8, 0x1

    .line 933
    iget v12, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-ne v3, v12, :cond_5

    .line 934
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    move-wide v3, v9

    move-object v5, v11

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 935
    iput v8, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_8

    if-nez v6, :cond_6

    .line 939
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v1, v4, :cond_6

    const/4 v7, 0x0

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 945
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    :cond_7
    move v0, v7

    goto :goto_3

    :cond_8
    move v3, v8

    goto :goto_0

    :cond_9
    :goto_3
    return v0
.end method

.method final tryUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 842
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v1, :cond_0

    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    iget v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-eq v0, v2, :cond_0

    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    array-length v3, v1

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    add-int/lit8 v7, v0, -0x1

    and-int v0, v3, v7

    sget v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v3

    sget v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v3

    int-to-long v3, v0

    const/4 v5, 0x0

    move-object v0, v2

    move-wide v2, v3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 845
    iput v7, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    return v6

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

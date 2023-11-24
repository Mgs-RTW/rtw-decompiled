.class public abstract Lio/netty/util/internal/chmv8/CountedCompleter;
.super Lio/netty/util/internal/chmv8/ForkJoinTask;
.source "CountedCompleter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/chmv8/ForkJoinTask<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PENDING:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x489d68f7081983ceL


# instance fields
.field final completer:Lio/netty/util/internal/chmv8/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;"
        }
    .end annotation
.end field

.field volatile pending:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 732
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/CountedCompleter;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    .line 733
    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    const-class v1, Lio/netty/util/internal/chmv8/CountedCompleter;

    const-string v2, "pending"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 736
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    .line 436
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;-><init>()V

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    return-void
.end method

.method protected constructor <init>(Lio/netty/util/internal/chmv8/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 428
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;-><init>()V

    .line 429
    iput-object p1, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    return-void
.end method

.method protected constructor <init>(Lio/netty/util/internal/chmv8/CountedCompleter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;I)V"
        }
    .end annotation

    .line 417
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;-><init>()V

    .line 418
    iput-object p1, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    .line 419
    iput p2, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    return-void
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    .line 749
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 752
    :catch_0
    :try_start_1
    new-instance v0, Lio/netty/util/internal/chmv8/CountedCompleter$1;

    invoke-direct {v0}, Lio/netty/util/internal/chmv8/CountedCompleter$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 765
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final addToPendingCount(I)V
    .locals 6

    .line 517
    :cond_0
    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    iget v4, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    add-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final compareAndSetPendingCount(II)Z
    .locals 6

    .line 529
    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 623
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/CountedCompleter;->setRawResult(Ljava/lang/Object;)V

    .line 624
    invoke-virtual {p0, p0}, Lio/netty/util/internal/chmv8/CountedCompleter;->onCompletion(Lio/netty/util/internal/chmv8/CountedCompleter;)V

    .line 625
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/CountedCompleter;->quietlyComplete()V

    .line 626
    iget-object p1, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz p1, :cond_0

    .line 627
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/CountedCompleter;->tryComplete()V

    :cond_0
    return-void
.end method

.method public abstract compute()V
.end method

.method public final decrementPendingCountUnlessZero()I
    .locals 7

    .line 540
    :cond_0
    iget v6, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    if-eqz v6, :cond_1

    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v6, -0x1

    move-object v1, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v6
.end method

.method protected final exec()Z
    .locals 1

    .line 703
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/CountedCompleter;->compute()V

    const/4 v0, 0x0

    return v0
.end method

.method public final firstComplete()Lio/netty/util/internal/chmv8/CountedCompleter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 641
    :cond_0
    iget v4, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    if-nez v4, :cond_1

    return-object p0

    .line 643
    :cond_1
    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCompleter()Lio/netty/util/internal/chmv8/CountedCompleter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    return-object v0
.end method

.method public final getPendingCount()I
    .locals 1

    .line 498
    iget v0, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    return v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRoot()Lio/netty/util/internal/chmv8/CountedCompleter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;"
        }
    .end annotation

    move-object v0, p0

    .line 553
    :goto_0
    iget-object v1, v0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    .line 694
    :goto_0
    invoke-virtual {v0, p1, v1}, Lio/netty/util/internal/chmv8/CountedCompleter;->onExceptionalCompletion(Ljava/lang/Throwable;Lio/netty/util/internal/chmv8/CountedCompleter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v1, :cond_0

    iget v2, v1, Lio/netty/util/internal/chmv8/CountedCompleter;->status:I

    if-ltz v2, :cond_0

    invoke-virtual {v1, p1}, Lio/netty/util/internal/chmv8/CountedCompleter;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final nextComplete()Lio/netty/util/internal/chmv8/CountedCompleter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/CountedCompleter;->firstComplete()Lio/netty/util/internal/chmv8/CountedCompleter;

    move-result-object v0

    return-object v0

    .line 670
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/CountedCompleter;->quietlyComplete()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCompletion(Lio/netty/util/internal/chmv8/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onExceptionalCompletion(Ljava/lang/Throwable;Lio/netty/util/internal/chmv8/CountedCompleter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lio/netty/util/internal/chmv8/CountedCompleter<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public final propagateCompletion()V
    .locals 7

    move-object v6, p0

    .line 591
    :cond_0
    :goto_0
    iget v4, v6, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    if-nez v4, :cond_2

    .line 592
    iget-object v0, v6, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-nez v0, :cond_1

    .line 593
    invoke-virtual {v6}, Lio/netty/util/internal/chmv8/CountedCompleter;->quietlyComplete()V

    return-void

    :cond_1
    move-object v6, v0

    goto :goto_0

    .line 597
    :cond_2
    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final quietlyCompleteRoot()V
    .locals 2

    move-object v0, p0

    .line 680
    :goto_0
    iget-object v1, v0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-nez v1, :cond_0

    .line 681
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/CountedCompleter;->quietlyComplete()V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final setPendingCount(I)V
    .locals 0

    .line 507
    iput p1, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final tryComplete()V
    .locals 8

    move-object v6, p0

    move-object v7, v6

    .line 567
    :cond_0
    :goto_0
    iget v4, v6, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    if-nez v4, :cond_2

    .line 568
    invoke-virtual {v6, v7}, Lio/netty/util/internal/chmv8/CountedCompleter;->onCompletion(Lio/netty/util/internal/chmv8/CountedCompleter;)V

    .line 569
    iget-object v0, v6, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-nez v0, :cond_1

    .line 570
    invoke-virtual {v6}, Lio/netty/util/internal/chmv8/CountedCompleter;->quietlyComplete()V

    return-void

    :cond_1
    move-object v7, v6

    move-object v6, v0

    goto :goto_0

    .line 574
    :cond_2
    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

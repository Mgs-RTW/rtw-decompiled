.class final Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;
.super Lio/netty/util/internal/chmv8/ForkJoinTask;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/chmv8/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AdaptedRunnableAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/internal/chmv8/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/concurrent/RunnableFuture<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1390
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;-><init>()V

    if-eqz p1, :cond_0

    .line 1392
    iput-object p1, p0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;->runnable:Ljava/lang/Runnable;

    return-void

    .line 1391
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    .line 1396
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 1387
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final run()V
    .locals 0

    .line 1397
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    .line 1387
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

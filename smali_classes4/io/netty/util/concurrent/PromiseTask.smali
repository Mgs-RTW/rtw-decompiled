.class Lio/netty/util/concurrent/PromiseTask;
.super Lio/netty/util/concurrent/DefaultPromise;
.source "PromiseTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/concurrent/PromiseTask$RunnableAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/DefaultPromise<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected final task:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 51
    invoke-static {p2, p3}, Lio/netty/util/concurrent/PromiseTask;->toCallable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/netty/util/concurrent/PromiseTask;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 56
    iput-object p2, p0, Lio/netty/util/concurrent/PromiseTask;->task:Ljava/util/concurrent/Callable;

    return-void
.end method

.method static toCallable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lio/netty/util/concurrent/PromiseTask$RunnableAdapter;

    invoke-direct {v0, p0, p1}, Lio/netty/util/concurrent/PromiseTask$RunnableAdapter;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 61
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/PromiseTask;->setUncancellableInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseTask;->task:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/PromiseTask;->setSuccessInternal(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/PromiseTask;->setFailureInternal(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    :cond_0
    :goto_0
    return-void
.end method

.method public final setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 83
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected final setFailureInternal(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public final setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 102
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected final setSuccessInternal(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public final setUncancellable()Z
    .locals 1

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected final setUncancellableInternal()Z
    .locals 1

    .line 125
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->setUncancellable()Z

    move-result v0

    return v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .line 130
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const-string v1, " task: "

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lio/netty/util/concurrent/PromiseTask;->task:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final tryFailure(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final tryFailureInternal(Ljava/lang/Throwable;)Z
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final trySuccess(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected final trySuccessInternal(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->trySuccess(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

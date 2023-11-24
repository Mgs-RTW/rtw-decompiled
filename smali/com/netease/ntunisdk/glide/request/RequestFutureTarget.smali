.class public Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/request/FutureTarget;
.implements Lcom/netease/ntunisdk/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/request/FutureTarget<",
        "TR;>;",
        "Lcom/netease/ntunisdk/glide/request/RequestListener<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_WAITER:Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;


# instance fields
.field private final assertBackgroundThread:Z

.field private exception:Lcom/netease/ntunisdk/glide/load/engine/GlideException;

.field private final height:I

.field private isCancelled:Z

.field private loadFailed:Z

.field private request:Lcom/netease/ntunisdk/glide/request/Request;

.field private resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private resultReceived:Z

.field private final waiter:Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 85
    sget-object v0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;-><init>(IIZLcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;)V

    return-void
.end method

.method constructor <init>(IIZLcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->width:I

    .line 90
    iput p2, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->height:I

    .line 91
    iput-boolean p3, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    .line 92
    iput-object p4, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->waiter:Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;

    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 192
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Util;->assertBackgroundThread()V

    .line 196
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->isCancelled:Z

    if-nez v0, :cond_9

    .line 198
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->loadFailed:Z

    if-nez v0, :cond_8

    .line 200
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->resultReceived:Z

    if-eqz v0, :cond_1

    .line 201
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    if-nez p1, :cond_2

    .line 205
    :try_start_1
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->waiter:Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0, v0, v1}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 208
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->isDone()Z

    move-result p1

    if-nez p1, :cond_3

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    .line 210
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->waiter:Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;

    sub-long v0, v2, v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 215
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_7

    .line 217
    iget-boolean p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->loadFailed:Z

    if-nez p1, :cond_6

    .line 219
    iget-boolean p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->isCancelled:Z

    if-nez p1, :cond_5

    .line 221
    iget-boolean p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->resultReceived:Z

    if-eqz p1, :cond_4

    .line 225
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 222
    :cond_4
    :try_start_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 220
    :cond_5
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    .line 218
    :cond_6
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->exception:Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 216
    :cond_7
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 199
    :cond_8
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->exception:Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 197
    :cond_9
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 100
    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->isCancelled:Z

    .line 104
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->waiter:Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v1, p0}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->request:Lcom/netease/ntunisdk/glide/request/Request;

    .line 107
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->request:Lcom/netease/ntunisdk/glide/request/Request;

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 109
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 113
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/request/Request;->clear()V

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    .line 109
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    :try_start_0
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 140
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getRequest()Lcom/netease/ntunisdk/glide/request/Request;
    .locals 1

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->request:Lcom/netease/ntunisdk/glide/request/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize(Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;)V
    .locals 2

    .line 146
    iget v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->width:I

    iget v1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->height:I

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->isCancelled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->resultReceived:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->loadFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    monitor-enter p0

    .line 181
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TR;>;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 246
    :try_start_0
    iput-boolean p2, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->loadFailed:Z

    .line 247
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->exception:Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    .line 248
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->waiter:Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 249
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onResourceReady(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/netease/ntunisdk/glide/request/transition/Transition<",
            "-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 188
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TR;>;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 256
    :try_start_0
    iput-boolean p2, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->resultReceived:Z

    .line 257
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;

    .line 258
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->waiter:Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 259
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public removeCallback(Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setRequest(Lcom/netease/ntunisdk/glide/request/Request;)V
    .locals 0

    monitor-enter p0

    .line 156
    :try_start_0
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;->request:Lcom/netease/ntunisdk/glide/request/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

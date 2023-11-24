.class Lio/netty/util/concurrent/SingleThreadEventExecutor$2;
.super Ljava/lang/Object;
.source "SingleThreadEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/SingleThreadEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/ThreadFactory;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/SingleThreadEventExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 114
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->updateLastExecutionTime()V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x29

    const/4 v3, 0x5

    .line 116
    :try_start_0
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 122
    :cond_0
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, v0, :cond_1

    .line 123
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v5

    .line 124
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 123
    invoke-virtual {v5, v6, v4, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    :cond_1
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$5(Lio/netty/util/concurrent/SingleThreadEventExecutor;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 130
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Buggy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v5, Lio/netty/util/concurrent/EventExecutor;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " implementation; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-class v5, Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".confirmShutdown() must be called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "before run() implementation terminates."

    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-interface {v0, v4}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 139
    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 145
    :try_start_2
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An event executor terminated with non-empty task queue ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    :goto_0
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_3
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_4
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v0

    :catchall_1
    move-exception v0

    .line 145
    :try_start_3
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_5
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 157
    throw v0

    :catchall_2
    move-exception v0

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_6
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v0

    :catchall_3
    move-exception v4

    goto/16 :goto_2

    :catch_0
    move-exception v4

    .line 119
    :try_start_4
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v5

    const-string v6, "Unexpected exception from an event executor: "

    invoke-interface {v5, v6, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 122
    :cond_7
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, v0, :cond_8

    .line 123
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v5

    .line 124
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 123
    invoke-virtual {v5, v6, v4, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 139
    :cond_8
    :try_start_5
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v0, :cond_8

    .line 145
    :try_start_6
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An event executor terminated with non-empty task queue ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_1
    return-void

    :catchall_4
    move-exception v0

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_9
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v0

    :catchall_5
    move-exception v0

    .line 145
    :try_start_7
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_a
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 157
    throw v0

    :catchall_6
    move-exception v0

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_b
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v0

    .line 122
    :cond_c
    :goto_2
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v5

    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v0, :cond_d

    .line 123
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v6

    .line 124
    iget-object v7, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 123
    invoke-virtual {v6, v7, v5, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 139
    :cond_d
    :try_start_8
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-eqz v0, :cond_d

    .line 145
    :try_start_9
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_e
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 158
    throw v4

    :catchall_7
    move-exception v0

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_f
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v0

    :catchall_8
    move-exception v0

    .line 145
    :try_start_a
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_10
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 157
    throw v0

    :catchall_9
    move-exception v0

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_11
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v0
.end method

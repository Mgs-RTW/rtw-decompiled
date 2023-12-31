.class public final Lio/netty/channel/ChannelFlushPromiseNotifier;
.super Ljava/lang/Object;
.source "ChannelFlushPromiseNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/ChannelFlushPromiseNotifier$DefaultFlushCheckpoint;,
        Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;
    }
.end annotation


# instance fields
.field private final flushCheckpoints:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final tryNotify:Z

.field private writeCounter:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lio/netty/channel/ChannelFlushPromiseNotifier;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->flushCheckpoints:Ljava/util/Queue;

    .line 40
    iput-boolean p1, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->tryNotify:Z

    return-void
.end method

.method private notifyPromises0(Ljava/lang/Throwable;)V
    .locals 8

    .line 194
    iget-object v0, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->flushCheckpoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    iput-wide v1, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->writeCounter:J

    return-void

    .line 199
    :cond_0
    iget-wide v3, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->writeCounter:J

    .line 201
    :goto_0
    iget-object v0, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->flushCheckpoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;

    if-nez v0, :cond_1

    .line 204
    iput-wide v1, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->writeCounter:J

    goto :goto_1

    .line 208
    :cond_1
    invoke-interface {v0}, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;->flushCheckpoint()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_5

    cmp-long p1, v3, v1

    if-lez p1, :cond_2

    .line 209
    iget-object p1, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->flushCheckpoints:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 210
    iput-wide v1, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->writeCounter:J

    .line 211
    invoke-interface {v0}, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;->flushCheckpoint()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-interface {v0, v5, v6}, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;->flushCheckpoint(J)V

    .line 234
    :cond_2
    :goto_1
    iget-wide v3, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->writeCounter:J

    const-wide v5, 0x8000000000L

    cmp-long p1, v3, v5

    if-ltz p1, :cond_4

    .line 238
    iput-wide v1, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->writeCounter:J

    .line 239
    iget-object p1, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->flushCheckpoints:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;

    .line 240
    invoke-interface {v0}, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;->flushCheckpoint()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;->flushCheckpoint(J)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    .line 216
    :cond_5
    iget-object v5, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->flushCheckpoints:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 217
    invoke-interface {v0}, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;->promise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-nez p1, :cond_7

    .line 219
    iget-boolean v5, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->tryNotify:Z

    if-eqz v5, :cond_6

    .line 220
    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    goto :goto_0

    .line 222
    :cond_6
    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 225
    :cond_7
    iget-boolean v5, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->tryNotify:Z

    if-eqz v5, :cond_8

    .line 226
    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 228
    :cond_8
    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0
.end method


# virtual methods
.method public add(Lio/netty/channel/ChannelPromise;I)Lio/netty/channel/ChannelFlushPromiseNotifier;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p2

    .line 56
    invoke-virtual {p0, p1, v0, v1}, Lio/netty/channel/ChannelFlushPromiseNotifier;->add(Lio/netty/channel/ChannelPromise;J)Lio/netty/channel/ChannelFlushPromiseNotifier;

    move-result-object p1

    return-object p1
.end method

.method public add(Lio/netty/channel/ChannelPromise;J)Lio/netty/channel/ChannelFlushPromiseNotifier;
    .locals 3

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    .line 70
    iget-wide v0, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->writeCounter:J

    add-long/2addr v0, p2

    .line 71
    instance-of p2, p1, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;

    if-eqz p2, :cond_0

    .line 72
    check-cast p1, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;

    .line 73
    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;->flushCheckpoint(J)V

    .line 74
    iget-object p2, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->flushCheckpoints:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    iget-object p2, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->flushCheckpoints:Ljava/util/Queue;

    new-instance p3, Lio/netty/channel/ChannelFlushPromiseNotifier$DefaultFlushCheckpoint;

    invoke-direct {p3, v0, v1, p1}, Lio/netty/channel/ChannelFlushPromiseNotifier$DefaultFlushCheckpoint;-><init>(JLio/netty/channel/ChannelPromise;)V

    invoke-interface {p2, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pendingDataSize must be >= 0 but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "promise"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public increaseWriteCounter(J)Lio/netty/channel/ChannelFlushPromiseNotifier;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 87
    iget-wide v0, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->writeCounter:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->writeCounter:J

    return-object p0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delta must be >= 0 but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyFlushFutures()Lio/netty/channel/ChannelFlushPromiseNotifier;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-virtual {p0}, Lio/netty/channel/ChannelFlushPromiseNotifier;->notifyPromises()Lio/netty/channel/ChannelFlushPromiseNotifier;

    move-result-object v0

    return-object v0
.end method

.method public notifyFlushFutures(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFlushPromiseNotifier;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lio/netty/channel/ChannelFlushPromiseNotifier;->notifyPromises(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFlushPromiseNotifier;

    move-result-object p1

    return-object p1
.end method

.method public notifyFlushFutures(Ljava/lang/Throwable;Ljava/lang/Throwable;)Lio/netty/channel/ChannelFlushPromiseNotifier;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/ChannelFlushPromiseNotifier;->notifyPromises(Ljava/lang/Throwable;Ljava/lang/Throwable;)Lio/netty/channel/ChannelFlushPromiseNotifier;

    move-result-object p1

    return-object p1
.end method

.method public notifyPromises()Lio/netty/channel/ChannelFlushPromiseNotifier;
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0}, Lio/netty/channel/ChannelFlushPromiseNotifier;->notifyPromises0(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public notifyPromises(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFlushPromiseNotifier;
    .locals 2

    .line 130
    invoke-virtual {p0}, Lio/netty/channel/ChannelFlushPromiseNotifier;->notifyPromises()Lio/netty/channel/ChannelFlushPromiseNotifier;

    .line 132
    :goto_0
    iget-object v0, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->flushCheckpoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;

    if-nez v0, :cond_0

    return-object p0

    .line 136
    :cond_0
    iget-boolean v1, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->tryNotify:Z

    if-eqz v1, :cond_1

    .line 137
    invoke-interface {v0}, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;->promise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 139
    :cond_1
    invoke-interface {v0}, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;->promise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0
.end method

.method public notifyPromises(Ljava/lang/Throwable;Ljava/lang/Throwable;)Lio/netty/channel/ChannelFlushPromiseNotifier;
    .locals 1

    .line 170
    invoke-direct {p0, p1}, Lio/netty/channel/ChannelFlushPromiseNotifier;->notifyPromises0(Ljava/lang/Throwable;)V

    .line 172
    :goto_0
    iget-object p1, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->flushCheckpoints:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;

    if-nez p1, :cond_0

    return-object p0

    .line 176
    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->tryNotify:Z

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {p1}, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;->promise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 179
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;->promise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0
.end method

.method public writeCounter()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lio/netty/channel/ChannelFlushPromiseNotifier;->writeCounter:J

    return-wide v0
.end method

.class public final Lio/netty/channel/PendingWriteQueue;
.super Ljava/lang/Object;
.source "PendingWriteQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/PendingWriteQueue$PendingWrite;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final buffer:Lio/netty/channel/ChannelOutboundBuffer;

.field private final ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

.field private head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

.field private size:I

.field private tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lio/netty/channel/PendingWriteQueue;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/PendingWriteQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 45
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 46
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/ChannelConfig;->getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/MessageSizeEstimator;->newHandle()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ctx"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private assertEmpty()V
    .locals 0

    return-void
.end method

.method private recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V
    .locals 4

    .line 220
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$3(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lio/netty/channel/PendingWriteQueue;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$2(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(J)V

    .line 223
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$6(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 224
    iget p1, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    goto :goto_0

    .line 230
    :cond_0
    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    :goto_0
    return-void
.end method

.method private static safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 2

    .line 236
    instance-of v0, p0, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    sget-object v0, Lio/netty/channel/PendingWriteQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to mark a promise as failure because it\'s done already: {}"

    invoke-interface {v0, v1, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 76
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

    invoke-interface {v0, p1}, Lio/netty/channel/MessageSizeEstimator$Handle;->size(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 81
    :cond_0
    invoke-static {p1, v0, p2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->newInstance(Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object p1

    .line 82
    iget-object p2, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez p2, :cond_1

    .line 84
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p2, p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$1(Lio/netty/channel/PendingWriteQueue$PendingWrite;Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 87
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 89
    :goto_0
    iget p2, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 90
    iget-object p2, p0, Lio/netty/channel/PendingWriteQueue;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$2(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lio/netty/channel/ChannelOutboundBuffer;->incrementPendingOutboundBytes(J)V

    return-void

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "promise"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "msg"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public current()Ljava/lang/Object;
    .locals 1

    .line 212
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove()Lio/netty/channel/ChannelPromise;
    .locals 3

    .line 197
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$5(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 202
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 203
    invoke-direct {p0, v0}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    return-object v1
.end method

.method public removeAndFail(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 128
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$5(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 129
    invoke-static {v1, p1}, Lio/netty/channel/PendingWriteQueue;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 130
    invoke-direct {p0, v0}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    return-void

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cause"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAndFailAll(Ljava/lang/Throwable;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 102
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    :goto_0
    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue;->assertEmpty()V

    return-void

    .line 104
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$3(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v1

    .line 105
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 106
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$5(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v2

    .line 107
    invoke-direct {p0, v0}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 108
    invoke-static {v2, p1}, Lio/netty/channel/PendingWriteQueue;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cause"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAndWrite()Lio/netty/channel/ChannelFuture;
    .locals 3

    .line 179
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$5(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v2

    .line 185
    invoke-direct {p0, v0}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 186
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, v1, v2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAndWriteAll()Lio/netty/channel/ChannelFuture;
    .locals 7

    .line 142
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    iget v1, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lio/netty/channel/PendingWriteQueue;->removeAndWrite()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 151
    :cond_1
    iget-object v1, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 152
    new-instance v3, Lio/netty/channel/ChannelPromiseAggregator;

    invoke-direct {v3, v1}, Lio/netty/channel/ChannelPromiseAggregator;-><init>(Lio/netty/channel/ChannelPromise;)V

    :goto_0
    if-nez v0, :cond_2

    .line 162
    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue;->assertEmpty()V

    return-object v1

    .line 154
    :cond_2
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$3(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v4

    .line 155
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v5

    .line 156
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$5(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v6

    .line 157
    invoke-direct {p0, v0}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 158
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, v5, v6}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 159
    new-array v0, v2, [Lio/netty/channel/ChannelPromise;

    const/4 v5, 0x0

    aput-object v6, v0, v5

    invoke-virtual {v3, v0}, Lio/netty/channel/ChannelPromiseAggregator;->add([Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromiseAggregator;

    move-object v0, v4

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .line 62
    iget v0, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    return v0
.end method

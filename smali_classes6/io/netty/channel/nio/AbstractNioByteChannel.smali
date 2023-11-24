.class public abstract Lio/netty/channel/nio/AbstractNioByteChannel;
.super Lio/netty/channel/nio/AbstractNioChannel;
.source "AbstractNioByteChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;
    }
.end annotation


# static fields
.field private static final EXPECTED_TYPES:Ljava/lang/String;


# instance fields
.field private flushTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " (expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lio/netty/buffer/ByteBuf;

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-class v1, Lio/netty/channel/FileRegion;

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    sput-object v0, Lio/netty/channel/nio/AbstractNioByteChannel;->EXPECTED_TYPES:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;)V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/nio/AbstractNioChannel;-><init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;I)V

    return-void
.end method


# virtual methods
.method protected final clearOpWrite()V
    .locals 3

    .line 334
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    and-int/lit8 v1, v1, -0x5

    .line 343
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    return-void
.end method

.method protected abstract doReadBytes(Lio/netty/buffer/ByteBuf;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 181
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 184
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->clearOpWrite()V

    goto/16 :goto_7

    .line 188
    :cond_0
    instance-of v5, v4, Lio/netty/buffer/ByteBuf;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_7

    .line 189
    move-object v5, v4

    check-cast v5, Lio/netty/buffer/ByteBuf;

    .line 190
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-nez v4, :cond_1

    .line 192
    invoke-virtual/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    .line 200
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/ChannelConfig;->getWriteSpinCount()I

    move-result v3

    :cond_2
    move v10, v3

    add-int/lit8 v3, v10, -0x1

    :goto_1
    if-gez v3, :cond_3

    :goto_2
    const/4 v9, 0x0

    goto :goto_3

    .line 203
    :cond_3
    invoke-virtual {v0, v5}, Lio/netty/channel/nio/AbstractNioByteChannel;->doWriteBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    int-to-long v11, v4

    add-long/2addr v6, v11

    .line 210
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    .line 216
    :goto_3
    invoke-virtual {v1, v6, v7}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    if-eqz v8, :cond_5

    .line 219
    invoke-virtual/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    move v3, v10

    goto :goto_0

    .line 221
    :cond_5
    invoke-virtual {v0, v9}, Lio/netty/channel/nio/AbstractNioByteChannel;->incompleteWrite(Z)V

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 224
    :cond_7
    instance-of v5, v4, Lio/netty/channel/FileRegion;

    if-eqz v5, :cond_d

    .line 225
    check-cast v4, Lio/netty/channel/FileRegion;

    if-ne v3, v2, :cond_8

    .line 230
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/ChannelConfig;->getWriteSpinCount()I

    move-result v3

    :cond_8
    add-int/lit8 v5, v3, -0x1

    move-wide v10, v6

    :goto_4
    if-gez v5, :cond_9

    :goto_5
    const/4 v9, 0x0

    goto :goto_6

    .line 233
    :cond_9
    invoke-virtual {v0, v4}, Lio/netty/channel/nio/AbstractNioByteChannel;->doWriteFileRegion(Lio/netty/channel/FileRegion;)J

    move-result-wide v12

    cmp-long v14, v12, v6

    if-nez v14, :cond_a

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    add-long/2addr v10, v12

    .line 240
    invoke-interface {v4}, Lio/netty/channel/FileRegion;->transfered()J

    move-result-wide v12

    invoke-interface {v4}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-ltz v16, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    .line 246
    :goto_6
    invoke-virtual {v1, v10, v11}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    if-eqz v8, :cond_b

    .line 249
    invoke-virtual/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto/16 :goto_0

    .line 251
    :cond_b
    invoke-virtual {v0, v9}, Lio/netty/channel/nio/AbstractNioByteChannel;->incompleteWrite(Z)V

    :goto_7
    return-void

    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 256
    :cond_d
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1
.end method

.method protected abstract doWriteBytes(Lio/netty/buffer/ByteBuf;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doWriteFileRegion(Lio/netty/channel/FileRegion;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 263
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_1

    .line 264
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 265
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 269
    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    .line 272
    :cond_1
    instance-of v0, p1, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_2

    return-object p1

    .line 276
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/netty/channel/nio/AbstractNioByteChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final incompleteWrite(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->setOpWrite()V

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lio/netty/channel/nio/AbstractNioByteChannel;->flushTask:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    .line 288
    new-instance p1, Lio/netty/channel/nio/AbstractNioByteChannel$1;

    invoke-direct {p1, p0}, Lio/netty/channel/nio/AbstractNioByteChannel$1;-><init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V

    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioByteChannel;->flushTask:Ljava/lang/Runnable;

    .line 295
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/channel/nio/NioEventLoop;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
    .locals 2

    .line 57
    new-instance v0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioByteChannel;Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;)V

    return-object v0
.end method

.method protected final setOpWrite()V
    .locals 3

    .line 320
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    or-int/lit8 v1, v1, 0x4

    .line 329
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    return-void
.end method

.class final Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;
.super Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
.source "AbstractNioByteChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioByteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NioByteUnsafe"
.end annotation


# instance fields
.field private allocHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

.field final synthetic this$0:Lio/netty/channel/nio/AbstractNioByteChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioChannel;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/nio/AbstractNioByteChannel;Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V

    return-void
.end method

.method private closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->setInputShutdown()V

    .line 66
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v2}, Lio/netty/channel/nio/AbstractNioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    sget-object v3, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iget v2, v2, Lio/netty/channel/nio/AbstractNioByteChannel;->readInterestOp:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 69
    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;Z)V
    .locals 2

    if-eqz p2, :cond_1

    .line 79
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->setReadPending(Z)V

    .line 81
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 86
    :cond_1
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 87
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    if-nez p4, :cond_2

    .line 88
    instance-of p2, p3, Ljava/io/IOException;

    if-eqz p2, :cond_3

    .line 89
    :cond_2
    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public read()V
    .locals 15

    .line 95
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->isReadPending()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->removeReadOp()V

    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 103
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 104
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getMaxMessagesPerRead()I

    move-result v3

    .line 105
    iget-object v4, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->allocHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    if-nez v4, :cond_1

    .line 107
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/RecvByteBufAllocator;->newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v4

    iput-object v4, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->allocHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_2
    const/4 v9, 0x0

    .line 117
    :try_start_0
    invoke-interface {v4, v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    invoke-virtual {v10}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v11

    .line 119
    iget-object v12, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v12, v10}, Lio/netty/channel/nio/AbstractNioByteChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v12

    const v13, 0x7fffffff

    const/4 v14, 0x1

    if-gtz v12, :cond_4

    .line 122
    invoke-virtual {v10}, Lio/netty/buffer/ByteBuf;->release()Z

    if-gez v12, :cond_3

    const/4 v5, 0x1

    :cond_3
    move-object v9, v10

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    .line 128
    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v6, v5}, Lio/netty/channel/nio/AbstractNioByteChannel;->setReadPending(Z)V

    const/4 v6, 0x1

    .line 130
    :cond_5
    invoke-interface {v1, v10}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v10, v13, v12

    if-lt v7, v10, :cond_6

    const v7, 0x7fffffff

    goto :goto_0

    :cond_6
    add-int/2addr v7, v12

    .line 142
    :try_start_2
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_0

    :cond_7
    if-ge v12, v11, :cond_8

    goto :goto_0

    :cond_8
    add-int/2addr v8, v14

    if-lt v8, v3, :cond_2

    .line 153
    :goto_0
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 154
    invoke-interface {v4, v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->record(I)V

    if-eqz v5, :cond_9

    .line 157
    invoke-direct {p0, v1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :cond_9
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->isReadPending()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v10, v9

    .line 161
    :goto_1
    :try_start_3
    invoke-direct {p0, v1, v10, v2, v5}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->isReadPending()Z

    move-result v0

    if-nez v0, :cond_a

    .line 170
    :goto_2
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->removeReadOp()V

    :cond_a
    return-void

    .line 169
    :goto_3
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->isReadPending()Z

    move-result v0

    if-nez v0, :cond_b

    .line 170
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->removeReadOp()V

    .line 172
    :cond_b
    throw v1
.end method

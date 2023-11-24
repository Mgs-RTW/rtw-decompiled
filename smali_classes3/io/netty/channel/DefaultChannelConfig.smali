.class public Lio/netty/channel/DefaultChannelConfig;
.super Ljava/lang/Object;
.source "DefaultChannelConfig.java"

# interfaces
.implements Lio/netty/channel/ChannelConfig;


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x7530

.field private static final DEFAULT_MSG_SIZE_ESTIMATOR:Lio/netty/channel/MessageSizeEstimator;

.field private static final DEFAULT_RCVBUF_ALLOCATOR:Lio/netty/channel/RecvByteBufAllocator;


# instance fields
.field private volatile allocator:Lio/netty/buffer/ByteBufAllocator;

.field private volatile autoClose:Z

.field private volatile autoRead:Z

.field protected final channel:Lio/netty/channel/Channel;

.field private volatile connectTimeoutMillis:I

.field private volatile maxMessagesPerRead:I

.field private volatile msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

.field private volatile rcvBufAllocator:Lio/netty/channel/RecvByteBufAllocator;

.field private volatile writeBufferHighWaterMark:I

.field private volatile writeBufferLowWaterMark:I

.field private volatile writeSpinCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->DEFAULT:Lio/netty/channel/AdaptiveRecvByteBufAllocator;

    sput-object v0, Lio/netty/channel/DefaultChannelConfig;->DEFAULT_RCVBUF_ALLOCATOR:Lio/netty/channel/RecvByteBufAllocator;

    .line 34
    sget-object v0, Lio/netty/channel/DefaultMessageSizeEstimator;->DEFAULT:Lio/netty/channel/MessageSizeEstimator;

    sput-object v0, Lio/netty/channel/DefaultChannelConfig;->DEFAULT_MSG_SIZE_ESTIMATOR:Lio/netty/channel/MessageSizeEstimator;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    iput-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->allocator:Lio/netty/buffer/ByteBufAllocator;

    .line 41
    sget-object v0, Lio/netty/channel/DefaultChannelConfig;->DEFAULT_RCVBUF_ALLOCATOR:Lio/netty/channel/RecvByteBufAllocator;

    iput-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->rcvBufAllocator:Lio/netty/channel/RecvByteBufAllocator;

    .line 42
    sget-object v0, Lio/netty/channel/DefaultChannelConfig;->DEFAULT_MSG_SIZE_ESTIMATOR:Lio/netty/channel/MessageSizeEstimator;

    iput-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

    const/16 v0, 0x7530

    .line 44
    iput v0, p0, Lio/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    const/16 v0, 0x10

    .line 46
    iput v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeSpinCount:I

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lio/netty/channel/DefaultChannelConfig;->autoRead:Z

    .line 48
    iput-boolean v1, p0, Lio/netty/channel/DefaultChannelConfig;->autoClose:Z

    const/high16 v2, 0x10000

    .line 49
    iput v2, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferHighWaterMark:I

    const v2, 0x8000

    .line 50
    iput v2, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferLowWaterMark:I

    if-eqz p1, :cond_2

    .line 56
    iput-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    .line 58
    instance-of v2, p1, Lio/netty/channel/ServerChannel;

    if-nez v2, :cond_1

    instance-of p1, p1, Lio/netty/channel/nio/AbstractNioByteChannel;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iput v1, p0, Lio/netty/channel/DefaultChannelConfig;->maxMessagesPerRead:I

    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    iput v0, p0, Lio/netty/channel/DefaultChannelConfig;->maxMessagesPerRead:I

    :goto_1
    return-void

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "channel"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected autoReadCleared()V
    .locals 0

    return-void
.end method

.method public getAllocator()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 232
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public getConnectTimeoutMillis()I
    .locals 1

    .line 188
    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    return v0
.end method

.method public getMaxMessagesPerRead()I
    .locals 1

    .line 203
    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->maxMessagesPerRead:I

    return v0
.end method

.method public getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;
    .locals 1

    .line 336
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

    return-object v0
.end method

.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 114
    sget-object v0, Lio/netty/channel/ChannelOption;->CONNECT_TIMEOUT_MILLIS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getConnectTimeoutMillis()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getMaxMessagesPerRead()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 120
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_SPIN_COUNT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteSpinCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 123
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 124
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    return-object p1

    .line 126
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->RCVBUF_ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 127
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object p1

    return-object p1

    .line 129
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 130
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->isAutoRead()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 132
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_CLOSE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 133
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->isAutoClose()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 135
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_HIGH_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 136
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferHighWaterMark()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 138
    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_LOW_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 139
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferLowWaterMark()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 141
    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->MESSAGE_SIZE_ESTIMATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 142
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "option"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOptions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 73
    new-array v0, v0, [Lio/netty/channel/ChannelOption;

    .line 74
    sget-object v1, Lio/netty/channel/ChannelOption;->CONNECT_TIMEOUT_MILLIS:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_READ:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->WRITE_SPIN_COUNT:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 75
    sget-object v1, Lio/netty/channel/ChannelOption;->ALLOCATOR:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->AUTO_READ:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->AUTO_CLOSE:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->RCVBUF_ALLOCATOR:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_HIGH_WATER_MARK:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 76
    sget-object v1, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_LOW_WATER_MARK:Lio/netty/channel/ChannelOption;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->MESSAGE_SIZE_ESTIMATOR:Lio/netty/channel/ChannelOption;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v1, v0}, Lio/netty/channel/DefaultChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;[",
            "Lio/netty/channel/ChannelOption<",
            "*>;)",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 82
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 84
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-object p1

    :cond_1
    aget-object v2, p2, v1

    .line 85
    invoke-virtual {p0, v2}, Lio/netty/channel/DefaultChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;
    .locals 1

    .line 246
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->rcvBufAllocator:Lio/netty/channel/RecvByteBufAllocator;

    return-object v0
.end method

.method public getWriteBufferHighWaterMark()I
    .locals 1

    .line 294
    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferHighWaterMark:I

    return v0
.end method

.method public getWriteBufferLowWaterMark()I
    .locals 1

    .line 315
    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferLowWaterMark:I

    return v0
.end method

.method public getWriteSpinCount()I
    .locals 1

    .line 217
    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeSpinCount:I

    return v0
.end method

.method public isAutoClose()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelConfig;->autoClose:Z

    return v0
.end method

.method public isAutoRead()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelConfig;->autoRead:Z

    return v0
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 1

    if-eqz p1, :cond_0

    .line 240
    iput-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object p0

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "allocator"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 288
    iput-boolean p1, p0, Lio/netty/channel/DefaultChannelConfig;->autoClose:Z

    return-object p0
.end method

.method public setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 265
    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelConfig;->autoRead:Z

    .line 266
    iput-boolean p1, p0, Lio/netty/channel/DefaultChannelConfig;->autoRead:Z

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 268
    iget-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    invoke-interface {p1}, Lio/netty/channel/Channel;->read()Lio/netty/channel/Channel;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->autoReadCleared()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 3

    if-ltz p1, :cond_0

    .line 197
    iput p1, p0, Lio/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    return-object p0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    .line 195
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "connectTimeoutMillis: %d (expected: >= 0)"

    .line 194
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 3

    if-lez p1, :cond_0

    .line 211
    iput p1, p0, Lio/netty/channel/DefaultChannelConfig;->maxMessagesPerRead:I

    return-object p0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxMessagesPerRead: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: > 0)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 1

    if-eqz p1, :cond_0

    .line 344
    iput-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

    return-object p0

    .line 342
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "estimator"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/DefaultChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 152
    sget-object v0, Lio/netty/channel/ChannelOption;->CONNECT_TIMEOUT_MILLIS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 153
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;

    goto/16 :goto_0

    .line 154
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 155
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 156
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_SPIN_COUNT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 157
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 158
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 159
    check-cast p2, Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p0, p2}, Lio/netty/channel/DefaultChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 160
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->RCVBUF_ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 161
    check-cast p2, Lio/netty/channel/RecvByteBufAllocator;

    invoke-virtual {p0, p2}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 162
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 163
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 164
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_CLOSE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 165
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 166
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_HIGH_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 167
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 168
    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_LOW_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 169
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 170
    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->MESSAGE_SIZE_ESTIMATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 171
    check-cast p2, Lio/netty/channel/MessageSizeEstimator;

    invoke-virtual {p0, p2}, Lio/netty/channel/DefaultChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public setOptions(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 98
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/channel/ChannelOption;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lio/netty/channel/DefaultChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "options"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 1

    if-eqz p1, :cond_0

    .line 254
    iput-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->rcvBufAllocator:Lio/netty/channel/RecvByteBufAllocator;

    return-object p0

    .line 252
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "allocator"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 3

    .line 299
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v0

    if-lt p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 309
    iput p1, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferHighWaterMark:I

    return-object p0

    .line 306
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writeBufferHighWaterMark must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 3

    .line 320
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 330
    iput p1, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferLowWaterMark:I

    return-object p0

    .line 327
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writeBufferLowWaterMark must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 1

    if-lez p1, :cond_0

    .line 226
    iput p1, p0, Lio/netty/channel/DefaultChannelConfig;->writeSpinCount:I

    return-object p0

    .line 223
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writeSpinCount must be a positive integer."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1, p2}, Lio/netty/channel/ChannelOption;->validate(Ljava/lang/Object;)V

    return-void

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "option"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

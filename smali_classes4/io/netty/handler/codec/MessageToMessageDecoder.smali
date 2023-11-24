.class public abstract Lio/netty/handler/codec/MessageToMessageDecoder;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "MessageToMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/ChannelInboundHandlerAdapter;"
    }
.end annotation


# instance fields
.field private final matcher:Lio/netty/util/internal/TypeParameterMatcher;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 61
    const-class v0, Lio/netty/handler/codec/MessageToMessageDecoder;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageDecoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TI;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 70
    invoke-static {p1}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/MessageToMessageDecoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    return-void
.end method


# virtual methods
.method public acceptInboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageDecoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-static {}, Lio/netty/util/internal/RecyclableArrayList;->newInstance()Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageToMessageDecoder;->acceptInboundMessage(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 89
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/MessageToMessageDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 92
    throw v2

    .line 94
    :cond_0
    invoke-virtual {v0, p2}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    :goto_0
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result p2

    :goto_1
    if-lt v1, p2, :cond_1

    .line 105
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    return-void

    .line 103
    :cond_1
    invoke-virtual {v0, v1}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 99
    :try_start_3
    new-instance v2, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v2, p2}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p2

    .line 97
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    :goto_2
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_2

    .line 103
    invoke-virtual {v0, v1}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 105
    :cond_2
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 106
    throw p2
.end method

.method protected abstract decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

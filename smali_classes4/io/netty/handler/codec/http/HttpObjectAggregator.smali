.class public Lio/netty/handler/codec/http/HttpObjectAggregator;
.super Lio/netty/handler/codec/MessageToMessageDecoder;
.source "HttpObjectAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;,
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;,
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageDecoder<",
        "Lio/netty/handler/codec/http/HttpObject;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

.field public static final DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS:I = 0x400


# instance fields
.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

.field private final maxContentLength:I

.field private maxCumulationBufferComponents:I

.field private tooLongFrameFound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 57
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    .line 56
    sput-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 74
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>()V

    const/16 v0, 0x400

    .line 63
    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxCumulationBufferComponents:I

    if-lez p1, :cond_0

    .line 80
    iput p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxContentLength:I

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxContentLength must be a positive integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toFullMessage(Lio/netty/handler/codec/http/HttpMessage;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 4

    .line 256
    instance-of v0, p0, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eqz v0, :cond_0

    .line 257
    check-cast p0, Lio/netty/handler/codec/http/FullHttpMessage;

    invoke-interface {p0}, Lio/netty/handler/codec/http/FullHttpMessage;->retain()Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object p0

    return-object p0

    .line 261
    :cond_0
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 262
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;

    .line 263
    check-cast p0, Lio/netty/handler/codec/http/HttpRequest;

    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    new-instance v3, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {v3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>()V

    .line 262
    invoke-direct {v0, p0, v2, v3, v1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;)V

    goto :goto_0

    .line 264
    :cond_1
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_2

    .line 265
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;

    .line 266
    check-cast p0, Lio/netty/handler/codec/http/HttpResponse;

    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    new-instance v3, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {v3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>()V

    .line 265
    invoke-direct {v0, p0, v2, v3, v1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpResponse;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;)V

    :goto_0
    return-object v0

    .line 268
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 233
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->release()Z

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    :cond_0
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/HttpObject;",
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

    .line 117
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    .line 119
    instance-of v1, p2, Lio/netty/handler/codec/http/HttpMessage;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->tooLongFrameFound:Z

    .line 123
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpMessage;

    .line 130
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectAggregator;->CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v3, Lio/netty/handler/codec/http/HttpObjectAggregator$1;

    invoke-direct {v3, p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$1;-><init>(Lio/netty/handler/codec/http/HttpObjectAggregator;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v1, v3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 141
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->getDecoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->removeTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V

    .line 143
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpObjectAggregator;->toFullMessage(Lio/netty/handler/codec/http/HttpMessage;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    return-void

    .line 147
    :cond_1
    instance-of p3, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz p3, :cond_2

    .line 148
    check-cast p2, Lio/netty/handler/codec/http/HttpRequest;

    .line 149
    new-instance p3, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;

    .line 150
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxCumulationBufferComponents:I

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    invoke-direct {p3, p2, p1, v2, v2}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;)V

    .line 149
    iput-object p3, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    goto :goto_0

    .line 151
    :cond_2
    instance-of p1, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz p1, :cond_3

    .line 152
    check-cast p2, Lio/netty/handler/codec/http/HttpResponse;

    .line 153
    new-instance p3, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;

    .line 155
    iget p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxCumulationBufferComponents:I

    invoke-static {p1}, Lio/netty/buffer/Unpooled;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    invoke-direct {p3, p2, p1, v2, v2}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpResponse;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;)V

    .line 153
    iput-object p3, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    .line 161
    :goto_0
    invoke-static {p3}, Lio/netty/handler/codec/http/HttpHeaders;->removeTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V

    goto/16 :goto_3

    .line 157
    :cond_3
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 162
    :cond_4
    instance-of p1, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz p1, :cond_c

    .line 163
    iget-boolean p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->tooLongFrameFound:Z

    if-eqz p1, :cond_6

    .line 164
    instance-of p1, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz p1, :cond_5

    .line 165
    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    :cond_5
    return-void

    .line 173
    :cond_6
    check-cast p2, Lio/netty/handler/codec/http/HttpContent;

    .line 174
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;

    .line 176
    invoke-virtual {p1}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result v1

    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxContentLength:I

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    if-gt v1, v3, :cond_b

    .line 189
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpContent;->retain()Lio/netty/handler/codec/http/HttpContent;

    .line 191
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/netty/buffer/CompositeByteBuf;->addComponent(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    .line 192
    invoke-virtual {p1}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v1

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lio/netty/buffer/CompositeByteBuf;->writerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    .line 196
    :cond_7
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpContent;->getDecoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_8

    .line 198
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpContent;->getDecoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/DecoderResult;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    goto :goto_1

    .line 201
    :cond_8
    instance-of v4, p2, Lio/netty/handler/codec/http/LastHttpContent;

    :goto_1
    if-eqz v4, :cond_a

    .line 205
    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    .line 208
    instance-of v1, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v1, :cond_9

    .line 209
    check-cast p2, Lio/netty/handler/codec/http/LastHttpContent;

    .line 210
    invoke-interface {p2}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->setTrailingHeaders(Lio/netty/handler/codec/http/HttpHeaders;)V

    goto :goto_2

    .line 212
    :cond_9
    new-instance p2, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>()V

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->setTrailingHeaders(Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 216
    :goto_2
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p2

    const-string v1, "Content-Length"

    .line 218
    invoke-virtual {p1}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-virtual {p2, v1, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 221
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    return-void

    .line 177
    :cond_b
    iput-boolean v4, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->tooLongFrameFound:Z

    .line 180
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->release()Z

    .line 181
    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    .line 183
    new-instance p1, Lio/netty/handler/codec/TooLongFrameException;

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "HTTP content length exceeded "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxContentLength:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes."

    .line 185
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-direct {p1, p2}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_c
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method protected bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectAggregator;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V

    return-void
.end method

.method public final getMaxCumulationBufferComponents()I
    .locals 1

    .line 90
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxCumulationBufferComponents:I

    return v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 249
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    if-eqz p1, :cond_0

    .line 250
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->release()Z

    const/4 p1, 0x0

    .line 251
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    :cond_0
    return-void
.end method

.method public final setMaxCumulationBufferComponents(I)V
    .locals 3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    .line 108
    iput p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxCumulationBufferComponents:I

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxCumulationBufferComponents: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: >= 2)"

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "PipelineHttpClientHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    return-void
.end method

.method private handlerError(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V
    .locals 3

    .line 134
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlerError cause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p4

    invoke-interface {p4}, Lio/netty/channel/Channel;->isOpen()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 137
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p4

    invoke-interface {p4}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 139
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->notifySessionResult(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;I)V

    return-void
.end method

.method private notifySessionResult(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;I)V
    .locals 1

    .line 144
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {p1, v0}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p1, p3, p2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/netease/cloud/nos/android/http/HttpResult;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0x31f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    const-string v1, "pipeline channelInactive"

    const/4 v2, 0x1

    .line 112
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->handlerError(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    const-string v1, "Do channelRead"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    check-cast p2, Lio/netty/handler/codec/http/FullHttpResponse;

    .line 50
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    if-nez v0, :cond_0

    .line 52
    sget-object p1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    const-string p2, "pipeline no httpSession"

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 57
    :cond_0
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpResponse;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpResponse;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "received nosInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 62
    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    const-string v3, "no content in response"

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object p2

    invoke-virtual {p2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result p2

    .line 66
    new-instance v2, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v1, v3}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 68
    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery()Z

    move-result v3

    if-nez v3, :cond_2

    .line 69
    invoke-virtual {v0, p2, v1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handleBreakInfo(ILorg/json/JSONObject;)V

    return-void

    .line 74
    :cond_2
    sget-object v3, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v3

    if-eq p2, v3, :cond_3

    const/4 v0, 0x7

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HTTP Response Code:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v2, v0, p2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->handlerError(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    return-void

    :cond_3
    const-string p2, "context"

    .line 80
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "offset"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    const-string p1, "context"

    .line 90
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "offset"

    .line 91
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 93
    invoke-virtual {v0, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setUploadContext(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p2, v2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handleOffset(ILcom/netease/cloud/nos/android/http/HttpResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "post response has not context or offset"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_5
    :goto_1
    new-instance p2, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v0, 0x2bd

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    new-instance v2, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;

    const-string v3, "context or offset is missing in response"

    invoke-direct {v2, v3}, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-direct {p2, v0, v1, v2}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    const/16 v0, 0x8

    const-string v1, "no context or offset in response"

    .line 84
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->handlerError(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "channelWritabilityChanged isWritable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    sget-object v1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    const-string v2, "get PipelineHttpSession from the channel"

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->writeDone()V

    :cond_1
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/netease/cloud/nos/android/http/HttpResult;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v2, p2

    check-cast v2, Ljava/lang/Exception;

    const/16 v3, 0x31f

    invoke-direct {v0, v3, v1, v2}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pipeline exception Caught:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->handlerError(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    return-void
.end method

.method public getLogPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "PipelineHttpClientHandler"

    return-object v0
.end method

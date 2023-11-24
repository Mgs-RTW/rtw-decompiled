.class public Lcom/netease/cloud/nos/android/pipeline/HttpsChannelInitializer;
.super Lio/netty/channel/ChannelInitializer;
.source "HttpsChannelInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/ChannelInitializer<",
        "Lio/netty/channel/socket/SocketChannel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lio/netty/channel/ChannelInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initChannel(Lio/netty/channel/Channel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/netty/channel/socket/SocketChannel;

    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/android/pipeline/HttpsChannelInitializer;->initChannel(Lio/netty/channel/socket/SocketChannel;)V

    return-void
.end method

.method protected initChannel(Lio/netty/channel/socket/SocketChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-interface {p1}, Lio/netty/channel/socket/SocketChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;

    .line 23
    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->getSslEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    const-string v1, "ssl"

    .line 25
    new-instance v2, Lio/netty/handler/ssl/SslHandler;

    invoke-direct {v2, v0}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;)V

    invoke-interface {p1, v1, v2}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    const-string v0, "decoder"

    .line 28
    new-instance v1, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-direct {v1}, Lio/netty/handler/codec/http/HttpResponseDecoder;-><init>()V

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    const-string v0, "encoder"

    .line 29
    new-instance v1, Lio/netty/handler/codec/http/HttpRequestEncoder;

    invoke-direct {v1}, Lio/netty/handler/codec/http/HttpRequestEncoder;-><init>()V

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    const-string v0, "aggregator"

    .line 33
    new-instance v1, Lio/netty/handler/codec/http/HttpObjectAggregator;

    const/high16 v2, 0x100000

    invoke-direct {v1, v2}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(I)V

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    const-string v0, "handler"

    .line 34
    new-instance v1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;

    invoke-direct {v1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;-><init>()V

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method

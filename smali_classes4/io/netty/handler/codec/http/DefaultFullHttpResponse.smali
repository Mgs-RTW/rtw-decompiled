.class public Lio/netty/handler/codec/http/DefaultFullHttpResponse;
.super Lio/netty/handler/codec/http/DefaultHttpResponse;
.source "DefaultFullHttpResponse.java"

# interfaces
.implements Lio/netty/handler/codec/http/FullHttpResponse;


# instance fields
.field private final content:Lio/netty/buffer/ByteBuf;

.field private final trailingHeaders:Lio/netty/handler/codec/http/HttpHeaders;

.field private final validateHeaders:Z


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;Z)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p4}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Z)V

    if-eqz p3, :cond_0

    .line 45
    iput-object p3, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->content:Lio/netty/buffer/ByteBuf;

    .line 46
    new-instance p1, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {p1, p4}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Z)V

    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->trailingHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    .line 47
    iput-boolean p4, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->validateHeaders:Z

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "content"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public content()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->content:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->copy()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->copy()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 5

    .line 101
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    .line 102
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    iget-boolean v4, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->validateHeaders:Z

    .line 101
    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;Z)V

    .line 103
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 104
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->copy()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->copy()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->duplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 5

    .line 110
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    iget-boolean v4, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->validateHeaders:Z

    .line 110
    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;Z)V

    .line 112
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 113
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->duplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public refCnt()I
    .locals 1

    .line 62
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->release(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->retain()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->retain(I)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->retain()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->retain(I)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->retain()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->retain(I)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->retain()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->retain(I)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->retain()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->retain(I)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpResponse;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpResponse;

    return-object p0
.end method

.method public bridge synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(Lio/netty/handler/codec/http/HttpResponseStatus;)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpResponse;->setStatus(Lio/netty/handler/codec/http/HttpResponseStatus;)Lio/netty/handler/codec/http/HttpResponse;

    return-object p0
.end method

.method public bridge synthetic setStatus(Lio/netty/handler/codec/http/HttpResponseStatus;)Lio/netty/handler/codec/http/HttpResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->setStatus(Lio/netty/handler/codec/http/HttpResponseStatus;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->trailingHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

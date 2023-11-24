.class public Lio/netty/handler/codec/http/DefaultLastHttpContent;
.super Lio/netty/handler/codec/http/DefaultHttpContent;
.source "DefaultLastHttpContent.java"

# interfaces
.implements Lio/netty/handler/codec/http/LastHttpContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/DefaultLastHttpContent$TrailingHeaders;
    }
.end annotation


# instance fields
.field private final trailingHeaders:Lio/netty/handler/codec/http/HttpHeaders;

.field private final validateHeaders:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 42
    new-instance p1, Lio/netty/handler/codec/http/DefaultLastHttpContent$TrailingHeaders;

    invoke-direct {p1, p2}, Lio/netty/handler/codec/http/DefaultLastHttpContent$TrailingHeaders;-><init>(Z)V

    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultLastHttpContent;->trailingHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    .line 43
    iput-boolean p2, p0, Lio/netty/handler/codec/http/DefaultLastHttpContent;->validateHeaders:Z

    return-void
.end method

.method private appendHeaders(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->copy()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->copy()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 3

    .line 48
    new-instance v0, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-boolean v2, p0, Lio/netty/handler/codec/http/DefaultLastHttpContent;->validateHeaders:Z

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    .line 49
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->duplicate()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->duplicate()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 3

    .line 55
    new-instance v0, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-boolean v2, p0, Lio/netty/handler/codec/http/DefaultLastHttpContent;->validateHeaders:Z

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    .line 56
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->retain()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->retain(I)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->retain()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->retain(I)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 68
    invoke-super {p0}, Lio/netty/handler/codec/http/DefaultHttpContent;->retain()Lio/netty/handler/codec/http/HttpContent;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpContent;->retain(I)Lio/netty/handler/codec/http/HttpContent;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->retain()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->retain(I)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lio/netty/handler/codec/http/DefaultHttpContent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;->appendHeaders(Ljava/lang/StringBuilder;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultLastHttpContent;->trailingHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method
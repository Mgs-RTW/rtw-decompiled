.class public final Lcom/netease/ntunisdk/okhttp3/Response;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field final body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile cacheControl:Lcom/netease/ntunisdk/okhttp3/CacheControl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final code:I

.field final handshake:Lcom/netease/ntunisdk/okhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final headers:Lcom/netease/ntunisdk/okhttp3/Headers;

.field final message:Ljava/lang/String;

.field final networkResponse:Lcom/netease/ntunisdk/okhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final priorResponse:Lcom/netease/ntunisdk/okhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final protocol:Lcom/netease/ntunisdk/okhttp3/Protocol;

.field final receivedResponseAtMillis:J

.field final request:Lcom/netease/ntunisdk/okhttp3/Request;

.field final sentRequestAtMillis:J


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/Response$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->request:Lcom/netease/ntunisdk/okhttp3/Request;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->request:Lcom/netease/ntunisdk/okhttp3/Request;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->protocol:Lcom/netease/ntunisdk/okhttp3/Protocol;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->protocol:Lcom/netease/ntunisdk/okhttp3/Protocol;

    iget v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->code:I

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->code:I

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->message:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->handshake:Lcom/netease/ntunisdk/okhttp3/Handshake;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->handshake:Lcom/netease/ntunisdk/okhttp3/Handshake;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->headers:Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->headers:Lcom/netease/ntunisdk/okhttp3/Headers;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->networkResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->networkResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->priorResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->priorResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iget-wide v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->sentRequestAtMillis:J

    iput-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->sentRequestAtMillis:J

    iget-wide v0, p1, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->receivedResponseAtMillis:J

    return-void
.end method


# virtual methods
.method public body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Lcom/netease/ntunisdk/okhttp3/CacheControl;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->cacheControl:Lcom/netease/ntunisdk/okhttp3/CacheControl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->headers:Lcom/netease/ntunisdk/okhttp3/Headers;

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/CacheControl;->parse(Lcom/netease/ntunisdk/okhttp3/Headers;)Lcom/netease/ntunisdk/okhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->cacheControl:Lcom/netease/ntunisdk/okhttp3/CacheControl;

    :goto_0
    return-object v0
.end method

.method public cacheResponse()Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Challenge;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const-string v0, "WWW-Authenticate"

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->code:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    const-string v0, "Proxy-Authenticate"

    :goto_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Response;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpHeaders;->parseChallenges(Lcom/netease/ntunisdk/okhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public code()I
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->code:I

    return v0
.end method

.method public handshake()Lcom/netease/ntunisdk/okhttp3/Handshake;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->handshake:Lcom/netease/ntunisdk/okhttp3/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/okhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->headers:Lcom/netease/ntunisdk/okhttp3/Headers;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public headers()Lcom/netease/ntunisdk/okhttp3/Headers;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->headers:Lcom/netease/ntunisdk/okhttp3/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->headers:Lcom/netease/ntunisdk/okhttp3/Headers;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isRedirect()Z
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->code:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isSuccessful()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->networkResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    return-object v0
.end method

.method public newBuilder()Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;-><init>(Lcom/netease/ntunisdk/okhttp3/Response;)V

    return-object v0
.end method

.method public peekBody(J)Lcom/netease/ntunisdk/okhttp3/ResponseBody;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->source()Lcom/netease/ntunisdk/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/okio/BufferedSource;->request(J)Z

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/BufferedSource;->buffer()Lcom/netease/ntunisdk/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Buffer;->clone()Lcom/netease/ntunisdk/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    new-instance v1, Lcom/netease/ntunisdk/okio/Buffer;

    invoke-direct {v1}, Lcom/netease/ntunisdk/okio/Buffer;-><init>()V

    invoke-virtual {v1, v0, p1, p2}, Lcom/netease/ntunisdk/okio/Buffer;->write(Lcom/netease/ntunisdk/okio/Buffer;J)V

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Buffer;->clear()V

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Response;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->contentType()Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object p1

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Buffer;->size()J

    move-result-wide v1

    invoke-static {p1, v1, v2, v0}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->create(Lcom/netease/ntunisdk/okhttp3/MediaType;JLcom/netease/ntunisdk/okio/BufferedSource;)Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

.method public priorResponse()Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->priorResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    return-object v0
.end method

.method public protocol()Lcom/netease/ntunisdk/okhttp3/Protocol;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->protocol:Lcom/netease/ntunisdk/okhttp3/Protocol;

    return-object v0
.end method

.method public receivedResponseAtMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public request()Lcom/netease/ntunisdk/okhttp3/Request;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->request:Lcom/netease/ntunisdk/okhttp3/Request;

    return-object v0
.end method

.method public sentRequestAtMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Response;->protocol:Lcom/netease/ntunisdk/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/okhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Response;->request:Lcom/netease/ntunisdk/okhttp3/Request;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

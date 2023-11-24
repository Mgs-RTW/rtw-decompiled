.class public final Lcom/netease/ntunisdk/okhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/Interceptor;


# instance fields
.field private final cookieJar:Lcom/netease/ntunisdk/okhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/okhttp3/CookieJar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lcom/netease/ntunisdk/okhttp3/CookieJar;

    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/okhttp3/Cookie;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public intercept(Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;)Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->body()Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->contentType()Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "Content-Type"

    invoke-virtual {v5}, Lcom/netease/ntunisdk/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    :cond_0
    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->contentLength()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    const-string v2, "Content-Length"

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    const-string v2, "Transfer-Encoding"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    goto :goto_1

    :cond_1
    const-string v2, "Transfer-Encoding"

    const-string v5, "chunked"

    invoke-virtual {v1, v2, v5}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    const-string v2, "Content-Length"

    goto :goto_0

    :cond_2
    :goto_1
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    if-nez v2, :cond_3

    const-string v2, "Host"

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->hostHeader(Lcom/netease/ntunisdk/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    :cond_3
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "Connection"

    const-string v6, "Keep-Alive"

    invoke-virtual {v1, v2, v6}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    :cond_4
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "Range"

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v5, 0x1

    const-string v2, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v1, v2, v6}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    :cond_5
    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lcom/netease/ntunisdk/okhttp3/CookieJar;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/netease/ntunisdk/okhttp3/CookieJar;->loadForRequest(Lcom/netease/ntunisdk/okhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "Cookie"

    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/okhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    :cond_6
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, "User-Agent"

    invoke-static {}, Lcom/netease/ntunisdk/okhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    :cond_7
    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;->proceed(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lcom/netease/ntunisdk/okhttp3/CookieJar;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v6

    invoke-static {v1, v2, v6}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpHeaders;->receiveHeaders(Lcom/netease/ntunisdk/okhttp3/CookieJar;Lcom/netease/ntunisdk/okhttp3/HttpUrl;Lcom/netease/ntunisdk/okhttp3/Headers;)V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->request(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v0

    if-eqz v5, :cond_8

    const-string v1, "gzip"

    const-string v2, "Content-Encoding"

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/netease/ntunisdk/okhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/netease/ntunisdk/okio/GzipSource;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->source()Lcom/netease/ntunisdk/okio/BufferedSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/okio/GzipSource;-><init>(Lcom/netease/ntunisdk/okio/Source;)V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Headers;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    move-result-object v2

    const-string v5, "Content-Encoding"

    invoke-virtual {v2, v5}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    move-result-object v2

    const-string v5, "Content-Length"

    invoke-virtual {v2, v5}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->headers(Lcom/netease/ntunisdk/okhttp3/Headers;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    const-string v2, "Content-Type"

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;

    invoke-static {v1}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Source;)Lcom/netease/ntunisdk/okio/BufferedSource;

    move-result-object v1

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLcom/netease/ntunisdk/okio/BufferedSource;)V

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->body(Lcom/netease/ntunisdk/okhttp3/ResponseBody;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    :cond_8
    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

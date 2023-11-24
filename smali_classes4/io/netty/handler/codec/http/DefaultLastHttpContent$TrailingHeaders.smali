.class final Lio/netty/handler/codec/http/DefaultLastHttpContent$TrailingHeaders;
.super Lio/netty/handler/codec/http/DefaultHttpHeaders;
.source "DefaultLastHttpContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/DefaultLastHttpContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrailingHeaders"
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Z)V

    return-void
.end method


# virtual methods
.method validateHeaderName0(Ljava/lang/CharSequence;)V
    .locals 3

    .line 104
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderName0(Ljava/lang/CharSequence;)V

    const-string v0, "Content-Length"

    .line 105
    invoke-static {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 106
    invoke-static {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailer"

    .line 107
    invoke-static {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prohibited trailing header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

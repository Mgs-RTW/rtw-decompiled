.class Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream$StreamTimeout;
.super Lcom/netease/ntunisdk/okio/AsyncTimeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Lcom/netease/ntunisdk/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected timedOut()V
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream;

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream;->closeLater(Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream;->connection:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;->sendDegradedPingLater()V

    return-void
.end method

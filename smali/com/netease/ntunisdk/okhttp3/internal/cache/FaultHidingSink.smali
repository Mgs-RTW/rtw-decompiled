.class Lcom/netease/ntunisdk/okhttp3/internal/cache/FaultHidingSink;
.super Lcom/netease/ntunisdk/okio/ForwardingSink;


# instance fields
.field private hasErrors:Z


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okio/Sink;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/okio/ForwardingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/netease/ntunisdk/okio/ForwardingSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/netease/ntunisdk/okio/ForwardingSink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public write(Lcom/netease/ntunisdk/okio/Buffer;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/netease/ntunisdk/okio/Buffer;->skip(J)V

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/netease/ntunisdk/okio/ForwardingSink;->write(Lcom/netease/ntunisdk/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
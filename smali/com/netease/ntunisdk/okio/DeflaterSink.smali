.class public final Lcom/netease/ntunisdk/okio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lcom/netease/ntunisdk/okio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lcom/netease/ntunisdk/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okio/BufferedSink;Ljava/util/zip/Deflater;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 56
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 57
    iput-object p2, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/okio/Sink;Ljava/util/zip/Deflater;)V
    .locals 0

    .line 45
    invoke-static {p1}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/okio/DeflaterSink;-><init>(Lcom/netease/ntunisdk/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private deflate(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/BufferedSink;->buffer()Lcom/netease/ntunisdk/okio/Buffer;

    move-result-object v0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okio/Buffer;->writableSegment(I)Lcom/netease/ntunisdk/okio/Segment;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 94
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v4, v1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v5, v1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_1

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v4, v1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v5, v1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_1
    if-lez v2, :cond_2

    .line 98
    iget v3, v1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    .line 99
    iget-wide v3, v0, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    .line 100
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v1}, Lcom/netease/ntunisdk/okio/BufferedSink;->emitCompleteSegments()Lcom/netease/ntunisdk/okio/BufferedSink;

    goto :goto_0

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget p1, v1, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    iget v2, v1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    if-ne p1, v2, :cond_3

    .line 104
    invoke-virtual {v1}, Lcom/netease/ntunisdk/okio/Segment;->pop()Lcom/netease/ntunisdk/okio/Segment;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    .line 105
    invoke-static {v1}, Lcom/netease/ntunisdk/okio/SegmentPool;->recycle(Lcom/netease/ntunisdk/okio/Segment;)V

    :cond_3
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

    .line 123
    iget-boolean v0, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/okio/DeflaterSink;->finishDeflate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 141
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v1}, Lcom/netease/ntunisdk/okio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_3

    .line 147
    invoke-static {v0}, Lcom/netease/ntunisdk/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method finishDeflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/okio/DeflaterSink;->deflate(Z)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 113
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/okio/DeflaterSink;->deflate(Z)V

    .line 114
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Lcom/netease/ntunisdk/okio/Timeout;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/BufferedSink;->timeout()Lcom/netease/ntunisdk/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeflaterSink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/netease/ntunisdk/okio/Buffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-wide v0, p1, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/netease/ntunisdk/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    .line 65
    iget v1, v0, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v2, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 66
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v4, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/okio/DeflaterSink;->deflate(Z)V

    .line 72
    iget-wide v2, p1, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    .line 73
    iget v2, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    .line 74
    iget v1, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    iget v2, v0, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    if-ne v1, v2, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Segment;->pop()Lcom/netease/ntunisdk/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    .line 76
    invoke-static {v0}, Lcom/netease/ntunisdk/okio/SegmentPool;->recycle(Lcom/netease/ntunisdk/okio/Segment;)V

    :cond_1
    const/4 v0, 0x0

    sub-long/2addr p2, v4

    goto :goto_0
.end method
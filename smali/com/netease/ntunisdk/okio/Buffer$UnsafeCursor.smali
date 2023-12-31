.class public final Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Lcom/netease/ntunisdk/okio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lcom/netease/ntunisdk/okio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2068
    iput-wide v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    .line 2070
    iput v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->start:I

    .line 2071
    iput v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 2291
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2295
    iput-object v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    .line 2296
    iput-object v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->segment:Lcom/netease/ntunisdk/okio/Segment;

    const-wide/16 v1, -0x1

    .line 2297
    iput-wide v1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->offset:J

    .line 2298
    iput-object v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    .line 2299
    iput v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->start:I

    .line 2300
    iput v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->end:I

    return-void

    .line 2292
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final expandBuffer(I)J
    .locals 9

    if-lez p1, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2

    .line 2266
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    if-eqz v1, :cond_1

    .line 2269
    iget-boolean v1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_0

    .line 2273
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v1, v1, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    .line 2274
    iget-object v3, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v3, p1}, Lcom/netease/ntunisdk/okio/Buffer;->writableSegment(I)Lcom/netease/ntunisdk/okio/Segment;

    move-result-object p1

    .line 2275
    iget v3, p1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    .line 2276
    iput v0, p1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    .line 2277
    iget-object v4, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    int-to-long v5, v3

    add-long v7, v1, v5

    iput-wide v7, v4, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    .line 2280
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->segment:Lcom/netease/ntunisdk/okio/Segment;

    .line 2281
    iput-wide v1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->offset:J

    .line 2282
    iget-object p1, p1, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iput-object p1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->data:[B

    rsub-int p1, v3, 0x2000

    .line 2283
    iput p1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->start:I

    .line 2284
    iput v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->end:I

    return-wide v5

    .line 2270
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2267
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2264
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "minByteCount > Segment.SIZE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2261
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "minByteCount <= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final next()I
    .locals 5

    .line 2079
    iget-wide v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v2, v2, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2080
    iget-wide v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 2081
    :cond_0
    iget-wide v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->offset:J

    iget v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 2079
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final resizeBuffer(J)J
    .locals 12

    .line 2179
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    if-eqz v0, :cond_8

    .line 2182
    iget-boolean v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v0, :cond_7

    .line 2186
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v0, v0, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-gtz v4, :cond_3

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    sub-long v4, v0, p1

    :goto_0
    cmp-long v6, v4, v2

    if-gtz v6, :cond_0

    goto :goto_1

    .line 2193
    :cond_0
    iget-object v6, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v6, v6, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    iget-object v6, v6, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    .line 2194
    iget v7, v6, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v8, v6, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    cmp-long v9, v7, v4

    if-gtz v9, :cond_1

    .line 2196
    iget-object v9, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/okio/Segment;->pop()Lcom/netease/ntunisdk/okio/Segment;

    move-result-object v10

    iput-object v10, v9, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    .line 2197
    invoke-static {v6}, Lcom/netease/ntunisdk/okio/SegmentPool;->recycle(Lcom/netease/ntunisdk/okio/Segment;)V

    sub-long/2addr v4, v7

    goto :goto_0

    .line 2200
    :cond_1
    iget v2, v6, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    int-to-long v2, v2

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v6, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    :goto_1
    const/4 v2, 0x0

    .line 2205
    iput-object v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->segment:Lcom/netease/ntunisdk/okio/Segment;

    .line 2206
    iput-wide p1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->offset:J

    .line 2207
    iput-object v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->data:[B

    const/4 v2, -0x1

    .line 2208
    iput v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->start:I

    .line 2209
    iput v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->end:I

    goto :goto_3

    .line 2189
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newSize < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    cmp-long v4, p1, v0

    if-lez v4, :cond_6

    sub-long v4, p1, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    :cond_4
    :goto_2
    cmp-long v8, v4, v2

    if-gtz v8, :cond_5

    goto :goto_3

    .line 2214
    :cond_5
    iget-object v8, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v8, v6}, Lcom/netease/ntunisdk/okio/Buffer;->writableSegment(I)Lcom/netease/ntunisdk/okio/Segment;

    move-result-object v8

    .line 2215
    iget v9, v8, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    rsub-int v9, v9, 0x2000

    int-to-long v9, v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    .line 2216
    iget v10, v8, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    add-int/2addr v10, v9

    iput v10, v8, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    int-to-long v10, v9

    sub-long/2addr v4, v10

    if-eqz v7, :cond_4

    .line 2221
    iput-object v8, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->segment:Lcom/netease/ntunisdk/okio/Segment;

    .line 2222
    iput-wide v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->offset:J

    .line 2223
    iget-object v7, v8, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iput-object v7, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->data:[B

    .line 2224
    iget v7, v8, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    sub-int/2addr v7, v9

    iput v7, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->start:I

    .line 2225
    iget v7, v8, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iput v7, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->end:I

    const/4 v7, 0x0

    goto :goto_2

    .line 2231
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iput-wide p1, v2, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    return-wide v0

    .line 2183
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2180
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final seek(J)I
    .locals 11

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 2090
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v2, v2, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    cmp-long v4, p1, v2

    if-gtz v4, :cond_9

    cmp-long v2, p1, v0

    if-eqz v2, :cond_8

    .line 2095
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v0, v0, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v0, 0x0

    .line 2106
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v2, v2, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    .line 2107
    iget-object v4, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v4, v4, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    .line 2108
    iget-object v5, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v5, v5, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    .line 2109
    iget-object v6, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->segment:Lcom/netease/ntunisdk/okio/Segment;

    if-eqz v6, :cond_2

    .line 2110
    iget-wide v6, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->offset:J

    iget v8, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->start:I

    iget-object v9, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->segment:Lcom/netease/ntunisdk/okio/Segment;

    iget v9, v9, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v6, v8

    cmp-long v8, v6, p1

    if-lez v8, :cond_1

    .line 2114
    iget-object v5, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->segment:Lcom/netease/ntunisdk/okio/Segment;

    move-wide v2, v6

    goto :goto_0

    .line 2118
    :cond_1
    iget-object v4, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->segment:Lcom/netease/ntunisdk/okio/Segment;

    move-wide v0, v6

    :cond_2
    :goto_0
    const/4 v6, 0x0

    sub-long v6, v2, p1

    sub-long v8, p1, v0

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    .line 2128
    :goto_1
    iget v2, v4, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v3, v4, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, p1, v2

    if-gez v5, :cond_3

    goto :goto_3

    .line 2129
    :cond_3
    iget v2, v4, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v3, v4, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2130
    iget-object v4, v4, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    goto :goto_1

    :cond_4
    move-wide v0, v2

    move-object v4, v5

    :goto_2
    cmp-long v2, v0, p1

    if-gtz v2, :cond_7

    .line 2143
    :goto_3
    iget-boolean v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v4, Lcom/netease/ntunisdk/okio/Segment;->shared:Z

    if-eqz v2, :cond_6

    .line 2144
    invoke-virtual {v4}, Lcom/netease/ntunisdk/okio/Segment;->unsharedCopy()Lcom/netease/ntunisdk/okio/Segment;

    move-result-object v2

    .line 2145
    iget-object v3, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v3, v3, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    if-ne v3, v4, :cond_5

    .line 2146
    iget-object v3, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iput-object v2, v3, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    .line 2148
    :cond_5
    invoke-virtual {v4, v2}, Lcom/netease/ntunisdk/okio/Segment;->push(Lcom/netease/ntunisdk/okio/Segment;)Lcom/netease/ntunisdk/okio/Segment;

    move-result-object v4

    .line 2149
    iget-object v2, v4, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okio/Segment;->pop()Lcom/netease/ntunisdk/okio/Segment;

    .line 2153
    :cond_6
    iput-object v4, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->segment:Lcom/netease/ntunisdk/okio/Segment;

    .line 2154
    iput-wide p1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->offset:J

    .line 2155
    iget-object v2, v4, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iput-object v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->data:[B

    .line 2156
    iget v2, v4, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr v2, p1

    iput v2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->start:I

    .line 2157
    iget p1, v4, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iput p1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->end:I

    .line 2158
    iget p1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->end:I

    iget p2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr p1, p2

    return p1

    .line 2137
    :cond_7
    iget-object v4, v4, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    .line 2138
    iget v2, v4, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v3, v4, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_2

    :cond_8
    :goto_4
    const/4 v0, 0x0

    .line 2096
    iput-object v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->segment:Lcom/netease/ntunisdk/okio/Segment;

    .line 2097
    iput-wide p1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->offset:J

    .line 2098
    iput-object v0, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->data:[B

    const/4 p1, -0x1

    .line 2099
    iput p1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->start:I

    .line 2100
    iput p1, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->end:I

    return p1

    .line 2091
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x2

    .line 2092
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object p2, p0, Lcom/netease/ntunisdk/okio/Buffer$UnsafeCursor;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v2, p2, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "offset=%s > size=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2091
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

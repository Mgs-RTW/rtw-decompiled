.class public Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
    }
.end annotation


# instance fields
.field private volatile buf:[B

.field private final byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

.field private count:I

.field private marklimit:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1

    const/high16 v0, 0x10000

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 70
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 71
    const-class p1, [B

    invoke-interface {p2, p3, p1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    iget v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-lt v3, v4, :cond_0

    goto :goto_2

    :cond_0
    if-nez v0, :cond_2

    .line 155
    array-length v0, p2

    if-le v4, v0, :cond_2

    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 157
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v4, :cond_1

    move v0, v4

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v3, [B

    invoke-interface {v1, v0, v3}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 162
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 167
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v1, p2}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_0

    .line 168
    :cond_2
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-lez v0, :cond_3

    .line 169
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-static {p2, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :cond_3
    :goto_0
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 173
    iput v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 174
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 175
    iget p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    if-gtz p1, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr p2, p1

    :goto_1
    iput p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    return p1

    .line 138
    :cond_5
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_6

    .line 140
    iput v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 141
    iput v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 142
    iput p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    :cond_6
    return p1
.end method

.method private static streamClosed()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 86
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 89
    iget v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    .line 87
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 126
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 129
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public declared-synchronized fixMarkLimit()V
    .locals 1

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    array-length v0, v0

    iput v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 195
    iget p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iput p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 225
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 231
    iget v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v4, :cond_0

    .line 233
    monitor-exit p0

    return v4

    .line 236
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v1, :cond_2

    .line 237
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_1

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 244
    :cond_2
    :goto_0
    iget v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_3

    .line 245
    iget v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 247
    :cond_3
    monitor-exit p0

    return v4

    .line 227
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_10

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 274
    monitor-exit p0

    return p1

    .line 276
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_f

    .line 282
    iget v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-ge v2, v3, :cond_4

    .line 284
    iget v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    if-lt v2, p3, :cond_1

    move v2, p3

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    .line 285
    :goto_0
    iget v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    invoke-static {v0, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    if-eq v2, p3, :cond_3

    .line 287
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p2, v2

    sub-int v2, p3, v2

    goto :goto_2

    .line 288
    :cond_3
    :goto_1
    monitor-exit p0

    return v2

    :cond_4
    move v2, p3

    .line 300
    :goto_2
    :try_start_2
    iget v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    array-length v3, v0

    if-lt v2, v3, :cond_6

    .line 301
    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v4, :cond_c

    if-ne v2, p3, :cond_5

    goto :goto_3

    :cond_5
    sub-int v4, p3, v2

    .line 303
    :goto_3
    monitor-exit p0

    return v4

    .line 306
    :cond_6
    :try_start_3
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v3, v4, :cond_8

    if-ne v2, p3, :cond_7

    goto :goto_4

    :cond_7
    sub-int v4, p3, v2

    .line 307
    :goto_4
    monitor-exit p0

    return v4

    .line 310
    :cond_8
    :try_start_4
    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v3, :cond_a

    .line 311
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_9

    goto :goto_5

    .line 313
    :cond_9
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 317
    :cond_a
    :goto_5
    iget v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v4, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    if-lt v3, v2, :cond_b

    move v3, v2

    goto :goto_6

    :cond_b
    iget v3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v4, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    .line 318
    :goto_6
    iget v4, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget v4, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    sub-int/2addr v2, v3

    if-nez v2, :cond_d

    .line 323
    monitor-exit p0

    return p3

    .line 325
    :cond_d
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_e

    sub-int/2addr p3, v2

    .line 326
    monitor-exit p0

    return p3

    :cond_e
    add-int/2addr p2, v3

    goto :goto_2

    .line 278
    :cond_f
    :try_start_6
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 270
    :cond_10
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 344
    iget v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-eq v0, v1, :cond_0

    .line 348
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 345
    :cond_0
    :try_start_1
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mark has been invalidated, pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " markLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-gez v4, :cond_0

    .line 363
    monitor-exit p0

    return-wide v2

    .line 366
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_7

    .line 370
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    .line 375
    iget v4, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v6, v4, p1

    if-ltz v6, :cond_1

    .line 376
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v1, v0

    iput v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-wide p1

    .line 380
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    int-to-long v4, v4

    iget v6, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 381
    iget v6, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iput v6, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 383
    iget v6, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    int-to-long v8, v6

    cmp-long v6, p1, v8

    if-gtz v6, :cond_4

    .line 384
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v7, :cond_2

    .line 385
    monitor-exit p0

    return-wide v4

    .line 387
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v2, p1, v4

    cmp-long v6, v0, v2

    if-ltz v6, :cond_3

    .line 389
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    sub-long/2addr v0, v4

    long-to-int v1, v0

    iput v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    monitor-exit p0

    return-wide p1

    .line 393
    :cond_3
    :try_start_3
    iget p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    int-to-long p1, p1

    add-long/2addr v4, p1

    iget p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long p1, p1

    sub-long/2addr v4, p1

    .line 394
    iget p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iput p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    monitor-exit p0

    return-wide v4

    :cond_4
    sub-long/2addr p1, v4

    .line 400
    :try_start_4
    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-lez v0, :cond_5

    .line 402
    iput v7, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    add-long/2addr v4, p1

    .line 404
    monitor-exit p0

    return-wide v4

    .line 372
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 368
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

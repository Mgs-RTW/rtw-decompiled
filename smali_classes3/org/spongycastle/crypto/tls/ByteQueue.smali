.class public Lorg/spongycastle/crypto/tls/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x400


# instance fields
.field private available:I

.field private databuf:[B

.field private readOnlyBuf:Z

.field private skipped:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    .line 53
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 47
    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    .line 49
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->readOnlyBuf:Z

    if-nez p1, :cond_0

    .line 58
    sget-object p1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    goto :goto_0

    :cond_0
    new-array p1, p1, [B

    :goto_0
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 47
    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    .line 49
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->readOnlyBuf:Z

    .line 63
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    .line 64
    iput p2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 65
    iput p3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->readOnlyBuf:Z

    return-void
.end method

.method public static nextTwoPow(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public addData([BII)V
    .locals 5

    .line 78
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->readOnlyBuf:Z

    if-nez v0, :cond_2

    .line 83
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 85
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v0, p3

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->nextTwoPow(I)I

    move-result v0

    .line 86
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 88
    new-array v0, v0, [B

    .line 89
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    iget v4, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v4, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :goto_0
    iput v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 99
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    iget v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget p1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    return-void

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add data to read-only buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public available()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    return v0
.end method

.method public copyTo(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    if-gt p2, v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot copy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes, only got "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BIII)V
    .locals 2

    .line 137
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1

    .line 142
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    sub-int/2addr v0, p4

    if-lt v0, p3, :cond_0

    .line 146
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    add-int/2addr v1, p4

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not enough data to read"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Buffer size of "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is too small for a read of "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readFrom(I)Ljava/io/ByteArrayInputStream;
    .locals 3

    .line 156
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    if-gt p1, v0, :cond_0

    .line 161
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 163
    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    sub-int/2addr v1, p1

    iput v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    .line 164
    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 166
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    invoke-direct {v1, v2, v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v1

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, only got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeData(I)V
    .locals 3

    .line 176
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    if-gt p1, v0, :cond_0

    .line 184
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    .line 185
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, only got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeData([BIII)V
    .locals 0

    .line 198
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    add-int/2addr p4, p3

    .line 199
    invoke-virtual {p0, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    return-void
.end method

.method public removeData(II)[B
    .locals 2

    .line 204
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    return-object v0
.end method

.method public shrink()V
    .locals 5

    .line 211
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    .line 214
    iput v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    goto :goto_0

    .line 218
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->nextTwoPow(I)I

    move-result v0

    .line 219
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 221
    new-array v0, v0, [B

    .line 222
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    iget v4, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    .line 224
    iput v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    :cond_1
    :goto_0
    return-void
.end method

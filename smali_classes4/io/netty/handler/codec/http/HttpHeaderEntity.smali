.class final Lio/netty/handler/codec/http/HttpHeaderEntity;
.super Ljava/lang/Object;
.source "HttpHeaderEntity.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private final bytes:[B

.field private final hash:I

.field private final name:Ljava/lang/String;

.field private final separatorLen:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/HttpHeaderEntity;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->name:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->hash:I

    .line 35
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 37
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    .line 38
    iput v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->separatorLen:I

    goto :goto_0

    .line 40
    :cond_0
    array-length v1, p2

    iput v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->separatorLen:I

    .line 41
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    .line 42
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    array-length p1, p1

    array-length v2, p2

    invoke-static {p2, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    .line 58
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->separatorLen:I

    sub-int/2addr v0, v1

    if-le v0, p1, :cond_0

    .line 61
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    aget-byte p1, v0, p1

    int-to-char p1, p1

    return p1

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method encode(Lio/netty/buffer/ByteBuf;)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 76
    iget p1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->separatorLen:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method hash()I
    .locals 1

    .line 48
    iget v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->hash:I

    return v0
.end method

.method public length()I
    .locals 2

    .line 53
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->separatorLen:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 66
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/HttpHeaderEntity;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->name:Ljava/lang/String;

    return-object v0
.end method

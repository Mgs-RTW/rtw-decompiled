.class public Lorg/spongycastle/crypto/macs/DSTU7624Mac;
.super Ljava/lang/Object;
.source "DSTU7624Mac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field private static final BITS_IN_BYTE:I = 0x8


# instance fields
.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private c:[B

.field private cTemp:[B

.field private engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

.field private kDelta:[B

.field private macSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    .line 31
    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    .line 32
    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->macSize:I

    .line 33
    iget p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    .line 34
    iget p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    .line 35
    iget p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    .line 36
    iget p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    return-void
.end method

.method private processBlock([BI)V
    .locals 6

    .line 111
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    .line 113
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    iget-object p2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0, v1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    return-void
.end method

.method private xor([BI[BI[B)V
    .locals 3

    .line 153
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-lt v0, v1, :cond_1

    array-length v0, p3

    sub-int/2addr v0, p4

    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-lt v0, v1, :cond_1

    array-length v0, p5

    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-ge v0, v1, :cond_0

    add-int v1, v0, p2

    .line 159
    aget-byte v1, p1, v1

    add-int v2, v0, p4

    aget-byte v2, p3, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 155
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "some of input buffers too short"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    array-length v1, v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 125
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    .line 126
    iget-object v8, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    .line 127
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    invoke-virtual {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 129
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->macSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->macSize:I

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->macSize:I

    return p1

    .line 131
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input must be a multiple of blocksize"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DSTU7624Mac"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 42
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 45
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter passed to DSTU7624Mac"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 4

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 142
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->reset()V

    .line 146
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    invoke-virtual {v0, v2, v1, v3, v1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 147
    iput v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 65
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    .line 68
    iput v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 4

    if-ltz p3, :cond_1

    .line 82
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    .line 83
    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    sub-int v1, v0, v1

    if-le p3, v1, :cond_0

    .line 87
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    .line 91
    iput v3, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_0
    if-le p3, v0, :cond_0

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    return-void

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

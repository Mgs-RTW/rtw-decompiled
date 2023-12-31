.class public Lorg/spongycastle/crypto/macs/DSTU7564Mac;
.super Ljava/lang/Object;
.source "DSTU7564Mac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field private static final BITS_IN_BYTE:I = 0x8


# instance fields
.field private engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

.field private inputLength:J

.field private invertedKey:[B

.field private macSize:I

.field private paddedKey:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    .line 32
    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->macSize:I

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    .line 35
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    return-void
.end method

.method private pad()V
    .locals 7

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v0

    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v3

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    sub-int/2addr v0, v1

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_0
    new-array v0, v0, [B

    const/16 v1, -0x80

    const/4 v2, 0x0

    .line 137
    aput-byte v1, v0, v2

    .line 140
    iget-wide v3, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    const-wide/16 v5, 0x8

    mul-long v3, v3, v5

    array-length v1, v0

    add-int/lit8 v1, v1, -0xc

    invoke-static {v3, v4, v0, v1}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 142
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    return-void
.end method

.method private padKey([B)[B
    .locals 4

    .line 147
    array-length v0, p1

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    mul-int v0, v0, v1

    .line 149
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    array-length v2, p1

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v3

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 152
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_0
    new-array v0, v0, [B

    .line 157
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    array-length v1, p1

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 160
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    array-length v1, v0

    add-int/lit8 v1, v1, -0xc

    invoke-static {p1, v0, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    if-eqz v0, :cond_1

    .line 103
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->macSize:I

    if-lt v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->pad()V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    const-wide/16 v0, 0x0

    .line 112
    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->doFinal([BI)I

    move-result p1

    return p1

    .line 105
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not initialised"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DSTU7564Mac"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 41
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 43
    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    .line 45
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    .line 47
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->padKey([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 51
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    aget-byte v3, p1, v1

    xor-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    array-length v2, v2

    invoke-virtual {p1, v1, v0, v2}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    return-void

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad parameter passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 119
    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->reset()V

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update(B)V

    .line 76
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    return-void
.end method

.method public update([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 82
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    .line 93
    iget-wide p1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public Lorg/spongycastle/crypto/macs/GOST28147Mac;
.super Ljava/lang/Object;
.source "GOST28147Mac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private S:[B

.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private firstStep:Z

.field private mac:[B

.field private macIV:[B

.field private macSize:I

.field private workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 16
    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->blockSize:I

    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macSize:I

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    .line 23
    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macIV:[B

    const/16 v0, 0x80

    .line 27
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->S:[B

    .line 40
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    .line 42
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    return-void

    nop

    :array_0
    .array-data 1
        0x9t
        0x6t
        0x3t
        0x2t
        0x8t
        0xbt
        0x1t
        0x7t
        0xat
        0x4t
        0xet
        0xft
        0xct
        0x0t
        0xdt
        0x5t
        0x3t
        0x7t
        0xet
        0x9t
        0x8t
        0xat
        0xft
        0x0t
        0x5t
        0x2t
        0x6t
        0xct
        0xbt
        0x4t
        0xdt
        0x1t
        0xet
        0x4t
        0x6t
        0x2t
        0xbt
        0x3t
        0xdt
        0x8t
        0xct
        0xft
        0x5t
        0xat
        0x0t
        0x7t
        0x1t
        0x9t
        0xet
        0x7t
        0xat
        0xct
        0xdt
        0x1t
        0x3t
        0x9t
        0x0t
        0x2t
        0xbt
        0x4t
        0xft
        0x8t
        0x5t
        0x6t
        0xbt
        0x5t
        0x1t
        0x9t
        0x8t
        0xdt
        0xft
        0x0t
        0xet
        0x4t
        0x2t
        0x3t
        0xct
        0x7t
        0xat
        0x6t
        0x3t
        0xat
        0xdt
        0xct
        0x1t
        0x2t
        0x0t
        0xbt
        0x7t
        0x5t
        0x9t
        0x4t
        0x8t
        0xft
        0xet
        0x6t
        0x1t
        0xdt
        0x2t
        0x9t
        0x7t
        0xat
        0x6t
        0x0t
        0x8t
        0xct
        0x4t
        0x5t
        0xft
        0x3t
        0xbt
        0xet
        0xbt
        0xat
        0xft
        0x5t
        0x0t
        0xct
        0xet
        0x8t
        0x6t
        0x2t
        0x3t
        0x9t
        0x1t
        0x7t
        0xdt
        0x4t
    .end array-data
.end method

.method private CM5func([BI[B)[B
    .locals 3

    .line 181
    array-length v0, p1

    sub-int/2addr v0, p2

    new-array v0, v0, [B

    .line 183
    array-length v1, p3

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    :goto_0
    array-length p1, p3

    if-eq v2, p1, :cond_0

    .line 187
    aget-byte p1, v0, v2

    aget-byte p2, p3, v2

    xor-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private bytesToint([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x3

    .line 163
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    return v0
.end method

.method private generateWorkingKey([B)[I
    .locals 4

    .line 49
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    .line 54
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x4

    .line 57
    invoke-direct {p0, p1, v3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key length invalid. Key needs to be 32 byte - 256 bit!!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private gost28147MacFunc([I[BI[BI)V
    .locals 5

    .line 141
    invoke-direct {p0, p2, p3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result v0

    add-int/lit8 p3, p3, 0x4

    .line 142
    invoke-direct {p0, p2, p3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result p2

    const/4 p3, 0x0

    move v1, p2

    const/4 p2, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge p2, v2, :cond_1

    move v2, v1

    move v1, v0

    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    .line 149
    aget v3, p1, v0

    invoke-direct {p0, v1, v3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->gost28147_mainStep(II)I

    move-result v3

    xor-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    move v1, v2

    goto :goto_0

    .line 154
    :cond_1
    invoke-direct {p0, v0, p4, p5}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->intTobytes(I[BI)V

    add-int/lit8 p5, p5, 0x4

    .line 155
    invoke-direct {p0, v1, p4, p5}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->intTobytes(I[BI)V

    return-void
.end method

.method private gost28147_mainStep(II)I
    .locals 2

    add-int/2addr p2, p1

    .line 121
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v0, p2, 0x0

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x0

    aget-byte p1, p1, v0

    shl-int/lit8 p1, p1, 0x0

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x10

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v1, p2, 0x8

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x20

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x30

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0xc

    add-int/2addr p1, v0

    .line 125
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v1, p2, 0x10

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x40

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v1, p2, 0x14

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x50

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x14

    add-int/2addr p1, v0

    .line 127
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v1, p2, 0x18

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x60

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr p1, v0

    .line 128
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 p2, p2, 0x1c

    and-int/lit8 p2, p2, 0xf

    add-int/lit8 p2, p2, 0x70

    aget-byte p2, v0, p2

    shl-int/lit8 p2, p2, 0x1c

    add-int/2addr p1, p2

    shl-int/lit8 p2, p1, 0xb

    ushr-int/lit8 p1, p1, 0x15

    or-int/2addr p1, p2

    return p1
.end method

.method private intTobytes(I[BI)V
    .locals 2

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    .line 173
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 174
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 175
    aput-byte v1, p2, v0

    int-to-byte p1, p1

    .line 176
    aput-byte p1, p2, p3

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 276
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    iget v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->blockSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    aput-byte v2, v0, v1

    .line 279
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 283
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v3, v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iget-boolean v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-eqz v1, :cond_1

    .line 287
    iput-boolean v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    :goto_1
    move-object v3, v0

    goto :goto_2

    .line 291
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v0, v2, v1}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v0

    goto :goto_1

    .line 294
    :goto_2
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    .line 296
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macSize:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->reset()V

    .line 300
    iget p1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macSize:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "GOST28147Mac"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->reset()V

    .line 68
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macIV:[B

    .line 70
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    .line 77
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->S:[B

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->generateWorkingKey([B)[I

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    goto :goto_0

    .line 87
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 89
    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->generateWorkingKey([B)[I

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    goto :goto_0

    .line 91
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 93
    check-cast p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 95
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->generateWorkingKey([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    .line 96
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macIV:[B

    :cond_2
    :goto_0
    return-void

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to GOST28147 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 308
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 310
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_0
    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    return-void
.end method

.method public update(B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 196
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 198
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 199
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget-boolean v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-eqz v1, :cond_1

    .line 203
    iput-boolean v3, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    .line 204
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macIV:[B

    if-eqz v1, :cond_0

    .line 206
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macIV:[B

    invoke-direct {p0, v0, v3, v1}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v0

    :cond_0
    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 211
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v0, v3, v1}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v0

    goto :goto_0

    .line 214
    :goto_1
    iget-object v5, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    .line 215
    iput v3, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    .line 218
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_3

    .line 229
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->blockSize:I

    iget v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2

    .line 233
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 236
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget-boolean v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-eqz v2, :cond_1

    .line 240
    iput-boolean v4, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    .line 241
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macIV:[B

    if-eqz v2, :cond_0

    .line 243
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->macIV:[B

    invoke-direct {p0, v1, v4, v2}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v1

    :cond_0
    :goto_0
    move-object v7, v1

    goto :goto_1

    .line 248
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v1, v4, v2}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v1

    goto :goto_0

    .line 251
    :goto_1
    iget-object v6, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    .line 253
    iput v4, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    .line 257
    :goto_2
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->blockSize:I

    if-le p3, v0, :cond_2

    .line 259
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v3

    .line 260
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->mac:[B

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    .line 262
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->blockSize:I

    sub-int/2addr p3, v0

    .line 263
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->blockSize:I

    add-int/2addr p2, v0

    goto :goto_2

    .line 267
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget p1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->bufOff:I

    return-void

    .line 226
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

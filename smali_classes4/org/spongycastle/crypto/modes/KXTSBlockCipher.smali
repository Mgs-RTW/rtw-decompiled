.class public Lorg/spongycastle/crypto/modes/KXTSBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source "KXTSBlockCipher.java"


# static fields
.field private static final RED_POLY_128:J = 0x87L

.field private static final RED_POLY_256:J = 0x425L

.field private static final RED_POLY_512:J = 0x125L


# instance fields
.field private final blockSize:I

.field private counter:I

.field private final reductionPolynomial:J

.field private final tw_current:[J

.field private final tw_init:[J


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 53
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    .line 54
    iget p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    invoke-static {p1}, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->getReductionPolynomial(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->reductionPolynomial:J

    .line 55
    iget p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    ushr-int/lit8 p1, p1, 0x3

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    .line 56
    iget p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    ushr-int/lit8 p1, p1, 0x3

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    return-void
.end method

.method private static GF_double(J[J)V
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    .line 190
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_0

    .line 192
    aget-wide v4, p2, v1

    const/16 v6, 0x3f

    ushr-long v6, v4, v6

    const/4 v8, 0x1

    shl-long/2addr v4, v8

    xor-long/2addr v2, v4

    .line 194
    aput-wide v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    move-wide v2, v6

    goto :goto_0

    .line 198
    :cond_0
    aget-wide v4, p2, v0

    neg-long v1, v2

    and-long/2addr p0, v1

    xor-long/2addr p0, v4

    aput-wide p0, p2, v0

    return-void
.end method

.method protected static getReductionPolynomial(I)J
    .locals 2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    const-wide/16 v0, 0x125

    return-wide v0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only 128, 256, and 512 -bit block sizes supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v0, 0x425

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x87

    return-wide v0
.end method

.method private processBlock([BI[BI)V
    .locals 6

    .line 140
    iget v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 145
    iget v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    .line 150
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->reductionPolynomial:J

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->GF_double(J[J)V

    .line 152
    iget v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v0, v0, [B

    .line 153
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 155
    iget v1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v1, v1, [B

    .line 156
    iget v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    .line 158
    :goto_0
    iget v4, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ge v3, v4, :cond_0

    .line 160
    aget-byte v4, v1, v3

    add-int v5, p2, v3

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p1, v1, v2, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 165
    :goto_1
    iget p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ge v2, p1, :cond_1

    add-int p1, p4, v2

    .line 167
    aget-byte p2, v1, v2

    aget-byte v3, v0, v2

    xor-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 142
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempt to process too many blocks"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 0

    .line 173
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->reset()V

    const/4 p1, 0x0

    return p1
.end method

.method public getOutputSize(I)I
    .locals 0

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 0

    return p1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 72
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    .line 77
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 78
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .line 80
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p2

    .line 87
    array-length v1, p2

    iget v2, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ne v1, v2, :cond_0

    .line 92
    iget v1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v1, v1, [B

    .line 93
    iget v2, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v2, 0x1

    invoke-interface {p2, v2, v0}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 96
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2, v1, v3, v1, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 98
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2, p1, v0}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 99
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    invoke-static {v1, v3, p1}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 100
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    array-length v0, v0

    invoke-static {p1, v3, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iput v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Currently only support IVs of exactly one block"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid parameters passed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processByte(B[BI)I
    .locals 0

    .line 109
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII[BI)I
    .locals 3

    .line 114
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_3

    .line 118
    array-length v0, p4

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_2

    .line 122
    iget v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    rem-int v0, p3, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    add-int v2, p5, v0

    .line 129
    invoke-direct {p0, p1, v1, p4, v2}, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->processBlock([BI[BI)V

    .line 127
    iget v1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return p3

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Partial blocks not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 4

    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iput v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    return-void
.end method

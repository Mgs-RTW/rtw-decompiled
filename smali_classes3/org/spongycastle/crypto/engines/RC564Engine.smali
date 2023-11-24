.class public Lorg/spongycastle/crypto/engines/RC564Engine;
.super Ljava/lang/Object;
.source "RC564Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final P64:J = -0x481eae9d7512d595L

.field private static final Q64:J = -0x61c8864680b583ebL

.field private static final bytesPerWord:I = 0x8

.field private static final wordSize:I = 0x40


# instance fields
.field private _S:[J

.field private _noRounds:I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 52
    iput v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_noRounds:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    return-void
.end method

.method private bytesToWord([BI)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, v2, p2

    .line 271
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private decryptBlock([BI[BI)I
    .locals 7

    .line 211
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x8

    .line 212
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide p1

    .line 214
    iget v2, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_noRounds:I

    :goto_0
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 216
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v4, 0x1

    aget-wide v5, v3, v5

    sub-long/2addr p1, v5

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateRight(JJ)J

    move-result-wide p1

    xor-long/2addr p1, v0

    .line 217
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v4, v3, v4

    sub-long/2addr v0, v4

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateRight(JJ)J

    move-result-wide v0

    xor-long/2addr v0, p1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    sub-long/2addr v0, v4

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v1, v0, v3

    sub-long/2addr p1, v1

    add-int/lit8 p4, p4, 0x8

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    const/16 p1, 0x10

    return p1
.end method

.method private encryptBlock([BI[BI)I
    .locals 8

    .line 190
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    add-long/2addr v0, v3

    add-int/lit8 p2, p2, 0x8

    .line 191
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide p1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v3, 0x1

    aget-wide v4, v2, v3

    add-long/2addr p1, v4

    move-wide v4, p1

    const/4 p1, 0x1

    .line 193
    :goto_0
    iget p2, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_noRounds:I

    if-gt p1, p2, :cond_0

    xor-long/2addr v0, v4

    .line 195
    invoke-direct {p0, v0, v1, v4, v5}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v0

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v2, p1, 0x2

    aget-wide v6, p2, v2

    add-long/2addr v0, v6

    xor-long/2addr v4, v0

    .line 196
    invoke-direct {p0, v4, v5, v0, v1}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v4

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    add-int/2addr v2, v3

    aget-wide v6, p2, v2

    add-long/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    invoke-direct {p0, v0, v1, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    add-int/lit8 p4, p4, 0x8

    .line 200
    invoke-direct {p0, v4, v5, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    const/16 p1, 0x10

    return p1
.end method

.method private rotateLeft(JJ)J
    .locals 4

    const-wide/16 v0, 0x3f

    and-long/2addr p3, v0

    long-to-int v0, p3

    shl-long v0, p1, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int p3, v2

    ushr-long/2addr p1, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private rotateRight(JJ)J
    .locals 4

    const-wide/16 v0, 0x3f

    and-long/2addr p3, v0

    long-to-int v0, p3

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int p3, v2

    shl-long/2addr p1, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private setKey([B)V
    .locals 13

    .line 126
    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 128
    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 130
    div-int/lit8 v3, v2, 0x8

    aget-wide v4, v0, v3

    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    rem-int/lit8 v8, v2, 0x8

    mul-int/lit8 v8, v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    aput-wide v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iget p1, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_noRounds:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    .line 141
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    const-wide v3, -0x481eae9d7512d595L    # -1.590398847350152E-39

    aput-wide v3, p1, v1

    const/4 p1, 0x1

    .line 142
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v3, v3

    if-ge p1, v3, :cond_1

    .line 144
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    add-int/lit8 v5, p1, -0x1

    aget-wide v5, v4, v5

    const-wide v7, -0x61c8864680b583ebL

    add-long/2addr v5, v7

    aput-wide v5, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 154
    :cond_1
    array-length p1, v0

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v3, v3

    if-le p1, v3, :cond_2

    .line 156
    array-length p1, v0

    mul-int/lit8 p1, p1, 0x3

    goto :goto_2

    .line 160
    :cond_2
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x3

    :goto_2
    const-wide/16 v3, 0x0

    move-wide v6, v3

    const/4 v8, 0x0

    move-wide v4, v6

    const/4 v3, 0x0

    :goto_3
    if-ge v1, p1, :cond_3

    .line 168
    iget-object v9, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v11, v10, v3

    add-long/2addr v11, v4

    add-long/2addr v11, v6

    const-wide/16 v4, 0x3

    invoke-direct {p0, v11, v12, v4, v5}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v4

    aput-wide v4, v9, v3

    .line 169
    aget-wide v9, v0, v8

    add-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v6, v4

    invoke-direct {p0, v9, v10, v6, v7}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v6

    aput-wide v6, v0, v8

    add-int/2addr v3, v2

    .line 170
    iget-object v9, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v9, v9

    rem-int/2addr v3, v9

    add-int/2addr v8, v2

    .line 171
    array-length v9, v0

    rem-int/2addr v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private wordToBytes(J[BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int v2, v0, p4

    long-to-int v3, p1

    int-to-byte v3, v3

    .line 284
    aput-byte v3, p3, v2

    ushr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RC5-64"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 78
    instance-of v0, p2, Lorg/spongycastle/crypto/params/RC5Parameters;

    if-eqz v0, :cond_0

    .line 83
    check-cast p2, Lorg/spongycastle/crypto/params/RC5Parameters;

    .line 85
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->forEncryption:Z

    .line 87
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/RC5Parameters;->getRounds()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_noRounds:I

    .line 89
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/RC5Parameters;->getKey()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/RC564Engine;->setKey([B)V

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to RC564 init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->encryptBlock([BI[BI)I

    move-result p1

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->decryptBlock([BI[BI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
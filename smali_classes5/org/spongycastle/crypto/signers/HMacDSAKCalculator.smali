.class public Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;
.super Ljava/lang/Object;
.source "HMacDSAKCalculator.java"

# interfaces
.implements Lorg/spongycastle/crypto/signers/DSAKCalculator;


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private final K:[B

.field private final V:[B

.field private final hMac:Lorg/spongycastle/crypto/macs/HMac;

.field private n:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 18
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    .line 34
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    .line 35
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    return-void
.end method

.method private bitsToInt([B)Ljava/math/BigInteger;
    .locals 3

    .line 143
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 145
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 147
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 5

    .line 50
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 55
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 56
    invoke-static {p2}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p2

    .line 58
    array-length v3, v0

    array-length v4, p2

    sub-int/2addr v3, v4

    array-length v4, p2

    invoke-static {p2, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p2

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    .line 62
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object p3

    .line 64
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 66
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 69
    :cond_0
    invoke-static {p3}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    .line 71
    array-length p3, p2

    array-length v3, p1

    sub-int/2addr p3, v3

    array-length v3, p1

    invoke-static {p1, v2, p2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance p3, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {p3, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p1, p3}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 75
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v3, v3

    invoke-virtual {p1, p3, v2, v3}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 76
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {p1, v2}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 77
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    array-length p3, v0

    invoke-virtual {p1, v0, v2, p3}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 78
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    array-length p3, p2

    invoke-virtual {p1, p2, v2, p3}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 80
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {p1, p3, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 82
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance p3, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {p3, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p1, p3}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 84
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v3, v3

    invoke-virtual {p1, p3, v2, v3}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 86
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {p1, p3, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 88
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v3, v3

    invoke-virtual {p1, p3, v2, v3}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 89
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {p1, v1}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 90
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    array-length p3, v0

    invoke-virtual {p1, v0, v2, p3}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 91
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    array-length p3, p2

    invoke-virtual {p1, p2, v2, p3}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 93
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {p1, p2, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 95
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance p2, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object p3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {p2, p3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p1, p2}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 97
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object p3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length p3, p3

    invoke-virtual {p1, p2, v2, p3}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 99
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {p1, p2, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    return-void
.end method

.method public init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 0

    .line 45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextK()Ljava/math/BigInteger;
    .locals 6

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 112
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v1, v5}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 114
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v3, v4, v1}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 116
    array-length v3, v0

    sub-int/2addr v3, v2

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 117
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    goto :goto_1

    .line 121
    :cond_0
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object v2

    .line 123
    sget-object v3, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_1

    return-object v2

    .line 128
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 129
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v2, v1}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 131
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {v2, v3, v1}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 133
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 135
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 137
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v2, v3, v1}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    goto :goto_0
.end method

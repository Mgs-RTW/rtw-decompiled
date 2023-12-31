.class public abstract Lorg/spongycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;
.source "WNafUtil.java"


# static fields
.field private static final DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final EMPTY_BYTES:[B

.field private static final EMPTY_INTS:[I

.field private static final EMPTY_POINTS:[Lorg/spongycastle/math/ec/ECPoint;

.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_wnaf"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 9
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    const/4 v0, 0x0

    .line 11
    new-array v1, v0, [B

    sput-object v1, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    .line 12
    new-array v1, v0, [I

    sput-object v1, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    .line 13
    new-array v0, v0, [Lorg/spongycastle/math/ec/ECPoint;

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lorg/spongycastle/math/ec/ECPoint;

    return-void

    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCompactNaf(Ljava/math/BigInteger;)[I
    .locals 9

    .line 17
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5

    .line 21
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 23
    sget-object p0, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    shr-int/lit8 v3, v2, 0x1

    .line 29
    new-array v3, v3, [I

    .line 31
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sub-int/2addr v2, v0

    const/4 v4, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 36
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 42
    :cond_1
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    :goto_1
    add-int/lit8 v8, v5, 0x1

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    .line 43
    aput v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v8

    const/4 v6, 0x1

    :goto_2
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    add-int/lit8 p0, v5, 0x1

    const/high16 v0, 0x10000

    or-int/2addr v0, v6

    .line 48
    aput v0, v3, v5

    .line 50
    array-length v0, v3

    if-le v0, p0, :cond_4

    .line 52
    invoke-static {v3, p0}, Lorg/spongycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v3

    :cond_4
    return-object v3

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'k\' must have bitlength < 2^16"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .locals 12

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 62
    invoke-static {p1}, Lorg/spongycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object p0

    return-object p0

    :cond_0
    if-lt p0, v0, :cond_a

    const/16 v0, 0x10

    if-gt p0, v0, :cond_a

    .line 69
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/2addr v1, v0

    if-nez v1, :cond_9

    .line 73
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-nez v1, :cond_1

    .line 75
    sget-object p0, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object p0

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/2addr v1, p0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    shl-int v3, v2, p0

    add-int/lit8 v4, v3, -0x1

    ushr-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    const/4 p1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 88
    :goto_0
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-gt p1, v10, :cond_7

    .line 90
    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-ne v10, v8, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 98
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    and-int/2addr v10, v4

    if-eqz v8, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    and-int v8, v10, v5

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_5

    sub-int/2addr v10, v3

    :cond_5
    if-lez v9, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    add-int/lit8 v11, v9, 0x1

    shl-int/2addr v10, v0

    or-int/2addr p1, v10

    .line 111
    aput p1, v1, v9

    move p1, p0

    move v9, v11

    goto :goto_0

    .line 116
    :cond_7
    array-length p0, v1

    if-le p0, v9, :cond_8

    .line 118
    invoke-static {v1, v9}, Lorg/spongycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v1

    :cond_8
    return-object v1

    .line 71
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'k\' must have bitlength < 2^16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'width\' must be in the range [2, 16]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 13

    .line 126
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 127
    new-array v0, v0, [B

    const/4 v1, 0x0

    move-object v2, p0

    move-object v4, p1

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    or-int v6, p0, p1

    if-nez v6, :cond_2

    .line 133
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-gt v6, v3, :cond_2

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-le v6, v3, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    array-length p0, v0

    if-le p0, v5, :cond_1

    .line 179
    invoke-static {v0, v5}, Lorg/spongycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    :cond_1
    return-object v0

    .line 135
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    ushr-int/2addr v6, v3

    add-int/2addr v6, p0

    and-int/lit8 v6, v6, 0x7

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    ushr-int/2addr v7, v3

    add-int/2addr v7, p1

    and-int/lit8 v7, v7, 0x7

    and-int/lit8 v8, v6, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eqz v8, :cond_3

    and-int/lit8 v11, v6, 0x2

    sub-int/2addr v8, v11

    add-int v11, v6, v8

    if-ne v11, v9, :cond_3

    and-int/lit8 v11, v7, 0x3

    if-ne v11, v10, :cond_3

    neg-int v8, v8

    :cond_3
    and-int/lit8 v11, v7, 0x1

    if-eqz v11, :cond_4

    and-int/lit8 v12, v7, 0x2

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    if-ne v7, v9, :cond_4

    and-int/lit8 v6, v6, 0x3

    if-ne v6, v10, :cond_4

    neg-int v11, v11

    :cond_4
    shl-int/lit8 v6, p0, 0x1

    add-int/lit8 v7, v8, 0x1

    if-ne v6, v7, :cond_5

    xor-int/lit8 p0, p0, 0x1

    :cond_5
    shl-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, v11, 0x1

    if-ne v6, v7, :cond_6

    xor-int/lit8 p1, p1, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x1e

    if-ne v3, v6, :cond_7

    .line 169
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 170
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, v3

    const/4 v3, 0x0

    :cond_7
    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v7, v8, 0x4

    and-int/lit8 v8, v11, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 173
    aput-byte v7, v0, v5

    move v5, v6

    goto :goto_0
.end method

.method public static generateNaf(Ljava/math/BigInteger;)[B
    .locals 7

    .line 187
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    sget-object p0, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int/2addr v2, v0

    .line 195
    new-array v3, v2, [B

    .line 197
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v2, :cond_3

    .line 201
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v4, -0x1

    .line 203
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    sub-int/2addr v2, v0

    .line 208
    aput-byte v0, v3, v2

    return-object v3
.end method

.method public static generateWindowNaf(ILjava/math/BigInteger;)[B
    .locals 10

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 229
    invoke-static {p1}, Lorg/spongycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0

    :cond_0
    if-lt p0, v0, :cond_9

    const/16 v0, 0x8

    if-gt p0, v0, :cond_9

    .line 236
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    sget-object p0, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object p0

    .line 241
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    shl-int v2, v1, p0

    add-int/lit8 v3, v2, -0x1

    ushr-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    move-object v6, p1

    const/4 p1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 251
    :goto_0
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-gt p1, v9, :cond_7

    .line 253
    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-ne v9, v7, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 261
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    and-int/2addr v9, v3

    if-eqz v7, :cond_3

    add-int/lit8 v9, v9, 0x1

    :cond_3
    and-int v7, v9, v4

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_5

    sub-int/2addr v9, v2

    :cond_5
    if-lez v8, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    add-int/2addr v8, p1

    add-int/lit8 p1, v8, 0x1

    int-to-byte v9, v9

    .line 274
    aput-byte v9, v0, v8

    move v8, p1

    move p1, p0

    goto :goto_0

    .line 279
    :cond_7
    array-length p0, v0

    if-le p0, v8, :cond_8

    .line 281
    invoke-static {v0, v8}, Lorg/spongycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    :cond_8
    return-object v0

    .line 234
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'width\' must be in the range [2, 8]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getNafWeight(Ljava/math/BigInteger;)I
    .locals 1

    .line 289
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 294
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 297
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitCount()I

    move-result p0

    return p0
.end method

.method public static getWNafPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 2

    .line 302
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 1

    if-eqz p0, :cond_0

    .line 307
    instance-of v0, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    .line 309
    check-cast p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    return-object p0

    .line 312
    :cond_0
    new-instance p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    invoke-direct {p0}, Lorg/spongycastle/math/ec/WNafPreCompInfo;-><init>()V

    return-object p0
.end method

.method public static getWindowSize(I)I
    .locals 1

    .line 323
    sget-object v0, Lorg/spongycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I[I)I

    move-result p0

    return p0
.end method

.method public static getWindowSize(I[I)I
    .locals 2

    const/4 v0, 0x0

    .line 336
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 338
    aget v1, p1, v0

    if-ge p0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static mapPointWithPrecomp(Lorg/spongycastle/math/ec/ECPoint;IZLorg/spongycastle/math/ec/ECPointMap;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 349
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 350
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/ec/WNafUtil;->precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object p1

    .line 352
    invoke-interface {p3, p0}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    const-string v1, "bc_wnaf"

    .line 353
    invoke-virtual {v0, p0, v1}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v1

    .line 355
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 358
    invoke-interface {p3, v2}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 359
    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 362
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 363
    array-length v2, p1

    new-array v2, v2, [Lorg/spongycastle/math/ec/ECPoint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 364
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 366
    aget-object v5, p1, v4

    invoke-interface {p3, v5}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/spongycastle/math/ec/ECPoint;)V

    if-eqz p2, :cond_3

    .line 372
    array-length p1, v2

    new-array p1, p1, [Lorg/spongycastle/math/ec/ECPoint;

    .line 373
    :goto_1
    array-length p2, p1

    if-ge v3, p2, :cond_2

    .line 375
    aget-object p2, v2, v3

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    aput-object p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 377
    :cond_2
    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/spongycastle/math/ec/ECPoint;)V

    :cond_3
    const-string p1, "bc_wnaf"

    .line 380
    invoke-virtual {v0, p0, p1, v1}, Lorg/spongycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    return-object p0
.end method

.method public static precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 11

    .line 387
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    .line 388
    invoke-virtual {v0, p0, v1}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v1

    const/4 v2, 0x2

    sub-int/2addr p1, v2

    const/4 v3, 0x0

    .line 390
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v4, 0x1

    shl-int p1, v4, p1

    .line 392
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    if-nez v5, :cond_0

    .line 395
    sget-object v5, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lorg/spongycastle/math/ec/ECPoint;

    const/4 v6, 0x0

    goto :goto_0

    .line 399
    :cond_0
    array-length v6, v5

    :goto_0
    if-ge v6, p1, :cond_6

    .line 404
    invoke-static {v5, p1}, Lorg/spongycastle/math/ec/WNafUtil;->resizeTable([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    if-ne p1, v4, :cond_1

    .line 408
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v5, v3

    goto/16 :goto_4

    :cond_1
    if-nez v6, :cond_2

    .line 415
    aput-object p0, v5, v3

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    const/4 v8, 0x0

    if-ne p1, v2, :cond_3

    .line 423
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v5, v4

    goto :goto_3

    .line 427
    :cond_3
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    add-int/lit8 v4, v7, -0x1

    aget-object v4, v5, v4

    if-nez v2, :cond_4

    .line 430
    aget-object v2, v5, v3

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 431
    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 443
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v9

    const/16 v10, 0x40

    if-lt v9, v10, :cond_4

    .line 445
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_2

    .line 451
    :pswitch_0
    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 452
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 452
    invoke-virtual {v0, v9, v2}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 455
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 456
    invoke-virtual {v4, v9}, Lorg/spongycastle/math/ec/ECPoint;->scaleX(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/spongycastle/math/ec/ECPoint;->scaleY(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    if-nez v6, :cond_4

    .line 460
    aput-object v4, v5, v3

    :cond_4
    :goto_2
    if-ge v7, p1, :cond_5

    add-int/lit8 v9, v7, 0x1

    .line 474
    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    aput-object v4, v5, v7

    move v7, v9

    goto :goto_2

    :cond_5
    :goto_3
    sub-int v2, p1, v6

    .line 481
    invoke-virtual {v0, v5, v6, v2, v8}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;IILorg/spongycastle/math/ec/ECFieldElement;)V

    .line 485
    :cond_6
    :goto_4
    invoke-virtual {v1, v5}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/spongycastle/math/ec/ECPoint;)V

    if-eqz p2, :cond_a

    .line 489
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    if-nez p2, :cond_7

    .line 495
    new-array p2, p1, [Lorg/spongycastle/math/ec/ECPoint;

    goto :goto_5

    .line 499
    :cond_7
    array-length v3, p2

    if-ge v3, p1, :cond_8

    .line 502
    invoke-static {p2, p1}, Lorg/spongycastle/math/ec/WNafUtil;->resizeTable([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    :cond_8
    :goto_5
    if-ge v3, p1, :cond_9

    .line 508
    aget-object v2, v5, v3

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 512
    :cond_9
    invoke-virtual {v1, p2}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/spongycastle/math/ec/ECPoint;)V

    :cond_a
    const-string p1, "bc_wnaf"

    .line 515
    invoke-virtual {v0, p0, p1, v1}, Lorg/spongycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static resizeTable([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 536
    new-array p1, p1, [Lorg/spongycastle/math/ec/ECPoint;

    .line 537
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static trim([BI)[B
    .locals 2

    .line 522
    new-array p1, p1, [B

    .line 523
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static trim([II)[I
    .locals 2

    .line 529
    new-array p1, p1, [I

    .line 530
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

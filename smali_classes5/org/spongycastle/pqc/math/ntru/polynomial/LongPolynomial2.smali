.class public Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
.super Ljava/lang/Object;
.source "LongPolynomial2.java"


# instance fields
.field private coeffs:[J

.field private numCoeffs:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-array p1, p1, [J

    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 9

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    iput v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    .line 23
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v0, v2, :cond_3

    .line 27
    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    :goto_1
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x800

    goto :goto_1

    .line 32
    :cond_0
    iget v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    const-wide/16 v4, 0x0

    if-ge v3, v2, :cond_1

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v6, v3, 0x1

    aget v2, v2, v3

    int-to-long v2, v2

    goto :goto_2

    :cond_1
    move v6, v3

    move-wide v2, v4

    :goto_2
    cmp-long v7, v2, v4

    if-gez v7, :cond_2

    const-wide/16 v7, 0x800

    add-long/2addr v2, v7

    goto :goto_2

    .line 37
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    int-to-long v7, v0

    const/16 v0, 0x18

    shl-long/2addr v2, v0

    add-long/2addr v7, v2

    aput-wide v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    move v0, v6

    goto :goto_0

    :cond_3
    return-void
.end method

.method private constructor <init>([J)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    return-void
.end method

.method private add(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V
    .locals 7

    .line 179
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v3, v2, v0

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v5, v2, v0

    add-long/2addr v3, v5

    const-wide v5, 0x7ff0007ffL

    and-long/2addr v3, v5

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 113
    iget-object v2, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 114
    iget-object v3, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 116
    iget-object v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    const-wide v4, 0x7ff0007ffL

    const/4 v6, 0x0

    const/16 v7, 0x20

    if-gt v1, v7, :cond_2

    mul-int/lit8 v7, v1, 0x2

    .line 120
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    new-array v9, v7, [J

    invoke-direct {v8, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_1

    sub-int v10, v9, v1

    add-int/lit8 v10, v10, 0x1

    .line 123
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    :goto_1
    add-int/lit8 v11, v1, -0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-gt v10, v11, :cond_0

    sub-int v11, v9, v10

    .line 125
    aget-wide v11, v2, v11

    aget-wide v13, v3, v10

    mul-long v11, v11, v13

    const-wide v13, 0x7ff000000L

    const-wide/16 v15, 0x7ff

    and-long v17, v11, v15

    add-long v17, v17, v13

    and-long v13, v11, v17

    const/16 v17, 0x30

    ushr-long v11, v11, v17

    and-long/2addr v11, v15

    .line 129
    iget-object v15, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v6, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v16, v6, v9

    add-long v16, v16, v13

    and-long v13, v16, v4

    aput-wide v13, v15, v9

    .line 130
    iget-object v6, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int/lit8 v13, v9, 0x1

    iget-object v14, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v15, v14, v13

    add-long/2addr v15, v11

    and-long v11, v15, v4

    aput-wide v11, v6, v13

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    return-object v8

    .line 137
    :cond_2
    div-int/lit8 v6, v1, 0x2

    .line 139
    new-instance v7, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v2, v6}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 140
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v2, v6, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 141
    new-instance v2, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v3, v6}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 142
    new-instance v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v3, v6, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v3

    invoke-direct {v9, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 144
    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .line 145
    invoke-direct {v3, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 146
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .line 147
    invoke-direct {v10, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 149
    invoke-direct {v7, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v2

    .line 150
    invoke-direct {v8, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v7

    .line 151
    invoke-direct {v3, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v3

    .line 152
    invoke-direct {v3, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 153
    invoke-direct {v3, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 155
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v8, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>(I)V

    const/4 v1, 0x0

    .line 156
    :goto_2
    iget-object v9, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 158
    iget-object v9, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v10, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v11, v10, v1

    and-long/2addr v11, v4

    aput-wide v11, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 160
    :goto_3
    iget-object v2, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 162
    iget-object v2, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int v9, v6, v1

    iget-object v10, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v11, v10, v9

    iget-object v10, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v13, v10, v1

    add-long/2addr v11, v13

    and-long/2addr v11, v4

    aput-wide v11, v2, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 164
    :goto_4
    iget-object v2, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 166
    iget-object v2, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    mul-int/lit8 v3, v6, 0x2

    add-int/2addr v3, v1

    iget-object v9, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v10, v9, v3

    iget-object v9, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v12, v9, v1

    add-long/2addr v10, v12

    and-long/2addr v10, v4

    aput-wide v10, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-object v8
.end method

.method private sub(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V
    .locals 7

    .line 196
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 202
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    const-wide v2, 0x800000800000L

    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v5, v4, v0

    add-long/2addr v5, v2

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v3, v2, v0

    sub-long/2addr v5, v3

    const-wide v2, 0x7ff0007ffL

    and-long/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 239
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 240
    iget v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput v1, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 246
    instance-of v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    check-cast p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    iget-object p1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([J[J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .locals 14

    .line 57
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    .line 58
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ne v1, v0, :cond_4

    iget v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iget v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ne v1, v2, :cond_4

    .line 63
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object p1

    .line 65
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-le v1, v0, :cond_3

    .line 67
    iget v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    rem-int/lit8 v1, v1, 0x2

    const-wide v2, 0x7ff0007ffL

    if-nez v1, :cond_1

    move v1, v0

    .line 69
    :goto_0
    iget-object v4, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 71
    iget-object v4, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v5, v1, v0

    iget-object v6, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v7, v6, v5

    iget-object v6, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v9, v6, v1

    add-long/2addr v7, v9

    and-long/2addr v7, v2

    aput-wide v7, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    goto :goto_2

    :cond_1
    move v1, v0

    .line 77
    :goto_1
    iget-object v4, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v4, v4

    const-wide/16 v5, 0x7ff

    if-ge v1, v4, :cond_2

    .line 79
    iget-object v4, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v7, v1, v0

    iget-object v8, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v9, v8, v7

    iget-object v8, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int/lit8 v11, v1, -0x1

    aget-wide v11, v8, v11

    const/16 v8, 0x18

    shr-long/2addr v11, v8

    add-long/2addr v9, v11

    aput-wide v9, v4, v7

    .line 80
    iget-object v4, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v9, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v10, v9, v7

    iget-object v9, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v12, v9, v1

    and-long/2addr v5, v12

    shl-long/2addr v5, v8

    add-long/2addr v10, v5

    aput-wide v10, v4, v7

    .line 81
    iget-object v4, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v5, v4, v7

    and-long/2addr v5, v2

    aput-wide v5, v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_2
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 84
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v0, v1

    and-long/2addr v2, v5

    aput-wide v2, v0, v1

    .line 88
    :cond_3
    :goto_2
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    iget-object p1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 89
    iget p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput p1, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    return-object v0

    .line 60
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of coefficients must be the same"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mult2And(I)V
    .locals 6

    int-to-long v0, p1

    const/16 p1, 0x18

    shl-long v2, v0, p1

    add-long/2addr v2, v0

    const/4 p1, 0x0

    .line 231
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v1, p1

    const/4 v1, 0x1

    shl-long/2addr v4, v1

    and-long/2addr v4, v2

    aput-wide v4, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public subAnd(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;I)V
    .locals 8

    int-to-long v0, p2

    const/16 p2, 0x18

    shl-long v2, v0, p2

    add-long/2addr v2, v0

    const/4 p2, 0x0

    .line 216
    :goto_0
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    const-wide v4, 0x800000800000L

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v6, v1, p2

    add-long/2addr v6, v4

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v1, p2

    sub-long/2addr v6, v4

    and-long v4, v6, v2

    aput-wide v4, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 9

    .line 95
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 97
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v3

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 99
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v5, v4, v1

    const-wide/16 v7, 0x7ff

    and-long/2addr v5, v7

    long-to-int v4, v5

    aput v4, v0, v2

    .line 100
    iget v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v3, v2, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 102
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v5, v4, v1

    const/16 v4, 0x18

    shr-long v4, v5, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    aput v4, v0, v3

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    new-instance v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v1
.end method

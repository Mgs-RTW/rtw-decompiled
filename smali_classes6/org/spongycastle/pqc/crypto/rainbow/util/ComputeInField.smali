.class public Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;
.super Ljava/lang/Object;
.source "ComputeInField.java"


# instance fields
.field private A:[[S

.field x:[S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeZerosAbove()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 248
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v2, v2, v1

    aget-short v2, v2, v0

    .line 249
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v0

    aget-short v3, v3, v0

    invoke-static {v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v3

    if-eqz v3, :cond_1

    move v4, v0

    .line 254
    :goto_2
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_0

    .line 257
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v0

    aget-short v5, v5, v4

    invoke-static {v5, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    .line 259
    invoke-static {v2, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    .line 261
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v1

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v1

    aget-short v7, v7, v4

    invoke-static {v7, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The matrix is not invertible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private computeZerosUnder(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    const/4 v0, 0x0

    .line 202
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 204
    :goto_2
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 206
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v2

    aget-short v3, v3, v0

    .line 207
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    aget-short v4, v4, v0

    invoke-static {v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v4

    if-eqz v4, :cond_2

    move v5, v0

    :goto_3
    if-ge v5, p1, :cond_1

    .line 219
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v0

    aget-short v6, v6, v5

    invoke-static {v6, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    .line 221
    invoke-static {v3, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    .line 223
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v8, v8, v2

    aget-short v8, v8, v5

    invoke-static {v8, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 213
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Matrix not invertible! We have to choose another one!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private substitute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-short v0, v0, v1

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    aget-short v3, v3, v4

    invoke-static {v3, v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    aput-short v0, v1, v2

    .line 295
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_2

    .line 297
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v2, v2

    aget-short v1, v1, v2

    .line 298
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-le v2, v0, :cond_0

    .line 300
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v0

    aget-short v3, v3, v2

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    aget-short v4, v4, v2

    invoke-static {v3, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v3

    .line 301
    invoke-static {v1, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 304
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v0

    invoke-static {v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v1

    aput-short v1, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 307
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not solvable equation system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 290
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The equation system is not solvable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSquareMatrix([[S[[S)[[S
    .locals 7

    .line 477
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    aget-object v2, p2, v0

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 482
    array-length v1, p1

    array-length v2, p1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, S

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    const/4 v2, 0x0

    .line 483
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 485
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 487
    aget-object v4, v1, v2

    aget-object v5, p1, v2

    aget-short v5, v5, v3

    aget-object v6, p2, v2

    aget-short v6, v6, v3

    invoke-static {v5, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 479
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Addition is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVect([S[S)[S
    .locals 4

    .line 391
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 395
    array-length v0, p1

    new-array v0, v0, [S

    const/4 v1, 0x0

    .line 396
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 398
    aget-short v2, p1, v1

    aget-short v3, p2, v1

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 393
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inverse([[S)[[S
    .locals 6

    .line 106
    :try_start_0
    array-length v0, p1

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, S

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    .line 107
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    if-ne v0, v2, :cond_7

    const/4 v0, 0x0

    .line 114
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    const/4 v2, 0x0

    .line 116
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 119
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    aget-object v5, p1, v0

    aget-short v5, v5, v2

    aput-short v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_0
    array-length v2, p1

    :goto_2
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_1

    .line 124
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    aput-short v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 126
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v2, v2, v0

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    add-int/2addr v4, v0

    aput-short v3, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-direct {p0, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    const/4 p1, 0x0

    .line 134
    :goto_3
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    if-ge p1, v0, :cond_4

    .line 136
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v0, v0, p1

    aget-short v0, v0, p1

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    move v2, p1

    .line 137
    :goto_4
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_3

    .line 139
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, p1

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, p1

    aget-short v4, v4, v2

    invoke-static {v4, v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 144
    :cond_4
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosAbove()V

    .line 147
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length p1, p1

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    filled-new-array {p1, v0}, [I

    move-result-object p1

    const-class v0, S

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    .line 148
    :goto_5
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 150
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    :goto_6
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_5

    .line 152
    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v1

    aget-short v4, v4, v0

    aput-short v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-object p1

    .line 109
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "The matrix is not invertible. Please choose another one!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 161
    check-cast p1, [[S

    return-object p1
.end method

.method public multMatrix(S[[S)[[S
    .locals 6

    .line 455
    array-length v0, p2

    const/4 v1, 0x0

    aget-object v2, p2, v1

    array-length v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, S

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/4 v2, 0x0

    .line 456
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 458
    :goto_1
    aget-object v4, p2, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 460
    aget-object v4, v0, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {p1, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public multVect(S[S)[S
    .locals 3

    .line 438
    array-length v0, p2

    new-array v0, v0, [S

    const/4 v1, 0x0

    .line 439
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 441
    aget-short v2, p2, v1

    invoke-static {p1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public multVects([S[S)[[S
    .locals 7

    .line 414
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 418
    array-length v0, p1

    array-length v1, p2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, S

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 419
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 421
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 423
    aget-object v4, v0, v2

    aget-short v5, p1, v2

    aget-short v6, p2, v3

    invoke-static {v5, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 416
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public multiplyMatrix([[S[S)[S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 363
    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_2

    .line 368
    array-length v1, p1

    new-array v1, v1, [S

    const/4 v2, 0x0

    .line 369
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 371
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 373
    aget-object v4, p1, v2

    aget-short v4, v4, v3

    aget-short v5, p2, v3

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    .line 374
    aget-short v5, v1, v2

    invoke-static {v5, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 365
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public multiplyMatrix([[S[[S)[[S
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 329
    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_3

    .line 334
    array-length v1, p1

    aget-object v2, p2, v0

    array-length v2, v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, S

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    const/4 v1, 0x0

    .line 335
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 337
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 339
    :goto_2
    aget-object v4, p2, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 341
    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    .line 342
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v1

    aget-short v6, v6, v3

    invoke-static {v6, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_2
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    return-object p1

    .line 331
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public solveEquation([[S[S)[S
    .locals 7

    .line 40
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 54
    :cond_0
    :try_start_0
    array-length v0, p1

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, S

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    .line 56
    array-length v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    const/4 v3, 0x0

    .line 61
    :goto_1
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 63
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v1

    aget-object v5, p1, v1

    aget-short v5, v5, v3

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 70
    :goto_2
    array-length v1, p2

    if-ge p1, v1, :cond_3

    .line 72
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v1, v1, p1

    array-length v3, p2

    aget-short v4, p2, p1

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, p1

    array-length v6, p2

    aget-short v5, v5, v6

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 76
    :cond_3
    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    .line 77
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->substitute()V

    .line 79
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v2
.end method

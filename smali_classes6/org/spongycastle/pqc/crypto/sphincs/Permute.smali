.class Lorg/spongycastle/pqc/crypto/sphincs/Permute;
.super Ljava/lang/Object;
.source "Permute.java"


# static fields
.field private static final CHACHA_ROUNDS:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static permute(I[I)V
    .locals 30

    move-object/from16 v0, p1

    .line 20
    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 24
    rem-int/lit8 v3, p0, 0x2

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 29
    aget v4, v0, v3

    const/4 v5, 0x1

    .line 30
    aget v6, v0, v5

    const/4 v7, 0x2

    .line 31
    aget v8, v0, v7

    const/4 v9, 0x3

    .line 32
    aget v10, v0, v9

    const/4 v11, 0x4

    .line 33
    aget v12, v0, v11

    const/4 v13, 0x5

    .line 34
    aget v14, v0, v13

    const/4 v15, 0x6

    .line 35
    aget v16, v0, v15

    const/4 v15, 0x7

    .line 36
    aget v17, v0, v15

    const/16 v13, 0x8

    .line 37
    aget v18, v0, v13

    const/16 v19, 0x9

    .line 38
    aget v20, v0, v19

    const/16 v21, 0xa

    .line 39
    aget v22, v0, v21

    const/16 v23, 0xb

    .line 40
    aget v24, v0, v23

    const/16 v11, 0xc

    .line 41
    aget v25, v0, v11

    const/16 v26, 0xd

    .line 42
    aget v27, v0, v26

    const/16 v28, 0xe

    .line 43
    aget v28, v0, v28

    const/16 v29, 0xf

    .line 44
    aget v29, v0, v29

    move/from16 v1, p0

    :goto_0
    if-lez v1, :cond_0

    add-int/2addr v4, v12

    xor-int v9, v25, v4

    .line 48
    invoke-static {v9, v2}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v9

    add-int v18, v18, v9

    xor-int v12, v12, v18

    .line 49
    invoke-static {v12, v11}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v12

    add-int/2addr v4, v12

    xor-int/2addr v9, v4

    .line 50
    invoke-static {v9, v13}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v9

    add-int v18, v18, v9

    xor-int v12, v12, v18

    .line 51
    invoke-static {v12, v15}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v12

    add-int/2addr v6, v14

    xor-int v7, v27, v6

    .line 52
    invoke-static {v7, v2}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v7

    add-int v20, v20, v7

    xor-int v14, v14, v20

    .line 53
    invoke-static {v14, v11}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v14

    add-int/2addr v6, v14

    xor-int/2addr v7, v6

    .line 54
    invoke-static {v7, v13}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v7

    add-int v20, v20, v7

    xor-int v14, v14, v20

    .line 55
    invoke-static {v14, v15}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v14

    add-int v8, v8, v16

    xor-int v5, v28, v8

    .line 56
    invoke-static {v5, v2}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v5

    add-int v22, v22, v5

    xor-int v3, v16, v22

    .line 57
    invoke-static {v3, v11}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v3

    add-int/2addr v8, v3

    xor-int/2addr v5, v8

    .line 58
    invoke-static {v5, v13}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v5

    add-int v22, v22, v5

    xor-int v3, v3, v22

    .line 59
    invoke-static {v3, v15}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v3

    add-int v10, v10, v17

    xor-int v15, v29, v10

    .line 60
    invoke-static {v15, v2}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v15

    add-int v24, v24, v15

    xor-int v2, v17, v24

    .line 61
    invoke-static {v2, v11}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int/2addr v10, v2

    xor-int/2addr v15, v10

    .line 62
    invoke-static {v15, v13}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v15

    add-int v24, v24, v15

    xor-int v2, v2, v24

    const/4 v13, 0x7

    .line 63
    invoke-static {v2, v13}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int/2addr v4, v14

    xor-int v13, v15, v4

    const/16 v15, 0x10

    .line 64
    invoke-static {v13, v15}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v13

    add-int v22, v22, v13

    xor-int v14, v14, v22

    .line 65
    invoke-static {v14, v11}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v14

    add-int/2addr v4, v14

    xor-int/2addr v13, v4

    const/16 v15, 0x8

    .line 66
    invoke-static {v13, v15}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v29

    add-int v22, v22, v29

    xor-int v13, v14, v22

    const/4 v14, 0x7

    .line 67
    invoke-static {v13, v14}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v13

    add-int/2addr v6, v3

    xor-int/2addr v9, v6

    const/16 v14, 0x10

    .line 68
    invoke-static {v9, v14}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v9

    add-int v24, v24, v9

    xor-int v3, v3, v24

    .line 69
    invoke-static {v3, v11}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v3

    add-int/2addr v6, v3

    xor-int/2addr v9, v6

    const/16 v14, 0x8

    .line 70
    invoke-static {v9, v14}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v25

    add-int v24, v24, v25

    xor-int v3, v3, v24

    const/4 v9, 0x7

    .line 71
    invoke-static {v3, v9}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v16

    add-int/2addr v8, v2

    xor-int v3, v7, v8

    const/16 v7, 0x10

    .line 72
    invoke-static {v3, v7}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v3

    add-int v18, v18, v3

    xor-int v2, v2, v18

    .line 73
    invoke-static {v2, v11}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int/2addr v8, v2

    xor-int/2addr v3, v8

    const/16 v7, 0x8

    .line 74
    invoke-static {v3, v7}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v27

    add-int v18, v18, v27

    xor-int v2, v2, v18

    const/4 v3, 0x7

    .line 75
    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v17

    add-int/2addr v10, v12

    xor-int v2, v5, v10

    const/16 v3, 0x10

    .line 76
    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int v20, v20, v2

    xor-int v5, v12, v20

    .line 77
    invoke-static {v5, v11}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v5

    add-int/2addr v10, v5

    xor-int/2addr v2, v10

    const/16 v7, 0x8

    .line 78
    invoke-static {v2, v7}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v28

    add-int v20, v20, v28

    xor-int v2, v5, v20

    const/4 v5, 0x7

    .line 79
    invoke-static {v2, v5}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v12

    add-int/lit8 v1, v1, -0x2

    move v14, v13

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x3

    const/16 v13, 0x8

    const/4 v15, 0x7

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x7

    .line 82
    aput v4, v0, v1

    const/4 v1, 0x1

    .line 83
    aput v6, v0, v1

    const/4 v1, 0x2

    .line 84
    aput v8, v0, v1

    const/4 v1, 0x3

    .line 85
    aput v10, v0, v1

    const/4 v1, 0x4

    .line 86
    aput v12, v0, v1

    const/4 v1, 0x5

    .line 87
    aput v14, v0, v1

    const/4 v1, 0x6

    .line 88
    aput v16, v0, v1

    .line 89
    aput v17, v0, v5

    const/16 v1, 0x8

    .line 90
    aput v18, v0, v1

    .line 91
    aput v20, v0, v19

    .line 92
    aput v22, v0, v21

    .line 93
    aput v24, v0, v23

    .line 94
    aput v25, v0, v11

    .line 95
    aput v27, v0, v26

    const/16 v1, 0xe

    .line 96
    aput v28, v0, v1

    const/16 v1, 0xf

    .line 97
    aput v29, v0, v1

    return-void

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rounds must be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method protected static rotl(II)I
    .locals 1

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method chacha_permute([B[B)V
    .locals 5

    const/16 v0, 0x10

    .line 104
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x4

    .line 107
    invoke-static {p2, v4}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0xc

    .line 110
    invoke-static {p2, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->permute(I[I)V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 115
    aget p2, v1, v2

    mul-int/lit8 v3, v2, 0x4

    invoke-static {p2, p1, v3}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

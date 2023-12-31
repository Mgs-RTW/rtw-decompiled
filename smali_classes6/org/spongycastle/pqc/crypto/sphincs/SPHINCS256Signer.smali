.class public Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;
.super Ljava/lang/Object;
.source "SPHINCS256Signer.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageSigner;


# instance fields
.field private final hashFunctions:Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;

.field private keyData:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 35
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 40
    new-instance v0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "2n-digest needs to produce 64 bytes of output"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n-digest needs to produce 32 bytes of output"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static compute_authpath_wots(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V
    .locals 22

    move-object/from16 v0, p4

    .line 122
    new-instance v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    const/16 v2, 0x800

    .line 124
    new-array v2, v2, [B

    const/16 v3, 0x400

    .line 125
    new-array v3, v3, [B

    const v4, 0x10c00

    .line 126
    new-array v12, v4, [B

    const-wide/16 v13, 0x0

    .line 129
    iput-wide v13, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_0
    iget-wide v4, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v15, 0x20

    cmp-long v6, v4, v15

    const-wide/16 v17, 0x1

    if-gez v6, :cond_0

    .line 131
    iget-wide v4, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v4, v4, v15

    long-to-int v4, v4

    move-object/from16 v11, p0

    move-object/from16 v5, p5

    invoke-static {v11, v3, v4, v5, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 129
    iget-wide v6, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long v6, v6, v17

    iput-wide v6, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_0

    :cond_0
    move-object/from16 v11, p0

    .line 134
    new-instance v19, Lorg/spongycastle/pqc/crypto/sphincs/Wots;

    invoke-direct/range {v19 .. v19}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;-><init>()V

    .line 136
    iput-wide v13, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_1
    iget-wide v4, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    cmp-long v6, v4, v15

    const-wide/16 v20, 0x43

    if-gez v6, :cond_1

    .line 138
    iget-wide v4, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v4, v4, v20

    mul-long v4, v4, v15

    long-to-int v7, v4

    iget-wide v4, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v4, v4, v15

    long-to-int v9, v4

    const/16 v20, 0x0

    move-object/from16 v4, v19

    move-object/from16 v5, p0

    move-object v6, v12

    move-object v8, v3

    move-object/from16 v10, p6

    move/from16 v11, v20

    invoke-virtual/range {v4 .. v11}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 136
    iget-wide v4, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long v4, v4, v17

    iput-wide v4, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move-object/from16 v11, p0

    goto :goto_1

    .line 141
    :cond_1
    iput-wide v13, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_2
    iget-wide v3, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    cmp-long v5, v3, v15

    if-gez v5, :cond_2

    const-wide/16 v3, 0x400

    .line 143
    iget-wide v5, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v5, v5, v15

    add-long/2addr v5, v3

    long-to-int v5, v5

    iget-wide v3, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v3, v3, v20

    mul-long v3, v3, v15

    long-to-int v7, v3

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v6, v12

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v9}, Lorg/spongycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 141
    iget-wide v3, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long v3, v3, v17

    iput-wide v3, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/16 v11, 0x20

    const/4 v12, 0x0

    :goto_3
    if-lez v11, :cond_4

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v11, :cond_3

    ushr-int/lit8 v3, v11, 0x1

    mul-int/lit8 v3, v3, 0x20

    ushr-int/lit8 v4, v13, 0x1

    mul-int/lit8 v4, v4, 0x20

    add-int v5, v3, v4

    mul-int/lit8 v3, v11, 0x20

    mul-int/lit8 v4, v13, 0x20

    add-int v7, v3, v4

    add-int/lit8 v3, v12, 0x7

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v9, v3, 0x20

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v6, v2

    move-object/from16 v8, p6

    .line 154
    invoke-virtual/range {v3 .. v9}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v13, v13, 0x2

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    ushr-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 163
    :cond_4
    iget-wide v3, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    long-to-int v0, v3

    move/from16 v3, p7

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_5

    ushr-int v5, v10, v4

    mul-int/lit8 v5, v5, 0x20

    ushr-int v6, v0, v4

    xor-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x20

    add-int/2addr v5, v6

    mul-int/lit8 v6, v4, 0x20

    add-int v6, p3, v6

    move-object/from16 v8, p2

    .line 168
    invoke-static {v2, v5, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v4, p1

    .line 172
    invoke-static {v2, v10, v4, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static validate_authpath(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V
    .locals 13

    const/16 v2, 0x40

    .line 68
    new-array v2, v2, [B

    and-int/lit8 v4, p3, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x20

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v11, :cond_0

    add-int/lit8 v5, v4, 0x20

    .line 74
    aget-byte v6, p2, v4

    aput-byte v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v11, :cond_3

    add-int v4, p5, v0

    .line 78
    aget-byte v4, p4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v11, :cond_2

    .line 85
    aget-byte v5, p2, v4

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v11, :cond_3

    add-int/lit8 v4, v0, 0x20

    add-int v5, p5, v0

    .line 89
    aget-byte v5, p4, v5

    aput-byte v5, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, p5, 0x20

    move/from16 v3, p3

    move v1, v0

    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v4, p7, -0x1

    if-ge v0, v4, :cond_6

    ushr-int/lit8 v12, v3, 0x1

    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_4

    const/16 v5, 0x20

    const/4 v7, 0x0

    add-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v9, v3, 0x20

    move-object v3, p0

    move-object v4, v2

    move-object v6, v2

    move-object/from16 v8, p6

    .line 99
    invoke-virtual/range {v3 .. v9}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v11, :cond_5

    add-int v4, v1, v3

    .line 102
    aget-byte v4, p4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    const/4 v7, 0x0

    add-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v9, v3, 0x20

    move-object v3, p0

    move-object v4, v2

    move-object v6, v2

    move-object/from16 v8, p6

    .line 107
    invoke-virtual/range {v3 .. v9}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v11, :cond_5

    add-int/lit8 v4, v3, 0x20

    add-int v5, v1, v3

    .line 110
    aget-byte v5, p4, v5

    aput-byte v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x20

    add-int/lit8 v0, v0, 0x1

    move v3, v12

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    const/4 v7, 0x0

    add-int/lit8 v0, p7, 0x7

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v9, v0, 0x20

    move-object v3, p0

    move-object v4, p1

    move-object v6, v2

    move-object/from16 v8, p6

    .line 115
    invoke-virtual/range {v3 .. v9}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    return-void
.end method

.method private zerobytes([BII)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p3, :cond_0

    add-int v2, p2, v1

    .line 305
    aput-byte v0, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method crypto_sign(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const v1, 0xa028

    .line 177
    new-array v11, v1, [B

    const/16 v12, 0x20

    .line 181
    new-array v13, v12, [B

    const/16 v1, 0x40

    .line 182
    new-array v14, v1, [B

    const/16 v15, 0x8

    .line 183
    new-array v1, v15, [J

    .line 185
    new-array v8, v12, [B

    .line 186
    new-array v7, v12, [B

    const/16 v6, 0x400

    .line 187
    new-array v5, v6, [B

    const/16 v4, 0x440

    .line 189
    new-array v3, v4, [B

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v4, :cond_0

    .line 193
    aget-byte v18, p3, v15

    aput-byte v18, v3, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    const v15, 0xa008

    const/16 v4, 0x420

    .line 202
    invoke-static {v3, v4, v11, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    .line 205
    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v6, v6, [B

    .line 207
    invoke-interface {v4, v11, v15, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 209
    array-length v12, v10

    invoke-interface {v4, v10, v2, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 211
    invoke-interface {v4, v6, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const/16 v4, 0x20

    .line 214
    invoke-direct {v0, v11, v15, v4}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    const/4 v4, 0x0

    .line 216
    :goto_1
    array-length v12, v1

    if-eq v4, v12, :cond_1

    mul-int/lit8 v12, v4, 0x8

    .line 218
    invoke-static {v6, v12}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v17

    aput-wide v17, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 220
    :cond_1
    aget-wide v17, v1, v2

    const-wide v21, 0xfffffffffffffffL

    and-long v17, v17, v21

    const/16 v1, 0x10

    const/16 v4, 0x20

    .line 222
    invoke-static {v6, v1, v13, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v12, 0x9be8

    .line 228
    invoke-static {v13, v2, v11, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    new-instance v6, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v6}, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    const/16 v1, 0xb

    .line 232
    iput v1, v6, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    move-object/from16 v23, v13

    const-wide/16 v12, 0x0

    .line 233
    iput-wide v12, v6, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    .line 234
    iput-wide v12, v6, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const v12, 0x9c08

    const/16 v13, 0x400

    .line 238
    invoke-static {v3, v4, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v4, 0xa008

    const/4 v15, 0x5

    move-object/from16 v1, p1

    const/4 v13, 0x0

    move-object v2, v11

    move-object/from16 v25, v3

    move v3, v4

    const/16 v13, 0x440

    move v4, v15

    move-object v15, v5

    move-object/from16 v5, v25

    move-object/from16 v26, v7

    move-object v7, v11

    move-object/from16 v19, v8

    move v8, v12

    .line 240
    invoke-static/range {v1 .. v8}, Lorg/spongycastle/pqc/crypto/sphincs/Tree;->treehash(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V

    .line 242
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    const v2, 0x9be8

    .line 244
    invoke-interface {v1, v11, v2, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 245
    array-length v2, v10

    const/4 v3, 0x0

    invoke-interface {v1, v10, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 246
    invoke-interface {v1, v14, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 249
    new-instance v10, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v10}, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    const/16 v12, 0xc

    .line 251
    iput v12, v10, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    const-wide/16 v21, 0x1f

    and-long v1, v17, v21

    long-to-int v1, v1

    int-to-long v1, v1

    .line 252
    iput-wide v1, v10, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/16 v20, 0x5

    ushr-long v1, v17, v20

    .line 253
    iput-wide v1, v10, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/4 v1, 0x0

    const/16 v2, 0x20

    :goto_2
    if-ge v1, v2, :cond_2

    .line 257
    aget-byte v3, v23, v1

    aput-byte v3, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v8, v25

    const/4 v1, 0x0

    const/16 v3, 0x400

    .line 262
    invoke-static {v8, v2, v15, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    const/16 v3, 0x8

    :goto_3
    if-ge v1, v3, :cond_3

    add-int v4, v2, v1

    mul-int/lit8 v5, v1, 0x8

    ushr-long v5, v17, v5

    const-wide/16 v23, 0xff

    and-long v5, v5, v23

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 265
    aput-byte v5, v11, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x28

    move-object/from16 v7, v26

    const/4 v1, 0x0

    .line 270
    invoke-static {v9, v7, v1, v8, v10}, Lorg/spongycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 271
    new-instance v1, Lorg/spongycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v1}, Lorg/spongycastle/pqc/crypto/sphincs/Horst;-><init>()V

    move-object/from16 v1, p1

    move-object v2, v11

    move/from16 v3, v16

    move-object/from16 v4, v19

    move-object v5, v7

    move-object v6, v15

    move-object v13, v7

    move-object v7, v14

    .line 273
    invoke-static/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/Horst;->horst_sign(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I

    move-result v1

    add-int v16, v16, v1

    .line 277
    new-instance v14, Lorg/spongycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v14}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;-><init>()V

    move/from16 v6, v16

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v12, :cond_4

    .line 281
    iput v7, v10, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    const/4 v1, 0x0

    .line 283
    invoke-static {v9, v13, v1, v8, v10}, Lorg/spongycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v11

    move v4, v6

    move-object/from16 v5, v19

    move v12, v6

    move-object v6, v13

    move/from16 v16, v7

    move-object v7, v15

    .line 285
    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->wots_sign(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B)V

    add-int/lit16 v12, v12, 0x860

    const/16 v17, 0x5

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move v4, v12

    move-object v5, v10

    move-object v6, v8

    move-object v9, v8

    move/from16 v8, v17

    .line 289
    invoke-static/range {v1 .. v8}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->compute_authpath_wots(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V

    add-int/lit16 v6, v12, 0xa0

    .line 292
    iget-wide v1, v10, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    and-long v1, v1, v21

    long-to-int v1, v1

    int-to-long v1, v1

    iput-wide v1, v10, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    .line 293
    iget-wide v1, v10, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    ushr-long v1, v1, v20

    iput-wide v1, v10, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    add-int/lit8 v7, v16, 0x1

    move-object v8, v9

    move-object/from16 v9, p1

    const/16 v12, 0xc

    goto :goto_4

    :cond_4
    move-object v9, v8

    const/4 v1, 0x0

    const/16 v2, 0x440

    .line 296
    invoke-direct {v0, v9, v1, v2}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    return-object v11
.end method

.method public generateSignature([B)[B
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, v1}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->crypto_sign(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 47
    check-cast p2, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    goto :goto_0

    .line 51
    :cond_0
    check-cast p2, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->getKeyData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    :goto_0
    return-void
.end method

.method verify(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z
    .locals 24

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 312
    array-length v2, v1

    const/16 v3, 0x860

    .line 314
    new-array v11, v3, [B

    const/16 v12, 0x20

    .line 315
    new-array v15, v12, [B

    .line 316
    new-array v14, v12, [B

    const v4, 0xa028

    .line 317
    new-array v13, v4, [B

    const/16 v5, 0x420

    .line 319
    new-array v10, v5, [B

    if-ne v2, v4, :cond_6

    const/16 v2, 0x40

    .line 326
    new-array v9, v2, [B

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 329
    aget-byte v8, p4, v6

    aput-byte v8, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 333
    :cond_0
    new-array v6, v12, [B

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v12, :cond_1

    .line 336
    aget-byte v8, v1, v7

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 338
    :cond_1
    invoke-static {v1, v2, v13, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 343
    invoke-interface {v1, v6, v2, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 346
    invoke-interface {v1, v10, v2, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 349
    array-length v4, v0

    invoke-interface {v1, v0, v2, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 351
    invoke-interface {v1, v9, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v0, 0x0

    move-wide/from16 v16, v0

    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    add-int v1, v12, v0

    .line 362
    aget-byte v1, v13, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    mul-int/lit8 v1, v0, 0x8

    shl-long/2addr v4, v1

    xor-long v16, v16, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 366
    :cond_2
    new-instance v0, Lorg/spongycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/sphincs/Horst;-><init>()V

    const/16 v7, 0x28

    move-object/from16 v4, p1

    move-object v5, v14

    move-object v6, v13

    move-object v8, v10

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/pqc/crypto/sphincs/Horst;->horst_verify(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I

    const/16 v0, 0x3428

    .line 375
    new-instance v1, Lorg/spongycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v1}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;-><init>()V

    move-wide/from16 v21, v16

    const/4 v0, 0x0

    const/16 v9, 0x3428

    :goto_3
    const/16 v4, 0xc

    if-ge v0, v4, :cond_3

    move-object v4, v1

    move-object/from16 v5, p1

    move-object v6, v11

    move-object v7, v13

    move v8, v9

    move v2, v9

    move-object v9, v14

    move-object/from16 v23, v10

    .line 379
    invoke-virtual/range {v4 .. v10}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->wots_verify(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)V

    add-int/2addr v2, v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move-object v5, v15

    move-object v7, v11

    move-object/from16 v9, v23

    .line 384
    invoke-static/range {v4 .. v10}, Lorg/spongycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    const-wide/16 v4, 0x1f

    and-long v4, v21, v4

    long-to-int v4, v4

    const/16 v20, 0x5

    move-object v5, v13

    move-object/from16 v13, p1

    move-object v6, v14

    move-object v7, v15

    move/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v2

    move-object/from16 v19, v23

    .line 385
    invoke-static/range {v13 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->validate_authpath(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V

    const/4 v4, 0x5

    shr-long v21, v21, v4

    add-int/lit16 v9, v2, 0xa0

    add-int/lit8 v0, v0, 0x1

    move-object v13, v5

    move-object/from16 v10, v23

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v23, v10

    move-object v6, v14

    const/4 v0, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    :goto_4
    if-ge v0, v12, :cond_5

    .line 395
    aget-byte v1, v6, v0

    add-int/lit16 v3, v0, 0x400

    aget-byte v3, v23, v3

    if-eq v1, v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return v2

    .line 323
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signature wrong size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifySignature([B[B)Z
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->verify(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z

    move-result p1

    return p1
.end method

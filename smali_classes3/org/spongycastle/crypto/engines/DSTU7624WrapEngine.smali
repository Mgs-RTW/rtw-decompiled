.class public Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;
.super Ljava/lang/Object;
.source "DSTU7624WrapEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# static fields
.field private static final BYTES_IN_INTEGER:I = 0x4


# instance fields
.field private B:[B

.field private Btemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private checkSumArray:[B

.field private engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

.field private forWrapping:Z

.field private intArray:[B

.field private zeroArray:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    .line 34
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->B:[B

    .line 35
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->checkSumArray:[B

    .line 36
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->zeroArray:[B

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    const/4 p1, 0x4

    .line 38
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intArray:[B

    return-void
.end method

.method private intToBytes(I[BI)V
    .locals 2

    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    .line 234
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 235
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 236
    aput-byte v1, p2, v0

    int-to-byte p1, p1

    .line 237
    aput-byte p1, p2, p3

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DSTU7624WrapEngine"

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 44
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 46
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 49
    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->forWrapping:Z

    .line 50
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to DSTU7624WrapEngine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unwrap([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 148
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->forWrapping:Z

    if-nez v0, :cond_7

    .line 153
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    rem-int v0, p3, v0

    if-nez v0, :cond_6

    mul-int/lit8 v0, p3, 0x2

    .line 159
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    mul-int/lit8 v2, v1, 0x6

    .line 163
    new-array v3, p3, [B

    const/4 v4, 0x0

    .line 164
    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    new-array p1, p1, [B

    .line 167
    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    div-int/2addr p3, p2

    invoke-static {v3, v4, p1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 171
    array-length p3, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v5

    div-int/2addr v5, p2

    sub-int/2addr p3, v5

    .line 172
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v5

    div-int/2addr v5, p2

    :goto_0
    if-eqz p3, :cond_0

    .line 175
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v6

    div-int/2addr v6, p2

    new-array v6, v6, [B

    .line 176
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v7

    div-int/2addr v7, p2

    invoke-static {v3, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v6

    div-int/2addr v6, p2

    sub-int/2addr p3, v6

    .line 181
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v6

    div-int/2addr v6, p2

    add-int/2addr v5, v6

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_1
    if-ge p3, v2, :cond_3

    .line 186
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v6

    div-int/2addr v6, p2

    invoke-static {v5, v4, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v5

    div-int/2addr v5, p2

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v6

    div-int/2addr v6, p2

    invoke-static {p1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v5, v2, p3

    .line 188
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intArray:[B

    invoke-direct {p0, v5, v6, v4}, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intToBytes(I[BI)V

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 191
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v6

    div-int/2addr v6, p2

    add-int/2addr v6, v5

    aget-byte v7, v3, v6

    iget-object v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intArray:[B

    aget-byte v8, v8, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 194
    :cond_1
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v5, v3, v4, v3, v4}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 196
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v5

    div-int/2addr v5, p2

    invoke-static {v3, v4, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x2

    :goto_3
    if-ge v5, v0, :cond_2

    .line 200
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    sub-int v7, v0, v5

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v8

    div-int/2addr v8, p2

    invoke-static {v6, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 203
    :cond_2
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v5

    div-int/2addr v5, p2

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v7

    div-int/2addr v7, p2

    invoke-static {v3, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    .line 206
    :cond_3
    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    div-int/2addr p3, p2

    invoke-static {p1, v4, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p1

    div-int/2addr p1, p2

    move p3, p1

    const/4 p1, 0x0

    :goto_4
    if-ge p1, v1, :cond_4

    .line 211
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v2

    div-int/2addr v2, p2

    invoke-static {v0, v4, v3, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    div-int/2addr v0, p2

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 215
    :cond_4
    array-length p1, v3

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->checkSumArray:[B

    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    invoke-static {v3, p1, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    array-length p1, v3

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p2

    sub-int/2addr p1, p2

    new-array p1, p1, [B

    .line 218
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->checkSumArray:[B

    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->zeroArray:[B

    invoke-static {p2, p3}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 224
    array-length p2, v3

    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {v3, v4, p1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 220
    :cond_5
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "checksum failed"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_6
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unwrap data must be a multiple of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for unwrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public wrap([BII)[B
    .locals 8

    .line 68
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_7

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    rem-int v0, p3, v0

    if-nez v0, :cond_6

    add-int v0, p2, p3

    .line 79
    array-length v1, p1

    if-gt v0, v1, :cond_5

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    div-int v0, p3, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v2, 0x6

    .line 88
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v4

    add-int/2addr v4, p3

    new-array v4, v4, [B

    const/4 v5, 0x0

    .line 89
    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->B:[B

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p2

    div-int/2addr p2, v1

    invoke-static {v4, v5, p1, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 95
    array-length p1, v4

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p2

    div-int/2addr p2, v1

    sub-int/2addr p1, p2

    .line 96
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p2

    div-int/2addr p2, v1

    :goto_0
    if-eqz p1, :cond_0

    .line 99
    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    div-int/2addr p3, v1

    new-array p3, p3, [B

    .line 100
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v6

    div-int/2addr v6, v1

    invoke-static {v4, p2, p3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    div-int/2addr p3, v1

    sub-int/2addr p1, p3

    .line 105
    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    div-int/2addr p3, v1

    add-int/2addr p2, p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v3, :cond_3

    .line 110
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->B:[B

    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    div-int/2addr p3, v1

    invoke-static {p2, v5, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    div-int/2addr p3, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v6

    div-int/2addr v6, v1

    invoke-static {p2, v5, v4, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p2, v4, v5, v4, v5}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    add-int/lit8 p1, p1, 0x1

    .line 115
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intArray:[B

    invoke-direct {p0, p1, p2, v5}, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intToBytes(I[BI)V

    const/4 p2, 0x0

    :goto_2
    const/4 p3, 0x4

    if-ge p2, p3, :cond_1

    .line 118
    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    div-int/2addr p3, v1

    add-int/2addr p3, p2

    aget-byte v6, v4, p3

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->intArray:[B

    aget-byte v7, v7, p2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 121
    :cond_1
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p2

    div-int/2addr p2, v1

    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->B:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v6

    div-int/2addr v6, v1

    invoke-static {v4, p2, p3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p2, 0x2

    :goto_3
    if-ge p2, v0, :cond_2

    .line 125
    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    add-int/lit8 v6, p2, -0x1

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    add-int/lit8 v7, p2, -0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v7

    div-int/2addr v7, v1

    invoke-static {p3, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 128
    :cond_2
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    add-int/lit8 p3, v0, -0x2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    div-int/2addr p3, v1

    invoke-static {v4, v5, p2, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 132
    :cond_3
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->B:[B

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p2

    div-int/2addr p2, v1

    invoke-static {p1, v5, v4, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p1

    div-int/2addr p1, v1

    move p2, p1

    const/4 p1, 0x0

    :goto_4
    if-ge p1, v2, :cond_4

    .line 137
    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->Btemp:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    div-int/2addr v0, v1

    invoke-static {p3, v5, v4, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    div-int/2addr p3, v1

    add-int/2addr p2, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_4
    return-object v4

    .line 81
    :cond_5
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_6
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "wrap data must be a multiple of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for wrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

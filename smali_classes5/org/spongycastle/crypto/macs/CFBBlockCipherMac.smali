.class public Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;
.super Ljava/lang/Object;
.source "CFBBlockCipherMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

.field private mac:[B

.field private macSize:I

.field private padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 3

    .line 192
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;II)V
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .line 253
    rem-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_0

    .line 258
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    .line 260
    new-instance v0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    .line 261
    iput-object p4, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .line 262
    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    .line 264
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    const/4 p1, 0x0

    .line 265
    iput p1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    return-void

    .line 255
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MAC size must be multiple of 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2

    .line 207
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4

    .line 340
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    .line 345
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 347
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_1

    .line 349
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    aput-byte v2, v1, v3

    .line 350
    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 358
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v0, v1, v2, v3, v2}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    .line 360
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getMacBlock([B)V

    .line 362
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    .line 366
    iget p1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 283
    iget v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 276
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    .line 278
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 377
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 379
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_0
    iput v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 387
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 4

    .line 289
    iget v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    .line 292
    iput v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 6

    if-ltz p3, :cond_1

    .line 308
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    .line 310
    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    sub-int v1, v0, v1

    if-le p3, v1, :cond_0

    .line 314
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v5}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    .line 318
    iput v5, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_0
    if-le p3, v0, :cond_0

    .line 324
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v1, p1, p2, v2, v5}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    iget p1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    return-void

    .line 305
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

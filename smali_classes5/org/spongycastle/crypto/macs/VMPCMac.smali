.class public Lorg/spongycastle/crypto/macs/VMPCMac;
.super Ljava/lang/Object;
.source "VMPCMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private P:[B

.field private T:[B

.field private g:B

.field private n:B

.field private s:B

.field private workingIV:[B

.field private workingKey:[B

.field private x1:B

.field private x2:B

.field private x3:B

.field private x4:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    .line 15
    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    return-void
.end method

.method private initKey([B[B)V
    .locals 7

    const/4 v0, 0x0

    .line 118
    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    const/16 v1, 0x100

    .line 119
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 122
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x300

    if-ge v1, v2, :cond_1

    .line 126
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v5, v1, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    array-length v4, p1

    rem-int v4, v1, v4

    aget-byte v4, p1, v4

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    .line 127
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    aget-byte v2, v2, v5

    .line 128
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v4, v4, v6

    aput-byte v4, v3, v5

    .line 129
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-ge p1, v2, :cond_2

    .line 133
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v5, p1, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    array-length v4, p2

    rem-int v4, p1, v4

    aget-byte v4, p2, v4

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v1, v1, v3

    iput-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    .line 134
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    aget-byte v1, v1, v5

    .line 135
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v4, v4, v6

    aput-byte v4, v3, v5

    .line 136
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v1, v3, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 138
    :cond_2
    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_0

    .line 30
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    .line 32
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x4:B

    iget-byte v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x3:B

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x4:B

    .line 33
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x3:B

    iget-byte v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x2:B

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x3:B

    .line 34
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x2:B

    iget-byte v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x1:B

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x2:B

    .line 35
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x1:B

    iget-byte v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x1:B

    .line 36
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    and-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    iget-byte v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x1:B

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 37
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/2addr v3, v0

    and-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/2addr v5, v0

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    iget-byte v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x2:B

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 38
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    iget-byte v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x3:B

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 39
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v5, v5, 0x3

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    iget-byte v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x4:B

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 40
    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    .line 42
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    .line 43
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 44
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    .line 45
    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    add-int/2addr v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x300

    if-ge v2, v3, :cond_1

    .line 51
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v6, v2, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    and-int/lit8 v7, v2, 0x1f

    aget-byte v5, v5, v7

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    .line 52
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    aget-byte v3, v3, v6

    .line 53
    iget-object v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v7, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v7, v7, 0xff

    aget-byte v5, v5, v7

    aput-byte v5, v4, v6

    .line 54
    iget-object v4, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v5, v5, 0xff

    aput-byte v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x14

    .line 58
    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    .line 61
    iget-object v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    iget-object v7, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v8, v4, 0xff

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    iput-byte v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    .line 62
    iget-object v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v9, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v9, v9, 0xff

    aget-byte v7, v7, v9

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    add-int/2addr v6, v0

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 64
    iget-object v5, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    aget-byte v5, v5, v8

    .line 65
    iget-object v6, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v9, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v9, v9, 0xff

    aget-byte v7, v7, v9

    aput-byte v7, v6, v8

    .line 66
    iget-object v6, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v7, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v7, v7, 0xff

    aput-byte v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 69
    :cond_2
    array-length v0, v3

    invoke-static {v3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/VMPCMac;->reset()V

    .line 72
    array-length p1, v3

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "VMPC-MAC"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 87
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    .line 93
    check-cast p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 94
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 96
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->workingIV:[B

    .line 104
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->workingIV:[B

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->workingIV:[B

    array-length p1, p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->workingIV:[B

    array-length p1, p1

    const/16 v1, 0x300

    if-gt p1, v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->workingKey:[B

    .line 112
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/VMPCMac;->reset()V

    return-void

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "VMPC-MAC requires 1 to 768 bytes of IV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "VMPC-MAC Init parameters must include a key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "VMPC-MAC Init parameters must include an IV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 4

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->workingKey:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/macs/VMPCMac;->initKey([B[B)V

    const/4 v0, 0x0

    .line 144
    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x4:B

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x3:B

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x2:B

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x1:B

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    const/16 v1, 0x20

    .line 145
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 148
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    aput-byte v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    .line 157
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x4:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x3:B

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x4:B

    .line 158
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x3:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x2:B

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x3:B

    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x2:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x1:B

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x2:B

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x1:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    and-int/lit16 p1, v1, 0xff

    aget-byte p1, v0, p1

    iput-byte p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x1:B

    .line 161
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    and-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    and-int/lit8 v2, v2, 0x1f

    aget-byte v1, v1, v2

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x1:B

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 162
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x1f

    aget-byte v1, v1, v2

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x2:B

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 163
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x1f

    aget-byte v1, v1, v2

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x3:B

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 164
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v2, v2, 0x3

    and-int/lit8 v2, v2, 0x1f

    aget-byte v1, v1, v2

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->x4:B

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 165
    iget-byte p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0x1f

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->g:B

    .line 167
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v0, v0, 0xff

    aget-byte p1, p1, v0

    .line 168
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 169
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v1, v1, 0xff

    aput-byte p1, v0, v1

    .line 170
    iget-byte p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    add-int/lit8 p1, p1, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->n:B

    return-void
.end method

.method public update([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    add-int v0, p2, p3

    .line 176
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 183
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/macs/VMPCMac;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 178
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

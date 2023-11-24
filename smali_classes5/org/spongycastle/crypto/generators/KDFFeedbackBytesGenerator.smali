.class public Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;
.super Ljava/lang/Object;
.source "KDFFeedbackBytesGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/MacDerivationFunction;


# static fields
.field private static final INTEGER_MAX:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private fixedInputData:[B

.field private generatedBytes:I

.field private final h:I

.field private ios:[B

.field private iv:[B

.field private k:[B

.field private maxSizeExcl:I

.field private final prf:Lorg/spongycastle/crypto/Mac;

.field private useCounter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    .line 19
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 20
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Mac;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    .line 46
    invoke-interface {p1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    .line 47
    iget p1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    return-void
.end method

.method private generateNext()V
    .locals 5

    .line 138
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->iv:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->iv:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 147
    :goto_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->useCounter:Z

    if-eqz v0, :cond_1

    .line 149
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 152
    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v2, v2

    packed-switch v2, :pswitch_data_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported size of counter i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_0
    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    ushr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 158
    :pswitch_1
    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    ushr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 161
    :pswitch_2
    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 164
    :pswitch_3
    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 169
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->fixedInputData:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->fixedInputData:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 173
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 99
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int/2addr v0, p3

    if-ltz v0, :cond_2

    .line 100
    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    if-ge v0, v1, :cond_2

    .line 106
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generateNext()V

    .line 113
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    rem-int/2addr v0, v1

    .line 114
    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    iget v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v3, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 115
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 116
    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    sub-int v0, p3, v1

    add-int/2addr p2, v1

    :goto_0
    if-lez v0, :cond_1

    .line 123
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generateNext()V

    .line 124
    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 125
    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    sub-int/2addr v0, v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_1
    return p3

    .line 102
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current KDFCTR may only be used for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMac()Lorg/spongycastle/crypto/Mac;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 5

    .line 52
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;

    if-eqz v0, :cond_2

    .line 57
    check-cast p1, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->getKI()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 65
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->getFixedInputData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->fixedInputData:[B

    .line 67
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->getR()I

    move-result v0

    .line 68
    div-int/lit8 v1, v0, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    .line 70
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->useCounter()Z

    move-result v1

    const v2, 0x7fffffff

    if-eqz v1, :cond_1

    .line 73
    sget-object v1, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 74
    sget-object v1, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    :goto_0
    iput v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    goto :goto_1

    .line 79
    :cond_1
    iput v2, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    .line 82
    :goto_1
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->iv:[B

    .line 83
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->useCounter()Z

    move-result p1

    iput-boolean p1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->useCounter:Z

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lorg/spongycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    return-void

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type of arguments given"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

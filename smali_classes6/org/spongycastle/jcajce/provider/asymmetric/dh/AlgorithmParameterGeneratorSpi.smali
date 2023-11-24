.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;
.super Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;
.source "AlgorithmParameterGeneratorSpi.java"


# instance fields
.field private l:I

.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;-><init>()V

    const/16 v0, 0x800

    .line 20
    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 5

    .line 50
    new-instance v0, Lorg/spongycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 52
    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v1

    .line 54
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    .line 56
    iget v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1, v3}, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    goto :goto_0

    .line 60
    :cond_0
    iget v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 63
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v0

    :try_start_0
    const-string v1, "DH"

    .line 69
    invoke-virtual {p0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 70
    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    invoke-direct {v2, v3, v0, v4}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    .line 28
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    .line 29
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 37
    instance-of v0, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Ljavax/crypto/spec/DHGenParameterSpec;

    .line 43
    invoke-virtual {p1}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    .line 44
    invoke-virtual {p1}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    .line 45
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "DH parameter generator requires a DHGenParameterSpec for initialisation"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

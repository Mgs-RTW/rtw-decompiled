.class public Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;
.super Ljava/lang/Object;
.source "ECNewPublicKeyTransform.java"

# interfaces
.implements Lorg/spongycastle/crypto/ec/ECPairTransform;


# instance fields
.field private key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .line 86
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 31
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    .line 33
    check-cast p1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 35
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 40
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ECPublicKeyParameters are required for new public key transform."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_2

    .line 49
    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 50
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->random:Ljava/security/SecureRandom;

    :goto_0
    return-void

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ECPublicKeyParameters are required for new public key transform."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transform(Lorg/spongycastle/crypto/ec/ECPair;)Lorg/spongycastle/crypto/ec/ECPair;
    .locals 5

    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v2

    .line 72
    iget-object v3, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lorg/spongycastle/crypto/ec/ECUtil;->generateK(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v3, 0x2

    .line 74
    new-array v3, v3, [Lorg/spongycastle/math/ec/ECPoint;

    .line 75
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 76
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getY()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    .line 79
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 81
    new-instance p1, Lorg/spongycastle/crypto/ec/ECPair;

    aget-object v0, v3, v4

    aget-object v1, v3, v1

    invoke-direct {p1, v0, v1}, Lorg/spongycastle/crypto/ec/ECPair;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object p1

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ECNewPublicKeyTransform not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

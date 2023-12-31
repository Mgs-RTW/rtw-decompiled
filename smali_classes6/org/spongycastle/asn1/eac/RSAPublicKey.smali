.class public Lorg/spongycastle/asn1/eac/RSAPublicKey;
.super Lorg/spongycastle/asn1/eac/PublicKeyDataObject;
.source "RSAPublicKey.java"


# static fields
.field private static exponentValid:I = 0x2

.field private static modulusValid:I = 0x1


# instance fields
.field private exponent:Ljava/math/BigInteger;

.field private modulus:Ljava/math/BigInteger;

.field private usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private valid:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    .line 64
    iput-object p1, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 65
    iput-object p2, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 66
    iput-object p3, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->exponent:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    .line 36
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/UnsignedInteger;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/UnsignedInteger;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DERTaggedObject :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/UnsignedInteger;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-> not an Iso7816RSAPublicKeyStructure"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/RSAPublicKey;->setExponent(Lorg/spongycastle/asn1/eac/UnsignedInteger;)V

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/RSAPublicKey;->setModulus(Lorg/spongycastle/asn1/eac/UnsignedInteger;)V

    goto :goto_0

    .line 56
    :cond_0
    iget p1, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "missing argument -> not an Iso7816RSAPublicKeyStructure"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setExponent(Lorg/spongycastle/asn1/eac/UnsignedInteger;)V
    .locals 2

    .line 99
    iget v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/RSAPublicKey;->exponentValid:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 101
    iget v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/RSAPublicKey;->exponentValid:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    .line 102
    invoke-virtual {p1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->exponent:Ljava/math/BigInteger;

    return-void

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Exponent already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setModulus(Lorg/spongycastle/asn1/eac/UnsignedInteger;)V
    .locals 2

    .line 86
    iget v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/RSAPublicKey;->modulusValid:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 88
    iget v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/RSAPublicKey;->modulusValid:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    .line 89
    invoke-virtual {p1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Modulus already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->exponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getUsage()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 112
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 114
    iget-object v1, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    new-instance v1, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 116
    new-instance v1, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 118
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

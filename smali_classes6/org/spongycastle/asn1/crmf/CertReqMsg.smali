.class public Lorg/spongycastle/asn1/crmf/CertReqMsg;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertReqMsg.java"


# instance fields
.field private certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

.field private pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

.field private regInfo:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/CertRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 29
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/crmf/CertRequest;Lorg/spongycastle/asn1/crmf/ProofOfPossession;[Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_1

    .line 77
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

    .line 78
    iput-object p2, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    if-eqz p3, :cond_0

    .line 82
    new-instance p1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p1, p3}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    :cond_0
    return-void

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certReq\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 149
    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertReqMsg;
    .locals 1

    .line 42
    instance-of v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 48
    new-instance v0, Lorg/spongycastle/asn1/crmf/CertReqMsg;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/crmf/CertReqMsg;
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertReqMsg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCertReq()Lorg/spongycastle/asn1/crmf/CertRequest;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

    return-object v0
.end method

.method public getPop()Lorg/spongycastle/asn1/crmf/ProofOfPossession;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    return-object v0
.end method

.method public getPopo()Lorg/spongycastle/asn1/crmf/ProofOfPossession;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    return-object v0
.end method

.method public getRegInfo()[Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;
    .locals 3

    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;

    const/4 v1, 0x0

    .line 115
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 117
    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 135
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 137
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 139
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 140
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 142
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

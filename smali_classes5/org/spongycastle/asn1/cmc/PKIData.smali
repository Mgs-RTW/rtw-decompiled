.class public Lorg/spongycastle/asn1/cmc/PKIData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIData.java"


# instance fields
.field private final cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

.field private final controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

.field private final otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

.field private final reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 48
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    const/4 v2, 0x0

    .line 49
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 51
    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 55
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/cmc/TaggedRequest;

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    const/4 v2, 0x0

    .line 56
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 58
    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/cmc/TaggedRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedRequest;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 61
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 62
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    const/4 v2, 0x0

    .line 63
    :goto_2
    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 65
    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    .line 68
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 69
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/asn1/cmc/OtherMsg;

    iput-object v1, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    .line 70
    :goto_3
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 72
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cmc/OtherMsg;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/OtherMsg;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void

    .line 44
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence not 4 elements."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/cmc/TaggedAttribute;[Lorg/spongycastle/asn1/cmc/TaggedRequest;[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;[Lorg/spongycastle/asn1/cmc/OtherMsg;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    .line 35
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    .line 36
    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    .line 37
    iput-object p4, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/PKIData;
    .locals 1

    .line 78
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/PKIData;

    if-eqz v0, :cond_0

    .line 80
    check-cast p0, Lorg/spongycastle/asn1/cmc/PKIData;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 84
    new-instance v0, Lorg/spongycastle/asn1/cmc/PKIData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmc/PKIData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCmsSequence()[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    return-object v0
.end method

.method public getControlSequence()[Lorg/spongycastle/asn1/cmc/TaggedAttribute;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    return-object v0
.end method

.method public getOtherMsgSequence()[Lorg/spongycastle/asn1/cmc/OtherMsg;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    return-object v0
.end method

.method public getReqSequence()[Lorg/spongycastle/asn1/cmc/TaggedRequest;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 91
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/spongycastle/asn1/ASN1Encodable;

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

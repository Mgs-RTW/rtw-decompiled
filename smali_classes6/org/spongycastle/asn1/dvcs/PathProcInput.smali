.class public Lorg/spongycastle/asn1/dvcs/PathProcInput;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PathProcInput.java"


# instance fields
.field private acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

.field private explicitPolicyReqd:Z

.field private inhibitAnyPolicy:Z

.field private inhibitPolicyMapping:Z


# direct methods
.method public constructor <init>([Lorg/spongycastle/asn1/x509/PolicyInformation;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 35
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 36
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 40
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/PolicyInformation;ZZZ)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 35
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 36
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 45
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 46
    iput-boolean p2, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 47
    iput-boolean p3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 48
    iput-boolean p4, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    return-void
.end method

.method private static fromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/PolicyInformation;
    .locals 3

    .line 53
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/PolicyInformation;

    const/4 v1, 0x0

    .line 55
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 57
    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .locals 5

    .line 65
    instance-of v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;

    if-eqz v0, :cond_0

    .line 67
    check-cast p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;

    return-object p0

    :cond_0
    if-eqz p0, :cond_4

    .line 71
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 73
    new-instance v2, Lorg/spongycastle/asn1/dvcs/PathProcInput;

    invoke-static {v1}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->fromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/dvcs/PathProcInput;-><init>([Lorg/spongycastle/asn1/x509/PolicyInformation;)V

    const/4 v1, 0x1

    .line 75
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 77
    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 79
    instance-of v4, v3, Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v4, :cond_1

    .line 81
    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->setInhibitPolicyMapping(Z)V

    goto :goto_1

    .line 84
    :cond_1
    instance-of v4, v3, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v4, :cond_2

    .line 86
    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :pswitch_0
    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->setInhibitAnyPolicy(Z)V

    goto :goto_1

    .line 91
    :pswitch_1
    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->setExplicitPolicyReqd(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .locals 0

    .line 113
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/PathProcInput;

    move-result-object p0

    return-object p0
.end method

.method private setExplicitPolicyReqd(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    return-void
.end method

.method private setInhibitAnyPolicy(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    return-void
.end method

.method private setInhibitPolicyMapping(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    return-void
.end method


# virtual methods
.method public getAcceptablePolicySet()[Lorg/spongycastle/asn1/x509/PolicyInformation;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    return-object v0
.end method

.method public isExplicitPolicyReqd()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    return v0
.end method

.method public isInhibitAnyPolicy()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    return v0
.end method

.method public isInhibitPolicyMapping()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 118
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 119
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 121
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 123
    iget-object v4, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_0
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 128
    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    if-eqz v1, :cond_1

    .line 130
    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    :cond_1
    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    if-eqz v1, :cond_2

    .line 134
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-boolean v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    :cond_2
    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    if-eqz v1, :cond_3

    .line 138
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-boolean v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 141
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathProcInput: {\nacceptablePolicySet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 147
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ninhibitPolicyMapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nexplicitPolicyReqd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ninhibitAnyPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

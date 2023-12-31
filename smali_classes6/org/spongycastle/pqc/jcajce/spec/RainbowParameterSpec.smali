.class public Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;
.super Ljava/lang/Object;
.source "RainbowParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static final DEFAULT_VI:[I


# instance fields
.field private vi:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 37
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->DEFAULT_VI:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0xc
        0x11
        0x16
        0x21
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->DEFAULT_VI:[I

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    .line 61
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->checkParams()V

    return-void
.end method

.method private checkParams()V
    .locals 4

    .line 66
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    .line 72
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    .line 74
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "v[i] has to be smaller than v[i+1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rainbow needs at least 1 layer, such that v1 < v2."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no layers defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDocumentLength()I
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNumOfLayers()I
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getVi()[I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

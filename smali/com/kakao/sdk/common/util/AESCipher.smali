.class public final Lcom/kakao/sdk/common/util/AESCipher;
.super Ljava/lang/Object;
.source "AESCipher.kt"

# interfaces
.implements Lcom/kakao/sdk/common/util/Cipher;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAESCipher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AESCipher.kt\ncom/kakao/sdk/common/util/AESCipher\n*L\n1#1,116:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0016\u001a\u00020\rH\u0002J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\rH\u0016J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\rH\u0016J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\r2\u0006\u0010\u001c\u001a\u00020\rH\u0002J\u001e\u0010\u001b\u001a\u0004\u0018\u00010\r2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\rH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/kakao/sdk/common/util/AESCipher;",
        "Lcom/kakao/sdk/common/util/Cipher;",
        "contextInfo",
        "Lcom/kakao/sdk/common/model/ContextInfo;",
        "(Lcom/kakao/sdk/common/model/ContextInfo;)V",
        "CHAR_SET",
        "Ljava/nio/charset/Charset;",
        "ITER_COUNT",
        "",
        "IV_PARAMETER_SPEC",
        "Ljavax/crypto/spec/IvParameterSpec;",
        "KEY_LENGTH",
        "algorithm",
        "",
        "cipherAlgorithm",
        "decryptor",
        "Ljavax/crypto/Cipher;",
        "encryptor",
        "initVector",
        "",
        "keyGenAlgorithm",
        "base64DecodeAndXor",
        "source",
        "decrypt",
        "encrypted",
        "encrypt",
        "value",
        "xorMessage",
        "message",
        "key",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final CHAR_SET:Ljava/nio/charset/Charset;

.field private final ITER_COUNT:I

.field private final IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

.field private final KEY_LENGTH:I

.field private final algorithm:Ljava/lang/String;

.field private final cipherAlgorithm:Ljava/lang/String;

.field private final decryptor:Ljavax/crypto/Cipher;

.field private final encryptor:Ljavax/crypto/Cipher;

.field private final initVector:[B

.field private final keyGenAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/kakao/sdk/common/util/AESCipher;-><init>(Lcom/kakao/sdk/common/model/ContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/common/model/ContextInfo;)V
    .locals 7

    const-string v0, "contextInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "My0oeSI1IzInbyA+LVFaW2wiNSokPAMiMipOLS4="

    .line 36
    invoke-direct {p0, v0}, Lcom/kakao/sdk/common/util/AESCipher;->base64DecodeAndXor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/common/util/AESCipher;->keyGenAlgorithm:Ljava/lang/String;

    const-string v0, "Iio+ASgjKE4/ZSIjXDMOCUoCDww="

    .line 37
    invoke-direct {p0, v0}, Lcom/kakao/sdk/common/util/AESCipher;->base64DecodeAndXor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/common/util/AESCipher;->cipherAlgorithm:Ljava/lang/String;

    const-string v0, "AES"

    .line 38
    iput-object v0, p0, Lcom/kakao/sdk/common/util/AESCipher;->algorithm:Ljava/lang/String;

    const/4 v0, 0x2

    .line 39
    iput v0, p0, Lcom/kakao/sdk/common/util/AESCipher;->ITER_COUNT:I

    const/16 v1, 0x100

    .line 40
    iput v1, p0, Lcom/kakao/sdk/common/util/AESCipher;->KEY_LENGTH:I

    .line 41
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v1, p0, Lcom/kakao/sdk/common/util/AESCipher;->CHAR_SET:Ljava/nio/charset/Charset;

    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 47
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/kakao/sdk/common/util/AESCipher;->initVector:[B

    .line 48
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/kakao/sdk/common/util/AESCipher;->initVector:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v2, p0, Lcom/kakao/sdk/common/util/AESCipher;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    .line 51
    invoke-interface {p1}, Lcom/kakao/sdk/common/model/ContextInfo;->getSigningKeyHash()Ljava/lang/String;

    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/kakao/sdk/common/util/AESCipher;->keyGenAlgorithm:Ljava/lang/String;

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "(this as java.lang.String).toCharArray()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p1}, Lcom/kakao/sdk/common/model/ContextInfo;->getSalt()[B

    move-result-object p1

    .line 56
    iget v2, p0, Lcom/kakao/sdk/common/util/AESCipher;->ITER_COUNT:I

    .line 57
    iget v4, p0, Lcom/kakao/sdk/common/util/AESCipher;->KEY_LENGTH:I

    .line 53
    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v6, v1, p1, v2, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 59
    check-cast v6, Ljava/security/spec/KeySpec;

    invoke-virtual {v3, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 60
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "tmp"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    iget-object v3, p0, Lcom/kakao/sdk/common/util/AESCipher;->algorithm:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/kakao/sdk/common/util/AESCipher;->cipherAlgorithm:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const-string v3, "Cipher.getInstance(cipherAlgorithm)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/kakao/sdk/common/util/AESCipher;->encryptor:Ljavax/crypto/Cipher;

    .line 63
    iget-object v2, p0, Lcom/kakao/sdk/common/util/AESCipher;->cipherAlgorithm:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/kakao/sdk/common/util/AESCipher;->decryptor:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/kakao/sdk/common/util/AESCipher;->encryptor:Ljavax/crypto/Cipher;

    move-object v4, v1

    check-cast v4, Ljava/security/Key;

    iget-object v6, p0, Lcom/kakao/sdk/common/util/AESCipher;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    check-cast v6, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v3, v2, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 67
    iget-object v3, p0, Lcom/kakao/sdk/common/util/AESCipher;->decryptor:Ljavax/crypto/Cipher;

    check-cast v1, Ljava/security/Key;

    iget-object v4, p0, Lcom/kakao/sdk/common/util/AESCipher;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    check-cast v4, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v3, v0, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    array-length p1, p1

    div-int/2addr p1, v0

    invoke-static {v3, v5, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iget-object v3, p0, Lcom/kakao/sdk/common/util/AESCipher;->algorithm:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/kakao/sdk/common/util/AESCipher;->encryptor:Ljavax/crypto/Cipher;

    check-cast v1, Ljava/security/Key;

    iget-object v3, p0, Lcom/kakao/sdk/common/util/AESCipher;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    check-cast v3, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 73
    iget-object p1, p0, Lcom/kakao/sdk/common/util/AESCipher;->decryptor:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/kakao/sdk/common/util/AESCipher;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    check-cast v2, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 1
        0x70t
        0x4et
        0x4bt
        0x37t
        -0x36t
        -0x1et
        -0xat
        0x2ct
        0x66t
        -0x7et
        -0x7et
        0x5ct
        -0x74t
        -0x30t
        -0x7bt
        -0x37t
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/common/model/ContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 34
    sget-object p1, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p1}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/common/model/ContextInfo;

    :cond_0
    invoke-direct {p0, p1}, Lcom/kakao/sdk/common/util/AESCipher;-><init>(Lcom/kakao/sdk/common/model/ContextInfo;)V

    return-void
.end method

.method private final base64DecodeAndXor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 114
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v0, "Base64.decode(source, Base64.DEFAULT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/kakao/sdk/common/util/AESCipher;->xorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final xorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.kakao.api"

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/kakao/sdk/common/util/AESCipher;->xorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final xorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "(this as java.lang.String).toCharArray()"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    array-length v0, p1

    .line 100
    array-length v2, p2

    .line 101
    new-array v3, v0, [C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 104
    aget-char v5, p1, v4

    int-to-byte v5, v5

    rem-int v6, v4, v2

    aget-char v6, p2, v6

    int-to-byte v6, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    int-to-char v5, v5

    aput-char v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "encrypted"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/kakao/sdk/common/util/AESCipher;->decryptor:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string v0, "decryptor.doFinal(Base64\u2026crypted, Base64.NO_WRAP))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/common/util/AESCipher;->CHAR_SET:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/kakao/sdk/common/util/AESCipher;->encryptor:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/kakao/sdk/common/util/AESCipher;->CHAR_SET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Base64.encodeToString(en\u2026AR_SET)), Base64.NO_WRAP)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

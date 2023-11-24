.class final Lio/jsonwebtoken/io/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASE64URL_ALPHABET:[C

.field private static final BASE64URL_IALPHABET:[I

.field private static final BASE64_ALPHABET:[C

.field private static final BASE64_IALPHABET:[I

.field static final DEFAULT:Lio/jsonwebtoken/io/Base64;

.field private static final IALPHABET_MAX_INDEX:I

.field static final URL_SAFE:Lio/jsonwebtoken/io/Base64;


# instance fields
.field private final ALPHABET:[C

.field private final IALPHABET:[I

.field private final urlsafe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/jsonwebtoken/io/Base64;->BASE64_ALPHABET:[C

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/jsonwebtoken/io/Base64;->BASE64URL_ALPHABET:[C

    const/16 v0, 0x100

    .line 43
    new-array v1, v0, [I

    sput-object v1, Lio/jsonwebtoken/io/Base64;->BASE64_IALPHABET:[I

    .line 44
    new-array v0, v0, [I

    sput-object v0, Lio/jsonwebtoken/io/Base64;->BASE64URL_IALPHABET:[I

    .line 45
    sget-object v0, Lio/jsonwebtoken/io/Base64;->BASE64_IALPHABET:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lio/jsonwebtoken/io/Base64;->IALPHABET_MAX_INDEX:I

    .line 48
    sget-object v0, Lio/jsonwebtoken/io/Base64;->BASE64_IALPHABET:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 49
    sget-object v0, Lio/jsonwebtoken/io/Base64;->BASE64_IALPHABET:[I

    sget-object v2, Lio/jsonwebtoken/io/Base64;->BASE64URL_IALPHABET:[I

    sget-object v3, Lio/jsonwebtoken/io/Base64;->BASE64_IALPHABET:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    sget-object v0, Lio/jsonwebtoken/io/Base64;->BASE64_ALPHABET:[C

    array-length v0, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 51
    sget-object v3, Lio/jsonwebtoken/io/Base64;->BASE64_IALPHABET:[I

    sget-object v5, Lio/jsonwebtoken/io/Base64;->BASE64_ALPHABET:[C

    aget-char v5, v5, v2

    aput v2, v3, v5

    .line 52
    sget-object v3, Lio/jsonwebtoken/io/Base64;->BASE64URL_IALPHABET:[I

    sget-object v5, Lio/jsonwebtoken/io/Base64;->BASE64URL_ALPHABET:[C

    aget-char v5, v5, v2

    aput v2, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lio/jsonwebtoken/io/Base64;->BASE64_IALPHABET:[I

    const/16 v2, 0x3d

    aput v4, v0, v2

    .line 55
    sget-object v0, Lio/jsonwebtoken/io/Base64;->BASE64URL_IALPHABET:[I

    aput v4, v0, v2

    .line 58
    new-instance v0, Lio/jsonwebtoken/io/Base64;

    invoke-direct {v0, v4}, Lio/jsonwebtoken/io/Base64;-><init>(Z)V

    sput-object v0, Lio/jsonwebtoken/io/Base64;->DEFAULT:Lio/jsonwebtoken/io/Base64;

    .line 59
    new-instance v0, Lio/jsonwebtoken/io/Base64;

    invoke-direct {v0, v1}, Lio/jsonwebtoken/io/Base64;-><init>(Z)V

    sput-object v0, Lio/jsonwebtoken/io/Base64;->URL_SAFE:Lio/jsonwebtoken/io/Base64;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lio/jsonwebtoken/io/Base64;->urlsafe:Z

    if-eqz p1, :cond_0

    .line 67
    sget-object v0, Lio/jsonwebtoken/io/Base64;->BASE64URL_ALPHABET:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lio/jsonwebtoken/io/Base64;->BASE64_ALPHABET:[C

    :goto_0
    iput-object v0, p0, Lio/jsonwebtoken/io/Base64;->ALPHABET:[C

    if-eqz p1, :cond_1

    .line 68
    sget-object p1, Lio/jsonwebtoken/io/Base64;->BASE64URL_IALPHABET:[I

    goto :goto_1

    :cond_1
    sget-object p1, Lio/jsonwebtoken/io/Base64;->BASE64_IALPHABET:[I

    :goto_1
    iput-object p1, p0, Lio/jsonwebtoken/io/Base64;->IALPHABET:[I

    return-void
.end method

.method private ctoi(C)I
    .locals 2

    .line 218
    sget v0, Lio/jsonwebtoken/io/Base64;->IALPHABET_MAX_INDEX:I

    if-le p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/jsonwebtoken/io/Base64;->IALPHABET:[I

    aget v0, v0, p1

    :goto_0
    if-ltz v0, :cond_1

    return v0

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/jsonwebtoken/io/Base64;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " character: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v0, Lio/jsonwebtoken/io/DecodingException;

    invoke-direct {v0, p1}, Lio/jsonwebtoken/io/DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encodeToChar([BZ)[C
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 91
    array-length v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    .line 93
    new-array v1, v3, [C

    return-object v1

    .line 96
    :cond_1
    div-int/lit8 v5, v4, 0x3

    mul-int/lit8 v5, v5, 0x3

    sub-int v6, v4, v5

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    .line 99
    div-int/lit8 v8, v4, 0x3

    add-int/2addr v8, v7

    const/4 v9, 0x2

    shl-int/2addr v8, v9

    if-eqz p2, :cond_2

    add-int/lit8 v10, v8, -0x1

    .line 100
    div-int/lit8 v10, v10, 0x4c

    shl-int/2addr v10, v7

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    add-int/2addr v8, v10

    if-ne v6, v9, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    if-ne v6, v7, :cond_4

    const/4 v10, 0x2

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 109
    :goto_2
    iget-boolean v11, v0, Lio/jsonwebtoken/io/Base64;->urlsafe:Z

    if-eqz v11, :cond_5

    sub-int v10, v8, v10

    goto :goto_3

    :cond_5
    move v10, v8

    :goto_3
    new-array v10, v10, [C

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    const/16 v14, 0xa

    if-ge v11, v5, :cond_7

    add-int/lit8 v15, v11, 0x1

    .line 115
    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v16, v15, 0x1

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v11, v15

    add-int/lit8 v15, v16, 0x1

    aget-byte v3, v1, v16

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v11

    add-int/lit8 v11, v12, 0x1

    .line 118
    iget-object v7, v0, Lio/jsonwebtoken/io/Base64;->ALPHABET:[C

    ushr-int/lit8 v16, v3, 0x12

    and-int/lit8 v16, v16, 0x3f

    aget-char v7, v7, v16

    aput-char v7, v10, v12

    add-int/lit8 v7, v11, 0x1

    .line 119
    iget-object v12, v0, Lio/jsonwebtoken/io/Base64;->ALPHABET:[C

    ushr-int/lit8 v16, v3, 0xc

    and-int/lit8 v16, v16, 0x3f

    aget-char v12, v12, v16

    aput-char v12, v10, v11

    add-int/lit8 v11, v7, 0x1

    .line 120
    iget-object v12, v0, Lio/jsonwebtoken/io/Base64;->ALPHABET:[C

    ushr-int/lit8 v16, v3, 0x6

    and-int/lit8 v16, v16, 0x3f

    aget-char v12, v12, v16

    aput-char v12, v10, v7

    add-int/lit8 v7, v11, 0x1

    .line 121
    iget-object v12, v0, Lio/jsonwebtoken/io/Base64;->ALPHABET:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v12, v3

    aput-char v3, v10, v11

    if-eqz p2, :cond_6

    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0x13

    if-ne v13, v3, :cond_6

    add-int/lit8 v3, v8, -0x2

    if-ge v7, v3, :cond_6

    add-int/lit8 v3, v7, 0x1

    const/16 v11, 0xd

    .line 125
    aput-char v11, v10, v7

    add-int/lit8 v7, v3, 0x1

    .line 126
    aput-char v14, v10, v3

    move v12, v7

    const/4 v13, 0x0

    goto :goto_5

    :cond_6
    move v12, v7

    :goto_5
    move v11, v15

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    if-lez v6, :cond_b

    .line 134
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v14

    if-ne v6, v9, :cond_8

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v3, v1, 0x2

    move/from16 v17, v3

    goto :goto_6

    :cond_8
    const/16 v17, 0x0

    :goto_6
    or-int v1, v2, v17

    add-int/lit8 v2, v8, -0x4

    .line 137
    iget-object v3, v0, Lio/jsonwebtoken/io/Base64;->ALPHABET:[C

    shr-int/lit8 v4, v1, 0xc

    aget-char v3, v3, v4

    aput-char v3, v10, v2

    add-int/lit8 v2, v8, -0x3

    .line 138
    iget-object v3, v0, Lio/jsonwebtoken/io/Base64;->ALPHABET:[C

    ushr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    aput-char v3, v10, v2

    const/16 v2, 0x3d

    if-ne v6, v9, :cond_9

    add-int/lit8 v3, v8, -0x2

    .line 142
    iget-object v4, v0, Lio/jsonwebtoken/io/Base64;->ALPHABET:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v4, v1

    aput-char v1, v10, v3

    goto :goto_7

    .line 143
    :cond_9
    iget-boolean v1, v0, Lio/jsonwebtoken/io/Base64;->urlsafe:Z

    if-nez v1, :cond_a

    add-int/lit8 v1, v8, -0x2

    .line 144
    aput-char v2, v10, v1

    .line 146
    :cond_a
    :goto_7
    iget-boolean v1, v0, Lio/jsonwebtoken/io/Base64;->urlsafe:Z

    if-nez v1, :cond_b

    const/4 v1, 0x1

    sub-int/2addr v8, v1

    .line 147
    aput-char v2, v10, v8

    :cond_b
    return-object v10
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-boolean v0, p0, Lio/jsonwebtoken/io/Base64;->urlsafe:Z

    if-eqz v0, :cond_0

    const-string v0, "base64url"

    goto :goto_0

    :cond_0
    const-string v0, "base64"

    :goto_0
    return-object v0
.end method


# virtual methods
.method final decodeFast([C)[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/io/DecodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 240
    array-length v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 242
    new-array p1, v0, [B

    return-object p1

    :cond_1
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 248
    iget-object v4, p0, Lio/jsonwebtoken/io/Base64;->IALPHABET:[I

    aget-char v5, p1, v3

    aget v4, v4, v5

    if-gez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-lez v2, :cond_3

    .line 253
    iget-object v4, p0, Lio/jsonwebtoken/io/Base64;->IALPHABET:[I

    aget-char v5, p1, v2

    aget v4, v4, v5

    if-gez v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 258
    :cond_3
    aget-char v4, p1, v2

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_5

    add-int/lit8 v4, v2, -0x1

    aget-char v4, p1, v4

    if-ne v4, v5, :cond_4

    const/4 v4, 0x2

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    sub-int v5, v2, v3

    add-int/2addr v5, v6

    const/16 v7, 0x4c

    if-le v1, v7, :cond_7

    .line 260
    aget-char v1, p1, v7

    const/16 v7, 0xd

    if-ne v1, v7, :cond_6

    div-int/lit8 v1, v5, 0x4e

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    shl-int/2addr v1, v6

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    sub-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x6

    shr-int/lit8 v5, v5, 0x3

    sub-int/2addr v5, v4

    .line 263
    new-array v7, v5, [B

    .line 267
    div-int/lit8 v8, v5, 0x3

    mul-int/lit8 v8, v8, 0x3

    move v9, v3

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_6
    if-ge v3, v8, :cond_9

    add-int/lit8 v11, v9, 0x1

    .line 270
    aget-char v9, p1, v9

    invoke-direct {p0, v9}, Lio/jsonwebtoken/io/Base64;->ctoi(C)I

    move-result v9

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v12, v11, 0x1

    aget-char v11, p1, v11

    invoke-direct {p0, v11}, Lio/jsonwebtoken/io/Base64;->ctoi(C)I

    move-result v11

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v9, v11

    add-int/lit8 v11, v12, 0x1

    aget-char v12, p1, v12

    invoke-direct {p0, v12}, Lio/jsonwebtoken/io/Base64;->ctoi(C)I

    move-result v12

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v9, v12

    add-int/lit8 v12, v11, 0x1

    aget-char v11, p1, v11

    invoke-direct {p0, v11}, Lio/jsonwebtoken/io/Base64;->ctoi(C)I

    move-result v11

    or-int/2addr v9, v11

    add-int/lit8 v11, v3, 0x1

    shr-int/lit8 v13, v9, 0x10

    int-to-byte v13, v13

    .line 273
    aput-byte v13, v7, v3

    add-int/lit8 v3, v11, 0x1

    shr-int/lit8 v13, v9, 0x8

    int-to-byte v13, v13

    .line 274
    aput-byte v13, v7, v11

    add-int/lit8 v11, v3, 0x1

    int-to-byte v9, v9

    .line 275
    aput-byte v9, v7, v3

    if-lez v1, :cond_8

    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x13

    if-ne v10, v3, :cond_8

    add-int/lit8 v12, v12, 0x2

    move v9, v12

    const/4 v10, 0x0

    goto :goto_7

    :cond_8
    move v9, v12

    :goto_7
    move v3, v11

    goto :goto_6

    :cond_9
    if-ge v3, v5, :cond_b

    const/4 v1, 0x0

    :goto_8
    sub-int v8, v2, v4

    if-gt v9, v8, :cond_a

    add-int/lit8 v8, v9, 0x1

    .line 288
    aget-char v9, p1, v9

    invoke-direct {p0, v9}, Lio/jsonwebtoken/io/Base64;->ctoi(C)I

    move-result v9

    mul-int/lit8 v10, v1, 0x6

    rsub-int/lit8 v10, v10, 0x12

    shl-int/2addr v9, v10

    or-int/2addr v0, v9

    add-int/2addr v1, v6

    move v9, v8

    goto :goto_8

    :cond_a
    const/16 p1, 0x10

    :goto_9
    if-ge v3, v5, :cond_b

    add-int/lit8 v1, v3, 0x1

    shr-int v2, v0, p1

    int-to-byte v2, v2

    .line 292
    aput-byte v2, v7, v3

    add-int/lit8 p1, p1, -0x8

    move v3, v1

    goto :goto_9

    :cond_b
    return-object v7
.end method

.method final encodeToString([BZ)Ljava/lang/String;
    .locals 1

    .line 538
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/jsonwebtoken/io/Base64;->encodeToChar([BZ)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
